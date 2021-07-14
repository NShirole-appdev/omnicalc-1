class ApplicationController < ActionController::Base
 def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
 end

 def calculate_square
    #params

    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb"})
 end

def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
end


 def calculate_random

    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @output = rand((@lower..@upper))
    render({ :template => "calculation_templates/rand_results.html.erb"})
 end
def blank_sqrt_form
    render({ :template => "calculation_templates/sqrt_form.html.erb"})
end
def calculate_sqrt

    @sqrtnum = params.fetch("sqrt_input").to_f
    @sqrt_of_num = Math.sqrt(@sqrtnum)
    render({ :template => "calculation_templates/sqrt_results.html.erb"})
end

end
