class Album < ActiveRecord::Base
	# 
	# has_attached_file :image, 
	# 					:path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
	# 					:url => "/system/:attachment/:id/:basename_:style.:extension",
	# 					:styles => {
	# 					  :thumb    => ['100x100#',  :jpg, :quality => 70],
	# 					  :preview  => ['480x480#',  :jpg, :quality => 70],
	# 					  :large    => ['600>',      :jpg, :quality => 70],
	# 					  :retina   => ['1200>',     :jpg, :quality => 30]
	# 					},
	# 					:convert_options => {
	# 					  :thumb    => '-set colorspace sRGB -strip',
	# 					  :preview  => '-set colorspace sRGB -strip',
	# 					  :large    => '-set colorspace sRGB -strip',
	# 					  :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
	# 					}

	# validates_attachment :image,
	# 						    :size => { :in => 0..10.megabytes },
	# 						    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }
	# has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 #  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
 # def self.save(album)
 #    name =  album[:image].original_filename
 #    directory = "public/system"
 #    # create the file path
 #    path = File.join(directory, name)
 #    # write the file
 #    File.open(path, "wb") { |f| f.write(upload[:image].read) }
 #  end
end
