# frozen_string_literal: true

class Endereco < ApplicationRecord
  
  validates :logradouro, :cep, :cidade, :estado, :cliente, presence: true
  belongs_to :cliente
  
end
