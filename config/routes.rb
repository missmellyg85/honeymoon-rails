Rails.application.routes.draw do

  get 'hotel_pictures/new'

  get 'hotel_pictures/create'

  get 'hotel_pictures/update'

  get 'hotel_pictures/edit'

  get 'hotel_pictures/destroy'

  get 'hotel_pictures/index'

  get 'hotel_pictures/show'

  get 'hotels/new'

  get 'hotels/create'

  get 'hotels/update'

  get 'hotels/edit'

  get 'hotels/destroy'

  get 'hotels/index'

  get 'hotels/show'

  get 'islands/new'

  get 'islands/create'

  get 'islands/update'

  get 'islands/edit'

  get 'islands/destroy'

  get 'islands/index'

  get 'islands/show'

  get 'destinations/new'

  get 'destinations/create'

  get 'destinations/update'

  get 'destinations/edit'

  get 'destinations/destroy'

  get 'destinations/index'

  get 'destinations/show'

  root 'home#index'
  
  devise_for :admins
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
