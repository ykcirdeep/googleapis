class AlbumsController < ApplicationController
  def index
  	@album=Album.new
  end
  def create
  	params.permit!
  	@album=Album.new(params[:album])
    uploaded_io = params[:image]
    File.open(Rails.root.join('app/assets', 'images' , 'logo.png'), 'wb') do |file|
      if(file.write(uploaded_io.read))
        redirect_to root_path
      end
    end

  	 if @album.save
    	 	Rails.logger.info "save"
  	 end
end

private

def user_params
  params.require(:album).permit(:image)
end
end
