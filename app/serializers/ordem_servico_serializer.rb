# frozen_string_literal: true

class OrdemServicoSerializer < ActiveModel::Serializer
  attributes :id, status, data_agendamento, data_fechamento, observacao, prioridade, valor_total
end
