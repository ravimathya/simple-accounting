class AddDataToSimples < ActiveRecord::Migration[5.2]
  def change
    add_column :simples, :date, :date
  end
end
