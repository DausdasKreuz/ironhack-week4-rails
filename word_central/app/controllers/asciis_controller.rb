class AsciisController < ApplicationController
  def new
    #code
  end

  def create
    # artii = Artii::Base.new([
    # puts artii.asciify('bla')
    artii = Artii::Base.new :font => 'slant'
    @converted_text = artii.asciify(params[:text_to_ascii][:text_to_convert])
    # @b = a.asciify('Art!')
    render "result"
  end
end
