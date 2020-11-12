class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :binder_id
  belongs_to :binder
end
