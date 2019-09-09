function grec
    if [ (count $argv) -eq 0 ]
        echo "command required"
        return
    end
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
            case git
                test -d .git; or continue
        end
        eval $cmd
    end
    popd
end
