# frozen_string_literal: true

class Cliente < ApplicationRecord
  
  validates :nome, presence: true
  
end
