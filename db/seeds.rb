# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

# 会員のテストデータ
User.create!(
  email: 'test1@cat.com',
  name: '山田太郎',
  handle_name: 'タロー',
  profile: '猫は可愛い。',
  prefecture: 12,
  password: '123456'
)
User.create!(
  email: 'test2@cat.com',
  name: '田中花子',
  handle_name: 'しっぽ',
  profile: '猫の尻尾っていいですよね。',
  prefecture: 23,
  password: '123456'
)
User.create!(
  email: 'test3@cat.com',
  name: '佐藤一郎',
  handle_name: '猫父さん',
  profile: '趣味は猫カフェ巡りです。',
  prefecture: 26,
  password: '123456'
)

# 募集のテストデータ
20.times do |n|
  Invite.create!(
    user_id: 1,
    title: "募集テスト#{n + 1}",
    content: 'シードファイルによる募集テストデータです。',
    sex: 1,
    age: 1,
    type: 1
  )
end
  Invite.create!(
    user_id: 1,
    title: "小凛",
    content: '猫カフェの子です。とても小柄です。',
    sex: 2,
    age: 1,
    type: 14,
    # image_id: File.open("#{Rails.root}/app/assets/images/img6.jpg"),
    video: File.open("#{Rails.root}/public/assets/video/Korin.mp4")
  )
  Invite.create!(
    user_id: 2,
    title: "ひな",
    content: '我が家の猫です。美猫です。',
    sex: 2,
    age: 3,
    type: 6,
    # image_id: File.open("#{Rails.root}/app/assets/images/img1.jpg"),
    video: File.open("#{Rails.root}/public/assets/video/Hina.mp4")
  )
  Invite.create!(
    user_id: 3,
    title: "コロン",
    content: '我が家のアイドルです。大きめです。',
    sex: 1,
    age: 2,
    type: 7,
    # image_id: File.open("#{Rails.root}/app/assets/images/img2.jpg"),
    video: File.open("#{Rails.root}/public/assets/video/Koron.mp4")
  )

# 投稿のテストデータ10件
20.times do |n|
  Post.create!(
    user_id: 1,
    title: "投稿テスト#{n + 1}",
    content: 'シードファイルによる投稿テストデータです。',
    sex: 2,
    age: 2,
    type: 2
  )
end
Post.create!(
    user_id: 1,
    title: "ハンモック",
    content: '猫カフェの子です。もふもふ。',
    sex: 1,
    age: 2,
    type: 11,
    # image_id: File.open("#{Rails.root}/app/assets/images/img7.jpg"),
  )
Post.create!(
    user_id: 2,
    title: "発見！",
    content: '何かに気付いたようです。',
    sex: 2,
    age: 3,
    type: 8,
    # image_id: File.open("#{Rails.root}/app/assets/images/img8.jpg"),
  )
Post.create!(
    user_id: 3,
    title: "にっこり",
    content: 'きっといい夢見てる。',
    sex: 1,
    age: 2,
    type: 9,
    # image_id: File.open("#{Rails.root}/app/assets/images/img10.jpg"),
  )
