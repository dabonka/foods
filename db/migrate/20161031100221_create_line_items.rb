class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      
      t.belongs_to :order, index:true
      t.belongs_to :item, index:true
      t.timestamps
    end
  end
end
