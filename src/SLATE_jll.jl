# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SLATE_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("SLATE")
JLLWrappers.@generate_main_file("SLATE", UUID("cb01ff19-587c-516c-bcf9-532d49da298d"))
end  # module SLATE_jll
