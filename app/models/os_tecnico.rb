# frozen_string_literal: true

class OsTecnico < ApplicationRecord
  
  validates :ordem_servico, :tecnico, presence: true
  
end
