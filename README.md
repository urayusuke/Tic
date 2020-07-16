# Tic
- 簡単な写真投稿が出来る観光写真投稿型のアプリケーションです。
- 機能はそこまで充実していませんが、プログラミングを初めて学習して、約2週間で作成した物です。
- slickを導入【jQueryベースの、スライダーを作成するためのプラグイン】
- herokuでのデプロイのため、写真がリセットさせます。

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
[![Image from Gyazo](https://i.gyazo.com/079a7aed164fef04ac383956e7f6e947.gif)](https://gyazo.com/079a7aed164fef04ac383956e7f6e947)

## 画像のプレビュー
[![Image from Gyazo](https://i.gyazo.com/a3ee2e8a3a9148f36cf76c9533746253.gif)](https://gyazo.com/a3ee2e8a3a9148f36cf76c9533746253)

## 画像投稿後
[![Image from Gyazo](https://i.gyazo.com/16949d273e1116d93cd9fa45a5be49d1.gif)](https://gyazo.com/16949d273e1116d93cd9fa45a5be49d1)
