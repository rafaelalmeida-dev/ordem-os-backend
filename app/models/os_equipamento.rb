# frozen_string_literal: true

class OsEquipamento < ApplicationRecord
  
  validates :marca, :modelo, :local_instalacao, :capacidade,  presence: true
  
end
