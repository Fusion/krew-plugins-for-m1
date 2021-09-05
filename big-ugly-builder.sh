#!/bin/bash

cleanup() {
  mkdir -p bin \
  && rm -f ./bin/*
}

clone_if_needed() {
  DIR="$1"
  SRC="$2"
  [[ -d $DIR ]] || {
    git clone $SRC $DIR
  }
}

store_target() {
  cp "$1" ../bin/
}

cleanup \
&& TARGET=ktunnel && clone_if_needed $TARGET https://github.com/omrikiei/ktunnel.git \
&& cd $TARGET \
&& CGO_ENABLED=0 go build -ldflags="-s -w" \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-terminate && clone_if_needed $TARGET  https://github.com/xcoulon/kubectl-terminate.git \
&& cd $TARGET \
&& make build \
&& store_target bin/$TARGET \
&& cd .. \
&& TARGET=kubectl-who-can && clone_if_needed $TARGET  https://github.com/aquasecurity/kubectl-who-can.git \
&& cd $TARGET \
&& make build \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-sniff && clone_if_needed $TARGET  https://github.com/eldadru/ksniff.git \
&& cd $TARGET \
&& GO111MODULE=on GOOS=darwin GOARCH=arm64 go build -o kubectl-sniff cmd/kubectl-sniff.go \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-trace && clone_if_needed $TARGET  https://github.com/iovisor/kubectl-trace.git \
&& cd $TARGET \
&& make \
&& store_target _output/bin/$TARGET \
&& cd .. \
&& TARGET=kubectl-dfi && clone_if_needed $TARGET  https://github.com/makocchi-git/kubectl-dfi.git \
&& cd $TARGET \
&& make \
&& store_target _output/$TARGET \
&& cd .. \
&& TARGET=kubectl-df-pv && clone_if_needed $TARGET  https://github.com/yashbhutwala/kubectl-df-pv.git \
&& cd $TARGET \
&& make \
&& mv bin/df-pv bin/$TARGET \
&& store_target bin/$TARGET \
&& cd .. \
&& TARGET=kubectl-kubesec && clone_if_needed $TARGET  https://github.com/controlplaneio/kubectl-kubesec.gi \
&& cd $TARGET \
&& go build -o kubectl-scan \
&& store_target kubectl-scan \
&& cd .. \
&& TARGET=kubectl-iexec && clone_if_needed $TARGET  https://github.com/gabeduke/kubectl-iexec.git \
&& cd $TARGET \
&& go build -o kubectl-iexec \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-graph && clone_if_needed $TARGET  https://github.com/steveteuber/kubectl-graph.git \
&& cd $TARGET \
&& go build -o kubectl-graph ./cmd/kubectl-graph/main.go \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-tree && clone_if_needed $TARGET  https://github.com/ahmetb/kubectl-tree.git \
&& cd $TARGET \
&& go build -o kubectl-tree cmd/kubectl-tree/*.go \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-pod-dive && clone_if_needed $TARGET  https://github.com/caiobegotti/Pod-Dive.git \
&& cd $TARGET \
&& go build -o kubectl-pod-dive cmd/plugin/main.go \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-modify-secret && clone_if_needed $TARGET  https://github.com/rajatjindal/kubectl-modify-secret.git \
&& cd $TARGET \
&& go build -o kubectl-modify-secret main.go \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-resources && clone_if_needed $TARGET  https://github.com/howardjohn/kubectl-resources.git \
&& cd $TARGET \
&& make deps \
&& go build -o kubectl-resources main.go \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-ipick && clone_if_needed $TARGET  https://github.com/similarweb/kubectl-ipick.git \
&& cd $TARGET \
&& GOARCH=arm64 make build-osx \
&& mv ${TARGET}_osx $TARGET \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubepug && clone_if_needed $TARGET  https://github.com/rikatz/kubepug.git \
&& cd $TARGET \
&& go build cmd/kubepug.go \
&& store_target $TARGET \
&& cd .. \
&& TARGET=kubectl-cilium && clone_if_needed $TARGET https://github.com/bmcustodio/kubectl-cilium.git \
&& cd $TARGET \
&& make \
&& store_target bin/$TARGET \
&& cd .. \
&& TARGET=kubectl-view-webhook && clone_if_needed $TARGET  https://github.com/Trendyol/kubectl-view-webhook.git \
&& cd $TARGET \
&& go build \
&& store_target $TARGET \
&& cd .. \
&& TARGET=move2kube && clone_if_needed $TARGET  https://github.com/konveyor/move2kube.git \
&& cd $TARGET \
&& make build \
&& store_target bin/$TARGET \
&& cd .. \
&& echo "All done."
