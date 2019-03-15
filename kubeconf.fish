function kubeconf
    string split ' ' (kubectl config view -o jsonpath='{.users[*].name}') | peco
end
