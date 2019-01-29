function bkpfresh
    pushd (pwd)
    for D in {$GOPATH}/src/github.com/bitkey-platform/*;
        cd $D;
        if test -d .git
            echo (set_color green)===(basename $D)===(set_color normal) >&2
            gfresh
        end
    end
    popd
end
