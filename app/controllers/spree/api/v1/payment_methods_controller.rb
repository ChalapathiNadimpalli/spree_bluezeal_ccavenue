class Spree::Api::V1::PaymentMethodsController < Spree::Api::BaseController
  def ccavenue
    @payment_methods = Spree::Ccavenue::PaymentMethod.available_on_front_end
  end
end