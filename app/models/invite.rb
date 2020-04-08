class Invite < ApplicationRecord

	enum sex: {
		"未選択": 0, "オス": 1, "メス": 2
	}

	enum age: {
		"未選択": 0, "子猫": 1, "成猫": 2, "老猫": 3
	}

	enum type: {
		"未選択": 0, "白": 1, "黒": 2, "グレー": 3, "三毛猫": 4, "茶トラ": 5, "キジトラ": 6, "サバトラ": 7, "サビ": 8, "白黒": 9,
		"グレー白": 10, "茶白": 11, "キジ白": 12, "サバ白": 13, "その他": 14
	}

end
