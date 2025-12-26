# frozen_string_literal: true

module Api
  module V1
    class EquipamentosController < ApplicationController
      before_action :set_equipamento, only: [:show, :update, :destroy]

      def index
        if params[:cliente_id].present?
          @equipamentos = Equipamento.where(cliente_id: params[:cliente_id])
        else
          @equipamentos = Equipamento.all
        end
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
        params.require(:equipamento).permit(:marca, :btus, :local_instalacao, :observacao, :cliente_id)
      end
    end
  end
end
