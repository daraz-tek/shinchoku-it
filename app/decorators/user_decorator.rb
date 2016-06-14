class UserDecorator < ApplicationDecorator
  def avatar_tag avatar_size: :middle, **options
    reader_method = { small: :image_24, middle: :image_48, large: :image }[avatar_size] || :image_48
    h.image_tag public_send(reader_method), options
  end
end
