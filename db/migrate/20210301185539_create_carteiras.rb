class CreateCarteiras < ActiveRecord::Migration[6.0]
  def change
    create_table :carteiras do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
