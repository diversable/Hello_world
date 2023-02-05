using Documenter
using Hello_world

makedocs(
    sitename = "Hello_world",
    format = Documenter.HTML(),
    modules = [Hello_world]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
