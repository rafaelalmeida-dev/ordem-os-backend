# frozen_string_literal: true

class ProdutoSerializer < ActiveModel::Serializer
  attributes :id, nome, descricao
end
