class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates_presence_of :product , :order
  before_create :fill_the_price


  def fill_the_price
    puts "fillin the price====="
    if self.price.blank?
      self.price = self.product.price
      puts "price updated======="
    end

  end

end
