# frozen_string_literal: true

class Servico < ApplicationRecord
  
  validates :nome, :valor, presence: true
  
end
