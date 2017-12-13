object nil

node :payment_methods do
  @payment_methods.map do |pm|
    {
      :id => pm.id,
      :name => pm.name,
      :position => pm.position
    }
  end
end