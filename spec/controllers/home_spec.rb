require "rails_helper"

# here we use describe and pass the object name of HomeController
# followed by us explicitly saying that this is a test of a 
# controller
describe HomeController, :type => :controller do 
  it "should get page for index" do 
    # inside the it block is the meat of our tests
    # we use 'get' method to simulate a get request
    # asking for the view 'index'
    get :index

    # expect is an example of how we assert something is true
    # in this case we expect the response from the get to be
    # a success
    expect(response).to be_success
    expect(response).to have_http_status(200)

  end
end