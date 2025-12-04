# frozen_string_literal: true

class Equipamento < ApplicationRecord
  
  validates :marca, :modelo, :local_instalacao, :capacidade, :observacao, :cliente_id, presence: true
  
end
