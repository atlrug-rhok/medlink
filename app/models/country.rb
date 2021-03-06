class Country < ActiveRecord::Base
  has_many :users
  has_many :orders
  has_many :responses

  def self.with_orders
    ids = Order.unscoped.uniq.pluck :country_id
    find ids
  end

  def self.choices
    all.map { |c| [c.name, c.id] }
  end
end
