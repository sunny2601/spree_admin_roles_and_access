namespace :spree_roles do
  namespace :permissions do
    desc "Create admin username and password"
    task :populate => :environment do
      admin = Spree::Role.where(name: 'admin').first_or_create!
      user = Spree::Role.where(name: 'user').first_or_create!
      user.is_default = true
      user.save!

      permission1 = Spree::Permission.where(title: 'can-manage-all', priority: 0).first_or_create!
      permission2 = Spree::Permission.where(title: 'default-permissions', priority: 1).first_or_create!

      user.permissions = [permission2]
      admin.permissions = [permission1]
    end
    
    desc "Create roles for manager,  customer_service and warehouse"
    task :populate_other_roles => :environment do
      manager = Spree::Role.where(name: 'manager').first_or_create!
      customer_service = Spree::Role.where(name: 'customer service').first_or_create!
      warehouse = Spree::Role.where(name: 'warehouse').first_or_create!

      permission2 = Spree::Permission.where(title: 'default-permissions', priority: 1).first_or_create!
      permission3 = Spree::Permission.where(title: 'can-manage-spree/products', priority: 2).first_or_create!
      permission4 = Spree::Permission.where(title: 'can-manage-spree/orders', priority: 2).first_or_create!
      permission5 = Spree::Permission.where(title: 'can-manage-spree/users', priority: 2).first_or_create!
      permission6 = Spree::Permission.where(title: 'can-manage-spree/stock_locations', priority: 2).first_or_create!
      
      permission7 = Spree::Permission.where(title: 'can-read-spree/products', priority: 3).first_or_create!
      permission8 = Spree::Permission.where(title: 'can-index-spree/products', priority: 3).first_or_create!
      permission9 = Spree::Permission.where(title: 'can-update-spree/products', priority: 3).first_or_create!
      permission10 = Spree::Permission.where(title: 'can-create-spree/products', priority: 3).first_or_create!

      permission11 = Spree::Permission.where(title: 'can-read-spree/users', priority: 3).first_or_create!
      permission12 = Spree::Permission.where(title: 'can-index-spree/users', priority: 3).first_or_create!
      permission13 = Spree::Permission.where(title: 'can-update-spree/users', priority: 3).first_or_create!
      permission14 = Spree::Permission.where(title: 'can-create-spree/users', priority: 3).first_or_create!

      permission15 = Spree::Permission.where(title: 'can-read-spree/orders', priority: 3).first_or_create!
      permission16 = Spree::Permission.where(title: 'can-index-spree/orders', priority: 3).first_or_create!
      permission17 = Spree::Permission.where(title: 'can-update-spree/orders', priority: 3).first_or_create!
      permission18 = Spree::Permission.where(title: 'can-create-spree/orders', priority: 3).first_or_create!

      permission19 = Spree::Permission.where(title: 'can-read-spree/stock_locations', priority: 3).first_or_create!
      permission20 = Spree::Permission.where(title: 'can-index-spree/stock_locations', priority: 3).first_or_create!
      permission21 = Spree::Permission.where(title: 'can-update-spree/stock_locations', priority: 3).first_or_create!
      permission22 = Spree::Permission.where(title: 'can-create-spree/stock_locations', priority: 3).first_or_create!

      permission23 = Spree::Permission.where(title: 'can-manage-spree/taxons', priority: 2).first_or_create!
      permission24 = Spree::Permission.where(title: 'can-manage-spree/option_types', priority: 2).first_or_create!
      permission25 = Spree::Permission.where(title: 'can-manage-spree/taxonomies', priority: 2).first_or_create!
      permission26 = Spree::Permission.where(title: 'can-manage-spree/images', priority: 2).first_or_create!
      permission27 = Spree::Permission.where(title: 'can-manage-spree/product_properties', priority: 2).first_or_create!
      permission28 = Spree::Permission.where(title: 'can-manage-spree/stocks', priority: 2).first_or_create!
      permission29 = Spree::Permission.where(title: 'can-manage-spree/variants', priority: 2).first_or_create!
      permission30 = Spree::Permission.where(title: 'can-manage-spree/assets', priority: 2).first_or_create!
      permission31 = Spree::Permission.where(title: 'can-manage-spree/prices', priority: 2).first_or_create!
      permission32 = Spree::Permission.where(title: 'can-manage-spree/properties', priority: 2).first_or_create!
      permission33 = Spree::Permission.where(title: 'can-manage-spree/prototypes', priority: 2).first_or_create!
      
      Spree::Permission.where(title: 'can-index-spree/users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-manage-spree/payments', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/states', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/states', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/countries', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/countries', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-manage-spree/stock_transfers', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-manage-spree/stock_transfers', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-manage-spree/stock_movements', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-manage-spree/stock_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-manage-spree/option_values', priority: 3).first_or_create!
      
      manager.permissions = [ permission2, 
                              permission3, 
                              permission4,
                              permission24,
                              permission25,
                              permission26,
                              permission27,
                              permission28, 
                              permission6
                            ]
      customer_service.permissions =  [ permission2, 
                                        permission15, 
                                        permission16, 
                                        permission17
                                      ]
      warehouse.permissions = [ permission2,
                                permission4,
                                permission6,
                                permission15, 
                                permission16, 
                                permission17,
                                permission28
                              ]
    end

    desc "Create permissions for all resources"
    task :populate_all_permissions => :environment do
      Spree::Permission.where(title: 'can-manage-spree/addresses', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/addresses', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/addresses', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/addresses', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/addresses', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/adjustments', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/adjustments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/adjustments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/adjustments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/adjustments', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/affiliates', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/affiliates', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/affiliates', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/affiliates', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/affiliates', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/affiliates_promotion_rules', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/affiliates_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/affiliates_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/affiliates_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/affiliates_promotion_rules', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/assets', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/assets', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/assets', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/assets', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/assets', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/authentication_methods', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/authentication_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/authentication_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/authentication_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/authentication_methods', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/calculators', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/calculators', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/calculators', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/calculators', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/calculators', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/call_to_actions', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/call_to_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/call_to_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/call_to_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/call_to_actions', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/conekta_payments', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/conekta_payments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/conekta_payments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/conekta_payments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/conekta_payments', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/configurations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/configurations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/configurations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/configurations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/configurations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/consumer_network_nodes', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/consumer_network_nodes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/consumer_network_nodes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/consumer_network_nodes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/consumer_network_nodes', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/countries', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/countries', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/countries', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/countries', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/countries', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/credit_cards', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/credit_cards', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/credit_cards', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/credit_cards', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/credit_cards', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/customer_returns', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/customer_returns', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/customer_returns', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/customer_returns', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/customer_returns', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/gallery_of_call_to_actions', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/gallery_of_call_to_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/gallery_of_call_to_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/gallery_of_call_to_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/gallery_of_call_to_actions', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/gateways', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/gateways', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/gateways', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/gateways', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/gateways', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/inventory_units', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/inventory_units', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/inventory_units', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/inventory_units', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/inventory_units', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/line_items', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/line_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/line_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/line_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/line_items', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/log_entries', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/log_entries', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/log_entries', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/log_entries', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/log_entries', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/option_type_translations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/option_type_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/option_type_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/option_type_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/option_type_translations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/option_types', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/option_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/option_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/option_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/option_types', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/option_types_prototypes', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/option_types_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/option_types_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/option_types_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/option_types_prototypes', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/option_value_translations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/option_value_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/option_value_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/option_value_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/option_value_translations', priority: 3).first_or_create!

#      Spree::Permission.where(title: 'can-manage-spree/option_values', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/option_values', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/option_values', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/option_values', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/option_values', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/option_values_variants', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/option_values_variants', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/option_values_variants', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/option_values_variants', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/option_values_variants', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/orders', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/orders', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/orders', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/orders', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/orders', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/orders_promotions', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/orders_promotions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/orders_promotions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/orders_promotions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/orders_promotions', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/pages', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/pages', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/pages', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/pages', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/pages', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/pages_stores', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/pages_stores', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/pages_stores', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/pages_stores', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/pages_stores', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/payment_capture_events', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/payment_capture_events', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/payment_capture_events', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/payment_capture_events', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/payment_capture_events', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/payment_methods', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/payment_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/payment_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/payment_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/payment_methods', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/payments', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/payments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/payments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/payments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/payments', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/permissions', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/permissions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/permissions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/permissions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/permissions', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/preferences', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/preferences', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/preferences', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/preferences', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/preferences', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/prices', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/prices', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/prices', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/prices', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/prices', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/product_option_types', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/product_option_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/product_option_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/product_option_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/product_option_types', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/product_properties', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/product_properties', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/product_properties', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/product_properties', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/product_properties', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/product_property_translations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/product_property_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/product_property_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/product_property_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/product_property_translations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/product_translations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/product_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/product_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/product_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/product_translations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/products', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/products', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/products', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/products', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/products', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/products_promotion_rules', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/products_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/products_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/products_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/products_promotion_rules', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/products_taxons', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/products_taxons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/products_taxons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/products_taxons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/products_taxons', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/promotion_action_line_items', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/promotion_action_line_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/promotion_action_line_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/promotion_action_line_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/promotion_action_line_items', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/promotion_actions', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/promotion_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/promotion_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/promotion_actions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/promotion_actions', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/promotion_categories', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/promotion_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/promotion_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/promotion_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/promotion_categories', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/promotion_rules', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/promotion_rules', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/promotion_rules_users', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/promotion_rules_users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/promotion_rules_users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/promotion_rules_users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/promotion_rules_users', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/promotion_translations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/promotion_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/promotion_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/promotion_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/promotion_translations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/promotions', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/promotions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/promotions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/promotions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/promotions', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/properties', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/properties', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/properties', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/properties', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/properties', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/properties_prototypes', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/properties_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/properties_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/properties_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/properties_prototypes', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/property_translations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/property_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/property_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/property_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/property_translations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/prototypes', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/prototypes', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/referrals', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/referrals', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/referrals', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/referrals', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/referrals', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/referred_records', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/referred_records', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/referred_records', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/referred_records', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/referred_records', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/refund_reasons', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/refund_reasons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/refund_reasons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/refund_reasons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/refund_reasons', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/refunds', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/refunds', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/refunds', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/refunds', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/refunds', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/reimbursement_credits', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/reimbursement_credits', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/reimbursement_credits', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/reimbursement_credits', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/reimbursement_credits', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/reimbursement_items', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/reimbursement_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/reimbursement_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/reimbursement_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/reimbursement_items', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/reimbursement_types', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/reimbursement_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/reimbursement_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/reimbursement_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/reimbursement_types', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/reimbursements', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/reimbursements', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/reimbursements', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/reimbursements', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/reimbursements', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/relation_types', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/relation_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/relation_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/relation_types', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/relation_types', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/relations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/relations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/relations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/relations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/relations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/return_authorization_reasons', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/return_authorization_reasons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/return_authorization_reasons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/return_authorization_reasons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/return_authorization_reasons', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/return_authorizations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/return_authorizations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/return_authorizations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/return_authorizations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/return_authorizations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/return_items', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/return_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/return_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/return_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/return_items', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/roles', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/roles', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/roles', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/roles', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/roles', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/roles_permissions', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/roles_permissions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/roles_permissions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/roles_permissions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/roles_permissions', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/roles_users', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/roles_users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/roles_users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/roles_users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/roles_users', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/shipments', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/shipments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/shipments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/shipments', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/shipments', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/shipping_categories', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/shipping_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/shipping_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/shipping_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/shipping_categories', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/shipping_method_categories', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/shipping_method_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/shipping_method_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/shipping_method_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/shipping_method_categories', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/shipping_methods', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/shipping_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/shipping_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/shipping_methods', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/shipping_methods', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/shipping_methods_zones', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/shipping_methods_zones', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/shipping_methods_zones', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/shipping_methods_zones', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/shipping_methods_zones', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/shipping_rates', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/shipping_rates', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/shipping_rates', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/shipping_rates', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/shipping_rates', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/skrill_transactions', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/skrill_transactions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/skrill_transactions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/skrill_transactions', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/skrill_transactions', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/state_changes', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/state_changes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/state_changes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/state_changes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/state_changes', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/states', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/states', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/states', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/states', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/states', priority: 3).first_or_create!

#      Spree::Permission.where(title: 'can-manage-spree/stock_items', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/stock_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/stock_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/stock_items', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/stock_items', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/stock_locations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/stock_locations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/stock_locations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/stock_locations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/stock_locations', priority: 3).first_or_create!

#      Spree::Permission.where(title: 'can-manage-spree/stock_movements', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/stock_movements', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/stock_movements', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/stock_movements', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/stock_movements', priority: 3).first_or_create!

#      Spree::Permission.where(title: 'can-manage-spree/stock_transfers', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/stock_transfers', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/stock_transfers', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/stock_transfers', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/stock_transfers', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/store_credits', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/store_credits', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/store_credits', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/store_credits', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/store_credits', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/stores', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/stores', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/stores', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/stores', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/stores', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/tax_categories', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/tax_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/tax_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/tax_categories', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/tax_categories', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/taxon_translations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/taxon_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/taxon_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/taxon_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/taxon_translations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/taxonomies', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/taxonomies', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/taxonomies', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/taxonomies', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/taxonomies', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/taxonomy_translations', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/taxonomy_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/taxonomy_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/taxonomy_translations', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/taxonomy_translations', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/taxons', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/taxons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/taxons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/taxons', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/taxons', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/taxons_promotion_rules', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/taxons_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/taxons_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/taxons_promotion_rules', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/taxons_promotion_rules', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/taxons_prototypes', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/taxons_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/taxons_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/taxons_prototypes', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/taxons_prototypes', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/trackers', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/trackers', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/trackers', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/trackers', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/trackers', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/user_authentications', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/user_authentications', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/user_authentications', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/user_authentications', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/user_authentications', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/users', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/users', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/users', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/variants', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/variants', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/variants', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/variants', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/variants', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/zone_members', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/zone_members', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/zone_members', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/zone_members', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/zone_members', priority: 3).first_or_create!

      Spree::Permission.where(title: 'can-manage-spree/zones', priority: 2).first_or_create!
      Spree::Permission.where(title: 'can-read-spree/zones', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-index-spree/zones', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-update-spree/zones', priority: 3).first_or_create!
      Spree::Permission.where(title: 'can-create-spree/zones', priority: 3).first_or_create!
    end
  end
end