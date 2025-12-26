# frozen_string_literal: true

class OrdemServicoSerializer < ActiveModel::Serializer
  attributes :id, :status_id, :data_agendamento, :data_fechamento, :observacao, 
             :prioridade_id, :valor_total, :numero_ordem, :descricao, :tipo_servico, 
             :data_vencimento, :custo_estimado, :cliente_id, :created_at, :updated_at
end
