# frozen_string_literal: true

class Status < ApplicationRecord
  
  validates :nome, presence: true
  
end
