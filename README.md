# ISUCON10 Recipe

大きなかべさんチームのMItamaeレシピです。

## 使い方

各サーバーのSSH公開鍵を本リポジトリのDeploy Keyに登録して、次のコマンドを実行します。

```sh
git@github.com:furusax0621/isucon10-recipe.git
cd isucon10-recipe
./install.sh
```

レシピが通るか試したいときは `-n` オプションを付けてください。

```sh
./install -n
```

## インストールされるもの

- tmux
- jq
