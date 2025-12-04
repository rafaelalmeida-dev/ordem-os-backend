# frozen_string_literal: true

module Api
  module V1
    class EquipamentosController < ApplicationController
      before_action :set_equipamento, only: [:show, :update, :destroy]

      def index
        @equipamentos = Equipamento.all
        render json: @equipamentos
      end

      def show
        render json: @equipamento
      end

      def create
        @equipamento = Equipamento.new(equipamento_params)
        if @equipamento.save
          render json: @equipamento, status: :created
        else
          render json: @equipamento.errors, status: :unprocessable_entity
        end
      end

      def update
        if @equipamento.update(equipamento_params)
          render json: @equipamento
        else
          render json: @equipamento.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @equipamento.destroy
        head :no_content
      end

      private

      def set_equipamento
        @equipamento = Equipamento.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Not found" }, status: :not_found
      end

      def equipamento_params
        params.require(:equipamento).permit(:marca, :modelo, :local_instalacao, :capacidade, :observacao, :cliente_id)
      end
    end
  end
end
