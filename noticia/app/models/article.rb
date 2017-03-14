class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :titulo, presence: true
  validates :bajada, presence: true,
                    length: { maximum: 250 }
  validates :cuerpo, presence: true
end
