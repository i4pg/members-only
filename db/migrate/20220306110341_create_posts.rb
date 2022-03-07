# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :body
      t.belongs_to :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
