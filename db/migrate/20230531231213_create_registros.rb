class CreateRegistros < ActiveRecord::Migration[6.1]
  def change
    create_table :registros do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
