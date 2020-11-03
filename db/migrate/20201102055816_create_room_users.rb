# ここは中間テーブルのマイグレーションファイル

class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

# references型：外部キーのカラムを追加する際に使う
# 「foreign_key: true」：他のテーブルから情報を参照する時に必要な記述
# 　　　　　　　　今回はroomとuserのテーブルから情報を参照するために記述
