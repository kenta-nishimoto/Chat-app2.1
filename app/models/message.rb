class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image
  # ↪︎メッセージテーブルと画像を紐づけるための記述
  # has_one_attachedメソッド：各レコードとファイルを１対１の関係で結ぶ

  validates :content, presence: true
end
