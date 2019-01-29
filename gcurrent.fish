function gcurrent
    if test -d .git
        set changed (git status -s | wc -l | awk '{ print $1} ')
        set prefix ''
        if test $changed -gt 0
            set prefix '*'
        end
        printf '%-20s%s\n' (basename $PWD) $prefix(git rev-parse --abbrev-ref HEAD)
    end
end
