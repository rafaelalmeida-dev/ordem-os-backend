# frozen_string_literal: true

class ClienteSerializer < ActiveModel::Serializer
  attributes :id, :nome, :email, :data_registro, :created_at, :updated_at
end
