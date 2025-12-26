# frozen_string_literal: true

class Endereco < ApplicationRecord
  
  validates :rua, :numero, :bairro, :cidade, :cliente, presence: true
  belongs_to :cliente
  
end
