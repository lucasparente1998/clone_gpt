class Registro < ApplicationRecord
  scope :por_email, ->(email_cliente) { where email_cliente: email_cliente }
end
