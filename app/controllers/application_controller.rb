class ApplicationController < ActionController::Base
    #hello action or method this needs a template
def hello 
    render html: "Hello rails"
    end
end
