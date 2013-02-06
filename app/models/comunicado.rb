class Comunicado < ActiveRecord::Base
	mount_uploader :carchivo, CarchivoUploader
end
