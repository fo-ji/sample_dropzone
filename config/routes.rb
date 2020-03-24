Rails.application.routes.draw do
  resources :document_boxes
  resources :minutes_boxes, only: :create
  root to: "document_boxes#index"
end
