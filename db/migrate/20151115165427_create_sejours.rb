class CreateSejours < ActiveRecord::Migration
  def change
    create_table :sejours do |t|
      t.string :lieu
      t.text :description
      t.integer :note
      t.boolean :recommandation

      t.timestamps null: false
    end
  end
end
