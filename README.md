# DockerでWordPressの開発環境をサクッと構築する時のファイル一式

## 概要
DockerでWordPressの開発環境を構築する時に最低限必要になる設定ファイル一式をまとめています。
http,httpsでのWordPressアクセス、phpMyAdminとMailCatcherが使えるようになります。

## インストール手順
```
# ファイル一式ダウンロード
git clone https://github.com/naknaknakjp/sample_docker_wordpress.git
cd sample_docker_wordpress
# イメージ作成
docker-compose build
# コンテナ生成＆起動
docker-compose up -d
# ブラウザで以下にアクセスして動作確認
http://localhost
https://localhost
http://localhost:8080
http://localhost:1080
```
