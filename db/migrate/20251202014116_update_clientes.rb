class UpdateClientes < ActiveRecord::Migration[8.0]
  def change
    add_column :clientes, :email, :string
    add_column :clientes, :data_registro, :datetime
  end
end
