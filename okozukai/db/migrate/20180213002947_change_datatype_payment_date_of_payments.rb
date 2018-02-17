class ChangeDatatypePaymentDateOfPayments < ActiveRecord::Migration[5.1]
  def change
    change_column :payments, :payment_date, :date
  end
end
