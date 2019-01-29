function grec
    pushd (pwd)
    for D in $PWD/*;
        if test -f $D
            continue
        end
        cd $D
        if test -d .git
            switch $argv[1]
                case current
                    gcurrent
                case fresh
                    gfresh
                case gogen
                    gogen
            end
        end
    end
    popd
end
