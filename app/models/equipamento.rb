# frozen_string_literal: true

class Equipamento < ApplicationRecord
  
  validates :marca, :modelo, :num_serie, :capacidade, :observacao, :cliente, presence: true
  
end
