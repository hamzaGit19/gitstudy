class Product < ApplicationRecord
    include Commentable

    has_a :serial
end
