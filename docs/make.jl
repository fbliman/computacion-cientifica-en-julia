using Documenter, ComputacionCientificaEnJulia

DocMeta.setdocmeta!(ComputacionCientificaEnJulia, :DocTestSetup,
                   :(using ComputacionCientificaEnJulia); recursive=true)

makedocs(
    format = Documenter.HTML(prettyurls=haskey(ENV, "GITHUB_ACTIONS")),
    sitename = "Computación Científica en Julia",
    doctest = false,
    strict = false,
    pages = [
        "Generalidades" => "index.md",
        "Funciones" => Any["Definición" => "funciones/funciones.md",
                           "Ejemplos" => "funciones/ejemplos.md"]
            ]
)

deploydocs(
    repo = "github.com/mforets/computacion-cientifica-en-julia.git",
    push_preview=false,
)