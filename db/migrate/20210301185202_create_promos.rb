class CreatePromos < ActiveRecord::Migration[6.0]
  def change
    create_table :promos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
