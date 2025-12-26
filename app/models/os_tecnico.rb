# frozen_string_literal: true

class OsTecnico < ApplicationRecord
  belongs_to :ordem_servico
  belongs_to :tecnico

  validates :ordem_servico, :tecnico, presence: true
  
end
