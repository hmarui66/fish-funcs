function gdef
    set dev_branch develop
    git rev-parse $dev_branch >/dev/null 2>&1; or set dev_branch master
    git co $dev_branch
end
