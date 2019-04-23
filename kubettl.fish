function kubettl
    # 利用する変数の初期化
    set ctx_dir $HOME/.context
    set cxt_file $ctx_dir/kubectx
    set ctx

    # コンテキストが保持されていても無視する `--ignore` オプションの指定を確認
    set cmd_argv $argv
    if [ $argv[1] = '--ignore' ]
        set cmd_argv $argv[2..-1]
    end

    # コンテキストの決定
    if [ $argv[1] != '--ignore' ]; and test (find $cxt_file -mmin -10 ^ /dev/null | wc -l) -eq 1
        # 利用可能なコンテキストがあれば使う
        set ctx (cat $cxt_file)
    else
        # 無ければ peco を利用して選択する
        set ctx (string split ' ' (kubectl config view -o jsonpath='{.users[*].name}') | peco)
    end

    # コンテキストをファイルへ出力
    test -d $ctx_dir; or mkdir $ctx_dir
    echo $ctx >$cxt_file

    # コンテキストを指定してコマンド実行
    kubectl --context=$ctx $cmd_argv
end
