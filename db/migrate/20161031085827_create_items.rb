class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string  :title
      t.date    :day_order
      t.integer :price
      t.string  :course
      t.timestamps
    end
  end
end
