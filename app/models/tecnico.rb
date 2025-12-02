# frozen_string_literal: true

class Tecnico < ApplicationRecord
  
  validates :nome, :telefone, :especialidade, presence: true
  
end
