class BlogsController < ApplicationController

# build the show action than we need a template
def index
@blogs = Blog.all
end

def show
    
@blog = Blog.find(params[:id])
end

def new 
@blog = Blog.new
end

def edit 
    @blog = Blog.find(params[:id])
end

def create


    
# render plain: params[:blog]
# rails extracts the attributes from the object using the id key
# we need to whitelist what is coming in from the web using strong params
@blog = Blog.new(params.require(:blog).permit(:title, :description))
# render plain: @blog.inspect

    if @blog.save
        flash[:notice] = "Blog created successfully"
# this will display a 204 on the console we have to tell rails where to go after this so we should redirect to the blogs show page
# redirect_to blogs_path this goes to index 
    redirect_to @blog
# redirect_to blogs_path(@blog)
# that will extract id from blog instance variable and take us to that url
# ------------------------------
# next step is to display error messages for the user to let them know that their entry are not valid in case they aren't
    else 

        render 'new'
    end
end




def update 
 
    @blog = Blog.find(params[:id])
  
    if @blog.update(params.require(:blog).permit(:title, :description))
     
        flash[:notice] = "Blog updated successfully"
        redirect_to blogs_path
       
    else 

        render 'edit'
    end
end

def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
end

end