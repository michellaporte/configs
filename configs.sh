parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

#kubernetes
alias k='kubectl'

# Pod management.
alias kgp='k get pods'
alias kgpa='k get pods --all-namespaces'
alias kgpaa='k get pods --all-namespaces -a'
alias kgpaaw='k get pods --all-namespaces -a -o wide'
alias kgpw='k get pods -o wide'
alias klp='k logs '
alias klpf='k logs -f'
alias kep='k edit pods'
alias kdp='k describe pod'
alias kdelp='k delete pod'

#NAMESPACE
switchns() {
  if [ "$1" == "" ]; then
    kubectl config set-context $(kubectl config current-context) --namespace=default
  else
    kubectl config set-context $(kubectl config current-context) --namespace=$1
  fi
}

# Ingress management.
alias kgi='k get ingress'
alias kgia='k get ingress --all-namespaces'
alias kei='k edit ingress'
alias kdi='k describe ingress'
alias kdeli='k delete ingress'

# Service management.
alias kgs='k get svc'
alias kgsa='k get svc --all-namespaces'
alias kes='k edit svc'
alias kds='k describe svc'
alias kdels='k delete svc'

# Secret management
alias kgsec='k get secret'
alias kgseca='k get secret --all-namepsaces'
alias kesec='k edit secret'
alias kdsec='k describe secret'
alias kdelsec='k delete secret'

# Node management
alias kgn='k get nodes'
alias kdn='k describe nodes'
alias kgnl='k get nodes --show-labels'

# Deployment management.
alias kgd='k get deployment'
alias kgds='k get ds'
alias ked='k edit deployment'
alias kdd='k describe deployment'
alias kdeld='k delete deployment'
alias ksd='k scale deployment'
alias krsd='k rollout status deployment'

# Rollout management.
alias kgrs='k get rs'
alias krh='k rollout history'
alias kru='k rollout undo'

# ConfigMaps management
alias kgcm='k get configmap'
alias kgcma='k get configmap --all-namespaces'
alias kdcm='k describe configmap'
alias kdelcm='k delete configmap'
alias kecm='k edit configmap'

# PV management
alias kgpv='k get pv'
alias kdpv='k describe pv'
alias kdelpv='k delete pv'
alias kepv='k edit pv'

# PVC management
alias kgpvc='k get pvc'
alias kdpvc='k describe pvc'
alias kdelpvc='k delete pvc'
alias kepvc='k edit pvc'
alias kgpvca='k get pvc --all-namespaces'

#Pod initiation
alias kalp='kubectl run -it --rm alpine --image=alpine --restart=Never'

