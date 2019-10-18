class CreateSimples < ActiveRecord::Migration[5.2]
  def change
    create_table :simples do |t|
      t.text :title
      t.integer :amount

      t.timestamps null: false 
    end
  end
end
