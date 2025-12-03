class RenameEquipamentosNumSerie < ActiveRecord::Migration[8.0]
  def change
    rename_column :equipamentos, :num_serie, :numero_serie
  end
end
