function bkpcurrent
    pushd (pwd)
    printf '%-20s%s\n' REPOSITORY BRANCH
    for D in {$GOPATH}/src/github.com/bitkey-platform/*;
        cd $D;
        if test -d .git
            printf '%-20s%s\n' (basename $D) (git rev-parse --abbrev-ref HEAD)
        end
    end
    popd
end
