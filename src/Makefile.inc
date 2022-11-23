#FC=nvfortran
FC=mpif90 -D_MPI
FC += -byteswapio -O3 # -g -Mbounds -traceback
#FC+= -tp=skylake
FC+= -march=core-avx2

