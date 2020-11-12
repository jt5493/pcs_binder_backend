class BinderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :created_at, :notes, :documents, :links
  has_many :documents
  has_many :notes
  has_many :links
end
