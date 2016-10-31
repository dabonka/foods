class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.belongs_to :user, index: true
      t.string  :title
      t.string  :desctiption
      t.date :order_date
      t.timestamps
    end
  end
end
