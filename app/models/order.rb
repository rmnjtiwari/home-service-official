class Order < ApplicationRecord
  belongs_to :user,optional: true
  belongs_to :professional,optional: true
end
