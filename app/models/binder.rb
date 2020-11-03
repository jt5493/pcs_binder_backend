class Binder < ApplicationRecord
    has_many :documents, dependent: :delete_all
    has_many :notes, dependent: :delete_all
    has_many :links, dependent: :delete_all
end
