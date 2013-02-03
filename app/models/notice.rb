class Notice < ActiveRecord::Base
  mount_uploader :nimage, NimageUploader
  mount_uploader :pimage, PimageUploader
end