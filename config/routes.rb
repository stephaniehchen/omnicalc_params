Rails.application.routes.draw do
#forms
  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
  get("/payment/new", {:controller => "calculations", :action => "payment_form"})
  get("/random/new", {:controller => "calculations", :action => "random_form"})


#results
  get("/square/results", {:controller => "calculations", :action => "square"})
  get("/square_root/results", {:controller => "calculations", :action => "square_root"})
  get("/payment/results", {:controller => "calculations", :action => "payment"})
  get("/random/results", {:controller => "calculations", :action => "random"})


#calculations
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action => "flex_present_value_calculation"})
  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "flex_random"})


end
