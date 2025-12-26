# frozen_string_literal: true

class OsServico < ApplicationRecord
  belongs_to :ordem_servico
  belongs_to :servico

  validates :servico, :ordem_servico, presence: true
  
end
