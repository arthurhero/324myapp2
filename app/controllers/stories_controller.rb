class StoriesController < ApplicationController

    def index
        @stories=Story.all
    end

    def create
        text=params[:story][:text] 
        author=params[:story][:author] 
        @story = Story.create(author: author, story: text)
        if not @story.valid?
            @author_errors=@story.errors.messages[:author]
            @story_errors=@story.errors.messages[:story]
            alert=""
            if @author_errors.any?
                alert+="Author: "+@author_errors[0]
                if @story_errors.any?
                    alert+=" and Story: "+@story_errors[0]
                end
            elsif @story_errors.any?
                alert+="Story: "+@story_errors[0]
            end
            flash[:alert] = alert 
            return redirect_to '/stories'
        end
        @story.save
        redirect_to '/stories'
    end

    def delete
        id=params[:id]
        Story.destroy(id)
        redirect_to '/stories'
    end

end
