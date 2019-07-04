class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {maximum:20}
    has_many  :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
end
