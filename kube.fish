function kube
    set cxt_file $HOME/.credential_cache/kubecontext
    set ctx (getcrd kubecontext 10)
    if test -z $ctx
        set ctx (kubeconf)
        setcrd kubecontext $ctx
    end
    if [ $argv[1] = now ]
        echo $ctx
    else
        kubectl --context=$ctx $argv
    end
end
