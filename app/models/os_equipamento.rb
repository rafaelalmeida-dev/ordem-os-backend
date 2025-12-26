# frozen_string_literal: true

class OsEquipamento < ApplicationRecord
  
  validates :marca, :btus, :local_instalacao,  presence: true
  
end
