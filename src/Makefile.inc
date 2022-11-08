#FC=gfortran -fconvert=big-endian -g -O0 
# -check bounds -traceback
FC=nvfortran -byteswapio -O3 # -g -Mbounds -traceback
#FC+= -tp=skylake
FC+= -march=core-avx2

