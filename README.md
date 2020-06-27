# Tic
- 簡単な写真投稿が出来る観光写真投稿型のアプリケーションです。
- 機能はそこまで充実していませんが、プログラミングを初めて学習して、約1ヶ月ぐらいで作成した物です。
- slickを導入【jQueryベースの、スライダーを作成するためのプラグイン】

# 接続先情報
- デプロイ先: https://tic20.herokuapp.com/

**テスト用アカウント**
- name : test 
- email : test@test
- password : password

# 開発環境　
- 言語：Ruby/Ruby on Rails/JavaScript
- ツール:Github/Visual Studio Code
- DB:PostgreSQL
- サーバー:heroku

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false | 
|email|string|null: false|
|password|string|null: false|

### Association
- has_many : photos

## photosテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|image|string|null: false|
|text|string||

### Association
- belongs_to :user

## インクリメンタルサーチの実装
[![Image from Gyazo](https://i.gyazo.com/02b0ad0bdde1abf2907406ca734d351b.gif)](https://gyazo.com/02b0ad0bdde1abf2907406ca734d351b)

## 画像のプレビュー
[![Image from Gyazo](https://i.gyazo.com/a398e792e78e4598ad66eb711db2d659.gif)](https://gyazo.com/a398e792e78e4598ad66eb711db2d659)
