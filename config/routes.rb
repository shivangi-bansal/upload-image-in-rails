Rails.application.routes.draw do
  resources :documents
  resources :companies
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'animals#index'

  delete 'delete_animal_image/:id', to: 'animals#destroy_image', as: 'delete_animal_image'
  delete 'delete_company/:id/image/:upload_id', to: 'companies#destroy_single_image', as: 'delete_single_company_image'
  delete 'delete_company_mages/:id', to: 'companies#destroy_all_images', as: 'delete_all_company_images'

  delete 'delete_document_file/:id', to: 'documents#destroy_file', as: 'delete_document_file'

end
