module Test
using Test

include("../src/Main.jl")


# write tests here...
@testset "Main functions work" begin
    username = "Alice"

    @testset "Main.main(?username) methods work" begin
        @test Main.main() == println("Hello, app user!")
        @test Main.main(username) == println("Hello, Alice !!!")
    end

end

end # module Test
