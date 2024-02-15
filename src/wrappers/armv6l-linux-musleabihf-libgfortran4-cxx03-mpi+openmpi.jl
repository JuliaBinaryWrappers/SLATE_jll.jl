# Autogenerated wrapper script for SLATE_jll for armv6l-linux-musleabihf-libgfortran4-cxx03-mpi+openmpi
export libslate, libslate_lapack_api

using CompilerSupportLibraries_jll
using OpenBLAS32_jll
using OpenMPI_jll
JLLWrappers.@generate_wrapper_header("SLATE")
JLLWrappers.@declare_library_product(libslate, "libslate.so")
JLLWrappers.@declare_library_product(libslate_lapack_api, "libslate_lapack_api.so")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll, OpenBLAS32_jll, OpenMPI_jll, MPIPreferences)
    JLLWrappers.@init_library_product(
        libslate,
        "lib/libslate.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libslate_lapack_api,
        "lib/libslate_lapack_api.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
