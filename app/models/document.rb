class Document < ActiveRecord::Base
  has_attached_file :attachments
end
