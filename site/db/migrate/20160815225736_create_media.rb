class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|

      t.timestamps null: false
      t.boolean :inline ,:default => false
      t.references :tags, :user, index: true, foreign_key: true
    end
    add_index :media, [:tag_id, :created_at], length: {context: 128}
  end
end