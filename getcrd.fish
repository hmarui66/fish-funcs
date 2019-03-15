function getcrd
    set crd_file $HOME/.credential_cache/$argv[1]
    set mmin $argv[2]
    if test (find $crd_file -mmin -$mmin ^ /dev/null | wc -l) -eq 1
        echo (cat $crd_file)
    end
end
