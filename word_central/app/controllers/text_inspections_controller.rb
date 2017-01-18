require 'pry'

class TextInspectionsController < ApplicationController
  def new
    render "new"
  end

  def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @lecture_time = @word_count * 60 / 275

    repetitions = {}
    @text.split(" ").each do |compared_word|
      word_counter = 0
      @text.split(" ").each do |word_to_compare|
        if compared_word == word_to_compare
          word_counter += 1
        end
        repetitions[compared_word.to_sym] = word_counter
      end
    end
    @repetitions_sorted = repetitions.sort_by {|k,v| -v}
    # @words_repited = []
    # @appears = []
    # (0..9).each do |i|
    #   repetitions_sorted[repetitions_sorted.length-i].each do |k,v|
    #     @words_repited.push(k)
    #     @appears.push(v)
    #   end
    # end
    render "results"
  end
end
