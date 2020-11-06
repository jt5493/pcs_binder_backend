class BinderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :created_at, :notes, :documents, :links
end
