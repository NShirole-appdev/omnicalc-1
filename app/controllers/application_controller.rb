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

def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
end

def calculate_payment
    @apr = params.fetch("user_apr").to_f
    @percentageapr = @apr / 100
    @rate_per_period = @percentageapr / 12
    @rpp_plus_1 = @rate_per_period + 1
    @years = params.fetch("user_years").to_f
    @n = @years * 12
    @negative_n = @n * -1
    @principal = params.fetch("user_principal").to_f
    @numerator = @rate_per_period * @principal
    @denom_paren = @rpp_plus_1 ** @negative_n
    @denominator = 1 - @denom_paren
    @payment = @numerator / @denominator
    @paymentfinal = @payment.round(2)
    render({ :template => "calculation_templates/payment_results.html.erb"})
end

end
