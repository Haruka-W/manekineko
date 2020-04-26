# 招き猫
![toppage](https://user-images.githubusercontent.com/60398389/80308407-d18d4100-8809-11ea-87c2-8828653de571.png)
アプリURL: <http://manekineko.life>

![Ruby](https://img.shields.io/badge/Ruby-v2.5.7-red)
![Rails](https://img.shields.io/badge/Rails-v5.2.4.2-red)
![MySQL](https://img.shields.io/badge/MySQL-v5.7.22-blue)

## サイト概要
猫の里親募集と写真の投稿ができるコミュニティサイトです。

## サイトテーマ
猫を保護して里親を探している人と、里親として新しく猫を迎え入れたい人を繋ぐサービスです。  
猫を保護した人は写真と動画をアップして里親募集ができ、コメント機能を使って希望者とやり取りができます。  
また、会員であれば誰でも猫の写真を投稿でき、自慢のうちの子を多くの人に見てもらえます。  
会員登録をしなくても写真の閲覧は可能で、サイトに訪れた人と里親を待つ猫に良いご縁や福を招くことができますように、という思いを込めています。

## 使用技術
- フロントエンド
  - BULMA(bulmaswatch)
  - javascript(JQuery-rails)
- サーバーサイド
  - Ruby 2.5.7
  - Ruby on Rails 5.2.4.2
- データベース
  - MySQL 5.7.22(RDS)
- 本番環境
  - AWS(EC2,Nginx,Puma)

## 実装機能
- 会員機能
  - 新規会員登録
  - ログイン、ログアウト
  - 会員情報の編集
- 投稿機能
  - 画像、動画のアップロード
  - 投稿内容の編集、更新、削除
- いいね機能
- コメント機能
- 通知機能
- 検索機能

### 工夫・苦労した点
- トップページへの動画埋め込み
- いいね、コメント機能の非同期通信化
- フラッシュメッセージの表示
- カリキュラムで使用していないCSSフレームワーク(BULMA)の使用
- 募集詳細ページでの動画の再生

## 対応ブラウザ
- Google Chrome
- Safari
※上記ブラウザでの動作確認済みです。

## 動作確認
```
テストユーザー1： mail "test1@cat.com", password "123456"
テストユーザー2： mail "test2@cat.com", password "123456"
テストユーザー3： mail "test3@cat.com", password "123456"
```
テストユーザーを３人作成しております。  
動作確認時にご利用ください。
