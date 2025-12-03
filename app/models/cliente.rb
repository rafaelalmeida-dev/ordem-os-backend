# frozen_string_literal: true

class Cliente < ApplicationRecord
  validates :nome, presence: true
  has_many :enderecos, dependent: :destroy
  has_many :telefones, dependent: :destroy

  accepts_nested_attributes_for :enderecos, allow_destroy: true
  accepts_nested_attributes_for :telefones, allow_destroy: true

  validate :deve_ter_ao_menos_um_endereco, on: :create
  validate :deve_ter_ao_menos_um_telefone, on: :create

  private

  def deve_ter_ao_menos_um_endereco
    if enderecos.reject(&:marked_for_destruction?).blank?
      errors.add(:enderecos, 'deve conter ao menos um endereço')
    end
  end

  def deve_ter_ao_menos_um_telefone
    if telephones_collection_blank?
      errors.add(:telefones, 'deve conter ao menos um telefone')
    end
  end

  def telephones_collection_blank?
    assoc = respond_to?(:telefones) ? telefones : []
    assoc.reject(&:marked_for_destruction?).blank?
  end
end
