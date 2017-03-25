require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

	def setup
		@category = Category.create(name: "sports")
	end

	# get is HTTP method
	test "should get categories index" do
		get :index
		assert_response :success
	end

	test "should get new" do
		get :new
		assert_response :success
	end

	test "should get show" do
		# this is old style
		# get(:show, {'id' => @category.id})
		get :show, params: {id: @category.id}
		assert_response :success
	end

end