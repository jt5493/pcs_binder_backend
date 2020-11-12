class LinkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :url, :binder_id
end
