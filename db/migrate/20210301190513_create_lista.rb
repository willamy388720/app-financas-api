class CreateLista < ActiveRecord::Migration[6.0]
  def change
    create_table :lista do |t|
      t.references :user, null: false, foreign_key: true
      t.string :type
      t.string :description
      t.decimal :value

      t.timestamps
    end
  end
end
