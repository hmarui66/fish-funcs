function bkpgogen
    pushd (pwd)
    for D in {$GOPATH}/go/src/github.com/bitkey-platform/*;
        cd $D;
        if test -d .git
            go generate ./...
        end
    end
    popd
end
