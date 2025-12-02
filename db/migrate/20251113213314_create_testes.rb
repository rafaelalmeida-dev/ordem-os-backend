class CreateTestes < ActiveRecord::Migration[8.0]
  def change
    create_table :testes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
