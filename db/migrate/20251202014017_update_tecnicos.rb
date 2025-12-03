class UpdateTecnicos < ActiveRecord::Migration[8.0]
  def change
    add_column :tecnicos, :email, :string
    add_column :tecnicos, :status_disponibilidade, :string, default: 'disponivel'
    # transforma especialidade em array (Postgres)
    change_column :tecnicos, :especialidade, :string, array: true, using: "ARRAY[especialidade]"
    rename_column :tecnicos, :especialidade, :especialidades
  end
end
