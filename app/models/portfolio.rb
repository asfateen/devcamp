class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank?}
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {     where(subtitle: 'Ruby on Rails')  }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(width: 600, height: 400)
    self.thumb_image ||= Placeholder.image_generator(width: 350, height: 200)
  end
end
