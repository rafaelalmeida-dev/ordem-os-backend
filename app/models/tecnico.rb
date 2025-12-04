# frozen_string_literal: true

class Tecnico < ApplicationRecord
  
  validates :nome, :telefone, :especialidades, presence: true
  
end
