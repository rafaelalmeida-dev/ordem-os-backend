# frozen_string_literal: true

class OsEquipamento < ApplicationRecord
  
  validates :equipamento, :ordem_servico, :laudo, presence: true
  
end
