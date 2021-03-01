class CreateGastos < ActiveRecord::Migration[6.0]
  def change
    create_table :gastos do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :value
      t.string :type
      t.string :title
      t.string :code
      t.boolean :pending

      t.timestamps
    end
  end
end
