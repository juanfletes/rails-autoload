class Farmacia::MedicamentosController < ApplicationController
  def index
    # binding.pry
    Almacenes::UnidadMedidad.new
    # Farmacia::Medicamento.new
    render json: { hola: :como }
  end
end