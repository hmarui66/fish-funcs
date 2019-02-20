function grec
    pushd (pwd)
    for D in $PWD/*;
        if test -f $D
            continue
        end
        cd $D
        set cmd $argv
        switch $cmd[1]
            case current
                set cmd gcurrent
            case fresh
                set cmd gfresh
        end
        eval $cmd
    end
    popd
end
