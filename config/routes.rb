Rails.application.routes.draw do
  resources :document_boxes
  root to: "document_boxes#index"
end
