require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { architecture: @project.architecture, client_name: @project.client_name, consultant: @project.consultant, enquiry_date: @project.enquiry_date, location: @project.location, name: @project.name, pmc: @project.pmc, project_cost: @project.project_cost, receipt_of_tender: @project.receipt_of_tender, tender: @project.tender, tender_sub_date: @project.tender_sub_date, walltype: @project.walltype }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { architecture: @project.architecture, client_name: @project.client_name, consultant: @project.consultant, enquiry_date: @project.enquiry_date, location: @project.location, name: @project.name, pmc: @project.pmc, project_cost: @project.project_cost, receipt_of_tender: @project.receipt_of_tender, tender: @project.tender, tender_sub_date: @project.tender_sub_date, walltype: @project.walltype }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
