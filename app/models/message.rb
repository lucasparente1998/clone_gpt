class Message < ApplicationRecord
  scope :por_id_registro, ->(id_registro) { where id_registro: id_registro }
end
