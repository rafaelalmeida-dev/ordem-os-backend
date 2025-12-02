# frozen_string_literal: true

module Api
  module V1
    class ClientesController < ApplicationController
      before_action :set_cliente, only: [:show, :update, :destroy]

      def index
        @clientes = Cliente.all
        render json: @clientes
      end

      def show
        render json: @cliente
      end

      def create
        @cliente = Cliente.new(cliente_params)
        if @cliente.save
          render json: @cliente, status: :created
        else
          render json: @cliente.errors, status: :unprocessable_entity
        end
      end

      def update
        if @cliente.update(cliente_params)
          render json: @cliente
        else
          render json: @cliente.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @cliente.destroy
        head :no_content
      end

      private

      def set_cliente
        @cliente = Cliente.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Not found" }, status: :not_found
      end

      def cliente_params
        params.require(:cliente).permit()
      end
    end
  end
end
