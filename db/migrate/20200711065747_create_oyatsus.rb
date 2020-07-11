class CreateOyatsus < ActiveRecord::Migration[6.0]
  def change
    create_table :oyatsus do |t|
      t.string :name
      t.integer :category_id
      t.string :image
      t.text :detail
      t.string :maker
      t.date :watch_at
      t.string :site_url

      t.timestamps
    end
  end
end
