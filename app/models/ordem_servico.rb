# frozen_string_literal: true

class OrdemServico < ApplicationRecord
  belongs_to :status
  belongs_to :prioridade
  belongs_to :cliente
  
  has_many :os_tecnicos, dependent: :destroy
  has_many :tecnicos, through: :os_tecnicos
  
  has_many :os_servicos, dependent: :destroy
  has_many :servicos, through: :os_servicos
  
  has_many :os_equipamentos, dependent: :destroy
  has_many :equipamentos, through: :os_equipamentos
  
  has_many :tarefas, dependent: :destroy
  
  validates :status_id, :prioridade_id, :cliente_id, presence: true
end
