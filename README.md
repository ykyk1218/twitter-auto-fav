# TwitterAutoFav

自分のタイムラインをHubotで監視して、指定したキーワードがあった場合にお気に入りに登録する

# How to Use

## 必要なモジュールのインストール

```
npm install
```

## 実行方法

### ローカルの場合

下記内容のシェルスクリプトを用意

```
export HUBOT_TWITTER_KEY="consumer key"
export HUBOT_TWITTER_SECRET="consumer secret"
export HUBOT_TWITTER_TOKEN="token"
export HUBOT_TWITTER_TOKEN_SECRET="token secret"

bin/hubot -a twitter-ext -n TwitterMonitor

```

これを適当な名前(local_run.sh)で保存して実行

```
./local_run.sh
```

### herokuで実行する場合

環境変数を設定する

```
$ heroku config:set HUBOT_TWITTER_KEY="value"
$ heroku config:set HUBOT_TWITTER_SECRET="value"
$ heroku config:set HUBOT_TWITTER_TOKEN="value"
$ heroku config:set HUBOT_TWITTER_TOKEN_SECRET="value"

```

herokuにpush

```
git push heroku master
```



# 監視キーワードの変更

```
vi scripts/twitter-auto-fav.coffee
```

下記ソースのhogehogehogeを好きなキーワードに変更

```
robot.hear /hogehogehoge/, (res)  ->
```
