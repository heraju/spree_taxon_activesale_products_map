Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
      match "/taxon_map" => "taxons#taxon_map"
      post "/taxon_map" => "taxons#taxon_map"
      match "/taxons_active_sale/:id" => "taxons#taxons_active_sale"
      match "/taxons_products/:id"  => "taxons#taxons_products"
     
  end    
end
