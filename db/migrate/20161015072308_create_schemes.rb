class CreateSchemes < ActiveRecord::Migration[5.0]
  def change
    create_table :schemes do |t|
      t.string :name
      t.text :description
      t.decimal :payout_limit, precision: 10, scale: 2
      t.decimal :excess, precision: 10, scale: 2
      t.decimal :premium, precision: 10, scale: 2

      t.timestamps
    end
  end
end
