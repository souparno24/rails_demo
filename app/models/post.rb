class Post < ApplicationRecord
    belongs_to :account
    has_many :ratings
    has_many :comments,dependent: :destroy
    default_scope {order created_at: :desc}

end
