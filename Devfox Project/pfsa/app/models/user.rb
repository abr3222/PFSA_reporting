class User < ActiveRecord::Base
  has_many :vault_logs
end
