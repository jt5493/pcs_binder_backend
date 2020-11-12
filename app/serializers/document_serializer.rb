class DocumentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :doc_path, :binder_id
  belongs_to :binder
end
