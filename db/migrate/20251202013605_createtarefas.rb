class Createtarefas < ActiveRecord::Migration[8.0]
  def change
    create_table :tarefas do |t|
      t.references :ordem_servico, null: false, foreign_key: true
      t.string :descricao
      t.string :status, default: 'nao_iniciada'
      t.references :tecnico, foreign_key: true
      t.datetime :data_inicio
      t.datetime :data_fim
      t.timestamps
    end
  end
end
