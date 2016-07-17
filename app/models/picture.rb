class Picture < ApplicationRecord
  belongs_to :user
  has_attached_file :source, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :source, content_type: /\Aimage\/.*\Z/
end
