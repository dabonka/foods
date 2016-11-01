class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string  :title
      t.string  :desctiption
      t.date    :item_date
      t.integer :price
      t.integer :type_of_course
      t.timestamps
    end
  end
end
