class PicturesController < ApplicationController
  
  def index
    thumb_path = Rails.root.join('app', 'assets', 'images', 'thumbs')
    pictures_path = Rails.root.join('app', 'assets', 'images', 'pictures')
    @pictures = Dir[Rails.root.join(*thumb_path).to_s + '*/**'].
                  sort_by { |p| Kernel.rand }.
                  collect do |f|
                    out = {}
                    picture_filename = File.basename(f)
                    
                    out[:thumb] = "thumbs/#{picture_filename}"
                    out[:id] = picture_filename.gsub /[^a-z]/, ''
                    if pictures_path.join(picture_filename).exist?
                      out[:picture] = "pictures/#{picture_filename}"
                    else
                      out[:picture] = out[:thumb]
                    end
                    out
                  end
  end
  
end
