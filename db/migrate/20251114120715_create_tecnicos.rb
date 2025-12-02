# frozen_string_literal: true

class CreateTecnicos < ActiveRecord::Migration[6.0]
  def change
    create_table :tecnicos do |t|
      
        t.string :nome
      
        t.string :telefone
      
        t.string :especialidade
      

      t.timestamps
    end
  end
end
