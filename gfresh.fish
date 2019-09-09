function gfresh
    if test -d .git
        echo (set_color green)===(basename $PWD)===(set_color normal) >&2

        set stashed false
        set current (git rev-parse --abbrev-ref HEAD)

        if git diff --quiet
        else
            echo "stash diff files..."
            git stash
            set stashed true
        end

        set dev_branch develop
        git rev-parse $dev_branch >/dev/null 2>&1; or set dev_branch master
        git co $dev_branch
        git pull; and gprune; and gdel
        git co $current

        if [ "$stashed" = true ]
            git stash pop
        end
    end
end
