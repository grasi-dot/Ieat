class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(customer_id)
    user = User.find(customer_id)
    puts 'HELLO from sidekiq!'
    puts "Pedido criado por #{user.email}"
  end
end
