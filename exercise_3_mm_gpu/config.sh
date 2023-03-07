export PATH=/work/shared/common/llvm-project-15.0.0/build/bin/:$PATH
export CPATH=/work/shared/common/llvm-project-15.0.0/mlir/include:$CPATH
export CPATH=/work/shared/common/llvm-project-15.0.0/mlir/lib:$CPATH
export CPATH=/work/shared/common/llvm-project-15.0.0/openmp/build/runtime/src:$CPATH
export LD_LIBRARY_PATH=/work/shared/common/llvm-project-15.0.0/build/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/work/shared/common/llvm-project-15.0.0/openmp/build/runtime/src:$LD_LIBRARY_PATH

# please source this bash file on servers other than zhang-21
# add new libc++ to the dynamic library path
# export LD_LIBRARY_PATH=/home/jl3952/Packages/anaconda3/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib64/:$LD_LIBRARY_PATH