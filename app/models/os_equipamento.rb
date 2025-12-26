# frozen_string_literal: true

class OsEquipamento < ApplicationRecord
  belongs_to :ordem_servico
  belongs_to :equipamento

  validates :equipamento, :ordem_servico, presence: true
  
end
