class Blog < ApplicationRecord

#review notes line 185 constraints
# the title is present for any blog to be saved
validates :title, presence: true, length: {minimum: 6, maximum: 100} 
# in the console this what will happen
# 2.6.1 :001 > blog = Blog.new
#    (0.5ms)  SELECT sqlite_version(*)
#  => #<Blog id: nil, title: nil, description: nil>
# 2.6.1 :002 > blog.save
#  => false 
# ----------------
# if we call erros this will be returned 
# blog.errors.full_messages
#  => ["Title can't be blank"] 

validates :description, presence: true, length: {minimum: 15, maximum: 300} 
# another validation we wanna add is uselessness of blogs so we can enforce minimum length requirment for title and description


end
