# config
The `config` repository contains information and scripts for configuring a (macOS) development environment.

The `Brewfile` in this repository includes most commonly used development tools, such as:
* `awscli`
* `docker`, `docker-compose`
* `minikube` (for kubernetes local)
* `kubectl` (and `krew`, for plugins)
* `postgresql`

...and many others. A list of some of the less familiar tools follows.

## Initial Installs - Homebrew ##
Tool | Description | Install
------------ | ------------ | ------------
[lsd](https://github.com/Peltoche/lsd) |`ls` replacement with colors, iconss, tree-view, etc|`brew install lsd`
[bat](https://github.com/sharkdp/bat)|`cat` replacement with syntax highlighting, paging, etc|`brew install bat`
[ripgrep](https://github.com/BurntSushi/ripgrep#installation)|fast, line-oriented recursive search (`grep` replacement)|`brew install ripgrep`
[httpie](https://httpie.io/)|API testing tool|`brew install httpie`
[jq](https://stedolan.github.io/jq/)|`sed` for JSON data| `brew install jq`
[helm](https://helm.sh/docs/intro/install/)|automation for k8s deployment|`brew install helm`
[k9s](https://k9scli.io/)|terminal based UI for k8s management|`brew install k9s`
[krew](https://krew.sigs.k8s.io/)|package manager for `kubectl`|`brew install krew`
[kubectx + kubens](https://github.com/ahmetb/kubectx)|quickly switch kubernetes clusters / namespaces|`brew install kubectx`
[gh](https://cli.github.com/)|Github CLI| `brew install gh`
[pgcli](https://www.pgcli.com/)|configurable CLI for PostgreSQL|`brew install pgcli`
[postman](https://www.postman.com/)|API platform for building and testing APIs|`brew install postman`

### Node, nvm, Angular ###
Homebrew can be used to install node and nvm:
```
brew install node
brew install nvm
```

Then add the following to `.zshrc` (or `.bashrc`):
```  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads bash_completion
```

Finally, `npm` is used to install Angular:
`npm install -g @angular/cli`

### Java, Scala, SBT ###
The best way to install and managed JDKs and SDKs is using [SDKMAN!](https://sdkman.io/)

Install SDKMAN!:
```
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

Then use SDKMAN! to install the appropriate JDK version (for `zero-quest`, Java 8 is currently the requirment):
`sdk install java 8.0.362-librca`

To install the latest version of SBT:
`sdk install sbt`


