class CreateHistoricos < ActiveRecord::Migration[6.0]
  def change
    create_table :historicos do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
