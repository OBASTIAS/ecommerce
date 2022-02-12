json.extract! payment, :id, :order_id, :payment_method_id, :state, :total, :toke, :created_at, :updated_at
json.url payment_url(payment, format: :json)
