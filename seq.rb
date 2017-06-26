@obj = ModelClass.new # initialize

@obj.name
@obj.save

# create

Parameters: {
"utf8"=>"✓",
"authenticity_token"=>"wFOqJzm7RvDLSl0/792nElTVmWrZQzGa0KVYow+z3USH67aixt+0BExlb0boTYgowKz13QEfPieGDciUhEhl+A==",

"user"=>{"name"=>"te
st", "email"=>"test@gmail.com", "password"=>"[FILTERED]", "confirm_password"=>"[FILTERED]"}, "commit"=>"Sign Up"}



<ActionController::Parameters {"utf8"=>"✓", "authenticity_token"=>"8AflRiOVQeIi+5Wc/G6m4J1JN8pmQIBerUWsmS8/4re3v/nD3PGzFqXUp+X7/onaCTBbfb4cj+P77TyupMRaCw==",
"name"=>"sdfas",
"email"=>"asdfas@gmaiol.com",
"password"=>"afdas",
"confirm_password"=>"dfaf", "commit"=>"Sign Up", "controller"=>"users", "action"=>"create"} permit
ted: false>

Hyper link
bootstrap

Edit and
Delete


Sign up is done

Login

Roles and permission


Session - Storage at server side to store user info in key and value pair
  session[:key] = value

Cookies -  Storage at client side to store user info in key and value pair

cookies[:key] = value
cookies[:key] = {key: value, expires_at: Time.now + 5.mins}


















Filter   - run before, after and around to an action .
 - before_action
 - after_action
 - around_action

Note : available for controller .


Helper


Validation   - validate a user form.

Note : server side validation .
