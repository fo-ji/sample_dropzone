class DocumentBox < ApplicationRecord
  mount_uploader :document, DocumentUploader
end
