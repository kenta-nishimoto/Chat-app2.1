class Room < ApplicationRecord
  has_many :room_users

  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy
  # 「destory::destory」 とすることでroomを削除すると同時にその中のメッセージなども削除される

  validates :name, presence: true
end
