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
	email: "test@com",
	name: "山田太郎",
	handle_name: "テスト太郎",
	profile: "テスト用会員です。",
	prefecture: 13,
	password: "123456"
)

# 募集のテストデータ10件
10.times do |n|
	Invite.create!(
		user_id: 1,
		title: "募集テスト タイトル#{n + 1}",
		content: "募集内容テスト",
		sex: 1,
		age: 2,
		type: 5,
	)
end

# 投稿のテストデータ10件
10.times do |n|
	Post.create!(
		user_id: 1,
		title: "投稿テスト タイトル#{n + 1}",
		content: "投稿内容テスト",
		sex: 2,
		age: 1,
		type: 4,
	)
end
