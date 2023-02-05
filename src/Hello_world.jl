module Hello_world
include("Main.jl")

# Write the necessary functionality for your app using the `Main.jl` file / `main()` function; this file is primarily set up for compiling your app with the PackageCompiler.jl infrastructure.
# If you need to handle arguments from the command line for your app, a brief demonstration is given below..

function handle_command_line(ARGS)
    # do something based on ARGS? ARGS will come from the command line when you run your app..

    try
        if isempty(ARGS)
            # use the Main module, and call the main() function
            Main.main()
        else
            # use the Main module, and call the main() function with 1 arg from cmd line
            Main.main(ARGS[1])
        end
    catch
        Base.invokelatest(Base.display_error, Base.catch_stack())
        # return 1 means `return with 1 error' - this is useful for piping the output of one app into another on the command line
        return 1
    end
    # return 0 means 'returned with 0 errors'
    return 0
end

function julia_main()::Cint
    handle_command_line(ARGS)
end

# If this app is run as a script with Julia, handle the execution.
if abspath(PROGRAM_FILE) == @__FILE__
    handle_command_line(ARGS)
end

end # module Hello_world