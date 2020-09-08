# ISUCON10 Recipe

大きなかべさんチームのMItamaeレシピです。

## 使い方

### レシピのアップロード

```sh
./sync.sh <server>
```

### レシピの反映

```sh
sudo su -
mkdir /recipe && cd /recipe
tar xvzf /tmp/recipe.tar.gz
./bootstrap.sh
./install.sh
```

レシピが通るか試したいときは `-n` オプションを付けてください。

```sh
./install -n
```

## インストールされるもの

- unzip
- tmux
- jq
- alp
- newrelic-infra
