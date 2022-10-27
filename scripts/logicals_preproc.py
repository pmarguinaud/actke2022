# Script that discards branches in the code through forced value of logical variables

# from loki import FP, Sourcefile, Dimension, Subroutine
from loki import Frontend, Sourcefile, Scheduler, FindNodes, Loop, Variable, Assignment, CallStatement, Transformation, Node, SymbolAttributes, DerivedType, BasicType, Import, Transformer, Conditional
from loki.expression import LoopRange, FindVariables, FindTypedSymbols
from loki.expression.expression import SubstituteExpressions
from loki.expression.symbols import (
    Array, Scalar, InlineCall, TypedSymbol, FloatLiteral, IntLiteral, LogicLiteral,
    StringLiteral, IntrinsicLiteral, DeferredTypeSymbol, LogicalOr, LogicalAnd, LogicalNot
)
from loki.ir import Section, Comment, VariableDeclaration
from pathlib import Path
from termcolor import colored
import sys
# Bootstrap the local transformations directory for custom transformations
sys.path.insert(0, str(Path(__file__).parent))
print("path  = ", str(Path(__file__).parent))
print("sys.path  = ", sys.path)
print ("dir =", dir)



# returns [evaluable, evaluation] 
def evaluateCondition(my_condition, true_symbols, false_symbols):

  if isinstance(my_condition, DeferredTypeSymbol) or isinstance(my_condition, Scalar):
    # Simple terminal symboles : either True, False or not defined
    if (my_condition.name in true_symbols):
      return[True, True]
    elif (my_condition.name in false_symbols):
      return[True, False]
    else :
      return[False, False]

  elif isinstance(my_condition, LogicalNot):
    [evaluable, evaluation] = evaluateCondition(my_condition.child, true_symbols, false_symbols)
    return [evaluable, not evaluation]

  elif isinstance(my_condition, LogicalOr):
    # Evaluates to True if a child evaluates to True
    # Evaluates to False if both children evaluate to False
    # Cannot be evaluated otherwise
    maybe_false = True
    for c in my_condition.children :
      evaluable, evaluation = evaluateCondition(c, true_symbols, false_symbols)
      if (evaluable and evaluation ) :
        return[True, True]
      elif (not evaluable) :
        maybe_false = False

    # If all children evaluated and we did not return, they were false => evaluate OR as false
    if (maybe_false) :
      return [True, False]
    else :
      return [False, False]

  elif isinstance(my_condition, LogicalAnd):
    # Evaluates to True if both children evaluate to True
    # Evaluates to False if a child evaluates to False
    # Cannot be evaluated otherwise
    maybe_true = True
    for c in my_condition.children :
      evaluable, evaluation = evaluateCondition(c, true_symbols, false_symbols)
      if (evaluable and not evaluation) : 
        return [True, False]
      elif (not evaluable) :
        maybe_true = False

    # If all children evaluated and we did not return, they were true => evaluate AND as true
    if (maybe_true) :
      return [True, True]
    else :
      return [False, False]

  else :
    print("untreated class :", my_condition.__class__)
    return[False, False]




files = ["../src/actke.F90", "../src/acturb.F90"]

output_suffix = ".preproc"

false_symbols = ['LMUSCLFA', 'LFLEXDIA']
true_symbols = []

for file in files:
  source = Sourcefile.from_file(file, frontend=Frontend.FP )


  for routine in (source._routines) :
    print ("Treating routine ", routine.name)
    callmap={}
    for cond in FindNodes(Conditional).visit(routine.body):

      # If at least one of the forced-value symbols is present in the condition, we can try to evaluate it
      evaluable = False
      for symbol in FindTypedSymbols().visit(cond.condition) :
        if (symbol in true_symbols or symbol in false_symbols):
          evaluable = True

      if evaluable :
        [evaluable, evaluation] = evaluateCondition(cond.condition, true_symbols, false_symbols)
        print ("condition : ", cond.condition)
        print("evaluated : ", evaluable, "  ---  value : ", evaluation)
        if evaluable :
          if evaluation :
            callmap[cond] = cond.body
          else:
            callmap[cond] = cond.else_body
    routine.body=Transformer(callmap).visit(routine.body)

  outfile = open(file+output_suffix, 'w')
  outfile.write(source.to_fortran())
  outfile.write('\n') 
  outfile.close()
