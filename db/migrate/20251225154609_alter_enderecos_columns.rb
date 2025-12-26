
class AlterEnderecosColumns < ActiveRecord::Migration[8.0]
  def change
    remove_column :enderecos, :logradouro, :string if column_exists?(:enderecos, :logradouro)
    remove_column :enderecos, :cep, :string if column_exists?(:enderecos, :cep)
    remove_column :enderecos, :estado, :string if column_exists?(:enderecos, :estado)

    add_column :enderecos, :rua, :string
    add_column :enderecos, :numero, :string
    add_column :enderecos, :bairro, :string
    add_column :enderecos, :complemento, :string
  end
end
