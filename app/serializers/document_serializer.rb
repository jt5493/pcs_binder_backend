class DocumentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :document, :binder_id
end
