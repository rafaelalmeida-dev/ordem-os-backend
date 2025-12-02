# frozen_string_literal: true

class OsServico < ApplicationRecord
  
  validates :servico, :ordem_servico, :quantidade, presence: true
  
end
