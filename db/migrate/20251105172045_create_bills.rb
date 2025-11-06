class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills do |t|
      t.decimal :amount
      t.integer :bill_type
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
