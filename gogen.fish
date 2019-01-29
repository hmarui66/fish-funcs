function gogen
    if test -d .git
        go generate ./...
    end
end
