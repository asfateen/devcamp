module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(width:, height:)
    "https://dummyimage.com/#{width}x#{height}"
  end
end