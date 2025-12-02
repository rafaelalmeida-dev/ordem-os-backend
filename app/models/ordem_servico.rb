# frozen_string_literal: true

class OrdemServico < ApplicationRecord
  
  validates :status, :data_agendamento, :data_fechamento, :observacao, :prioridade, :valor_total, presence: true
  
end
