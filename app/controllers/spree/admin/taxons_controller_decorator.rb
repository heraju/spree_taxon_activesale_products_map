module Spree
  module Admin
    TaxonsController.class_eval do

      def taxon_map
        if params[:permalink]
        @taxons = Spree::Taxon.where(:permalink => params[:permalink])
        render :partial => "spree/admin/taxons/update_taxon", :layout => false
        end
      end

      def taxons_active_sale
        @taxon = Spree::Taxon.find(params[:id].to_i)
        @active_sale_events = @taxon.active_sale_events
        render :partial => "spree/admin/taxons/update_active_sale", :layout => false
      end
      
      def taxons_products
        @taxon = Spree::Taxon.find(params[:id].to_i)
        @products = @taxon.products  
        render :partial => "spree/admin/taxons/update_products", :layout => false
      end  

     end 
  end
end