class CalculationsController < ApplicationController
#defs for Part II: forms
  def square_form
    render("calculations/square_form.html.erb")
  end
  def square_root_form
    render("calculations/square_root_form.html.erb")
  end
  def payment_form
    render("calculations/payment_form.html.erb")
  end
  def random_form
    render("calculations/random_form.html.erb")
  end

#defs for Part II: form calculations
  def square
    @user_num = params[:user_num].to_f
    @num_squared = @user_num **2
    render("calculations/square.html.erb")
  end
  def square_root
    @user_num = params[:user_num].to_f
    @num_square_root = Math.sqrt(@user_num)
    render("calculations/square_root.html.erb")
  end
  def payment
    @apr = params[:basis_points].to_f
    @interest_rate = number_to_percentage(@apr)
    interest_rate_per_month = @interest_rate/(12*100)
    @number_years = params[:number_of_years].to_i
    @pv = params[:present_value].to_f
    neg_number_periods = (@number_years*12)*-1
    @monthly_payment = (interest_rate_per_month*@pv)/(1-(1+interest_rate_per_month)**neg_number_periods)
    render("calculations/payment.html.erb")
  end
  def random
    @max = params[:max].to_f
    @min = params[:min].to_f
    @random_num = rand(@min..@max)
    render("calculations/random.html.erb")
  end

#defs for Part I: Flexible calculations
  def flex_square
    @user_num = params["num"].to_f
    @num_squared = @user_num **2
    render("calculations/flex_square.html.erb")
  end

  def flex_square_root
    @user_num = params["num"].to_f
    @num_square_root = Math.sqrt(@user_num)
    render("calculations/flex_square_root.html.erb")
  end

  def flex_present_value_calculation
    @interest_rate = params["basis_points"].to_f/100
    interest_rate_per_month = @interest_rate/(12*100)
    @number_years = params["number_of_years"].to_i
    @pv = params["present_value"].to_f
    neg_number_periods = (@number_years*12)*-1
    @monthly_payment = (interest_rate_per_month*@pv)/(1-(1+interest_rate_per_month)**neg_number_periods)
    render("calculations/flex_present_value_calculation.html.erb")
  end

  def flex_random
    @max = params["max"].to_i
    @min = params["min"].to_i
    @random_num = rand(@min..@max)
    render("calculations/flex_random.html.erb")
  end
end
