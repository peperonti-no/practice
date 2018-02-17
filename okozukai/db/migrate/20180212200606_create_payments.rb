class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.time :payment_date
      t.references :category, foreign_key: true
      t.integer :amount_of_money
      t.string :memo

      t.timestamps
    end
  end
end
