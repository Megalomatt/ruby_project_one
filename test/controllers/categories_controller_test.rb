require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.create(username: "Bobby", email: "bobby@email.com", password: "password", admin: true)
    @category = Category.create(name: "sports")
  end
  
  test "should get categories index" do
    get categories_path
    assert_response :success
    
  end
  
    test "should get new" do
      sign_in_as(@user, "password")
      get new_categories_path
       assert_response :successs
    
  end
  
    test "should get show" do
    get category_path(@category)
    assert_response :success
      
    
  end
  
  
  test "should redirect create when admin not logged in" do
    assert_no_difference 'Category.count' do
      post categories_path, params: {category: {name: "sports"}}
    end
    assert_redirected_to categories_path
  end


end  