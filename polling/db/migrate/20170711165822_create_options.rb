class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :title
      t.integer :count
      t.references :poll, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
