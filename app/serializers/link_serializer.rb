class LinkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :url, :binder_id
  belongs_to :binder
end
