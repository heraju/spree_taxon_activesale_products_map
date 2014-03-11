
Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "taxon_map",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab :taxon_map,  :url => '/admin/taxon_map', :icon => 'icon-th-list' %>",
                     :disabled => false)