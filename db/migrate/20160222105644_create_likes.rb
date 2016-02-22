class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :liker, polymorphic: true, index: true

      t.references :likable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
