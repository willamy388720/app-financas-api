class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :promo, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
