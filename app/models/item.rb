class Item < ApplicationRecord
  has_and_belongs_to_many    :orders

  has_attached_file :avatar, styles: { medium: "100x100>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :title, :price, :course, presence: true

  def to_label
    "#{self.title} - #{self.price} руб."
  end

end
