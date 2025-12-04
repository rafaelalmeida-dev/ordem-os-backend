# frozen_string_literal: true

class EquipamentoSerializer < ActiveModel::Serializer
  attributes :id, :marca, :modelo, :local_instalacao, :capacidade, :observacao, :cliente_id
end
