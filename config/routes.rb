Rails.application.routes.draw do
    get 'contact/index' => 'contact#index', as: :contact

    get 'destinations/all' => 'destinations#all', as: :destinations_all
    get 'destinations/:id/admin' => 'destinations#show_admin', as: :destination_admin

    get 'islands/all' => 'islands#all', as: :islands_all
    get 'islands/:id/admin' => 'islands#show_admin', as: :island_admin

    get 'hotels/all' => 'hotels#all', as: :hotels_all
    get 'hotels/:id/admin' => 'hotels#show_admin', as: :hotel_admin

    get 'promos/all' => 'promos#all', as: :promos_all
    get 'promos/:id/admin' => 'promos#show_admin', as: :promo_admin

    resources :destinations
    resources :islands
    resources :hotels
    resources :referral_links
    resources :promos
    resources :contact

    root 'home#index'

    if Rails.env.production?
        devise_for :admins, :controllers => { :registrations => "registrations" }
    else
        devise_for :admins
    end

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
