class BlogsController < ApplicationController

# build the show action than we need a template
def show
    
@blog = Blog.find(params[:id])
end


end