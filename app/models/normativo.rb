class Normativo < ActiveRecord::Base
  mount_uploader :archivo, ArchivoUploader
end
