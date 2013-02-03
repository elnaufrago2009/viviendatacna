class Directorio < ActiveRecord::Base
	mount_uploader :foto, FotoUploader
end
