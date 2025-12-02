# frozen_string_literal: true

class Produto < ApplicationRecord
  
  validates :nome, :descricao, presence: true
  
end
