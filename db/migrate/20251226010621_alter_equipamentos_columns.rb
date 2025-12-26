class AlterEquipamentosColumns < ActiveRecord::Migration[8.0]
  def change
    # Remove colunas antigas se existirem
    remove_column :equipamentos, :modelo, :string if column_exists?(:equipamentos, :modelo)
    remove_column :equipamentos, :capacidade, :integer if column_exists?(:equipamentos, :capacidade)
    remove_column :equipamentos, :num_serie, :string if column_exists?(:equipamentos, :num_serie)

    # Adiciona as novas colunas
    add_column :equipamentos, :btus, :string unless column_exists?(:equipamentos, :btus)
  end
end
