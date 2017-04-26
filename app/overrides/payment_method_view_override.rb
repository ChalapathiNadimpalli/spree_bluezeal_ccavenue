# We want to remove environments select list from payment methods view in admin panel
Deface::Override.new(:virtual_path => 'spree/admin/payment_methods/_form',
                     :name => 'Environment section removal',
                     :remove => "[data-hook='environment']"
                     )
