class Api::V1::Farmacia::MedicamentosController < ApplicationController

  def index

    # binding.pry

    Almacenes::UnidadMedidad.new
    # Module.const_missing('Farmacia::Medicamento')
    # Module.const_missing('Farmacia')
    # Farmacia::Medicamento.new
    render json: { hola: :como }
  end
end
