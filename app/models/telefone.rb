# frozen_string_literal: true

class Telefone < ApplicationRecord
  
  validates :numero, presence: true
  
end
