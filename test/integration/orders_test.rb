require 'test_helper'

class OrdersTest < MiniTest::Test
  include Rack::Test::Methods
  include TestHelpers

  def app
    Rails.application
  end

  test "can be paid" do
    table = spawn_table!
    order = spawn_order! table_id: table.id

    post "/tables/#{table.id}/orders/#{order.id}/pay",
      amount: order.total_amount,
      payment_method: "cash"

    puts last_response
    assert_includes response_hash(last_response).keys, "receipt"
  end

end