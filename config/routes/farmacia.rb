namespace :api do
  namespace :v1 do
    namespace :almacenes do
      resources :unidades_medida, only: [:index, :show]
    end
    namespace :farmacia do
      resources :medicamentos, only: [:index, :show]
    end
  end
end
namespace :farmacia do
  resources :medicamentos, only: [:index, :show]
end
