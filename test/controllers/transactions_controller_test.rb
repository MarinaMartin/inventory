require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { 95_resolution_time: @transaction.95_resolution_time, audience: @transaction.audience, by_mail: @transaction.by_mail, call_volume: @transaction.call_volume, description: @transaction.description, details_url: @transaction.details_url, determine_eligibility: @transaction.determine_eligibility, digital_volume: @transaction.digital_volume, eligibility_criteria: @transaction.eligibility_criteria, first_time_resolution_rate: @transaction.first_time_resolution_rate, form: @transaction.form, in_person_mc: @transaction.in_person_mc, in_person_ro: @transaction.in_person_ro, keywords: @transaction.keywords, mail_volume: @transaction.mail_volume, man_hours: @transaction.man_hours, name: @transaction.name, office: @transaction.office, online: @transaction.online, phone: @transaction.phone, phone_number: @transaction.phone_number, request_volume: @transaction.request_volume, resolution_rate: @transaction.resolution_rate, resolution_time: @transaction.resolution_time, search_on_google: @transaction.search_on_google, search_on_va: @transaction.search_on_va, url: @transaction.url }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    patch :update, id: @transaction, transaction: { 95_resolution_time: @transaction.95_resolution_time, audience: @transaction.audience, by_mail: @transaction.by_mail, call_volume: @transaction.call_volume, description: @transaction.description, details_url: @transaction.details_url, determine_eligibility: @transaction.determine_eligibility, digital_volume: @transaction.digital_volume, eligibility_criteria: @transaction.eligibility_criteria, first_time_resolution_rate: @transaction.first_time_resolution_rate, form: @transaction.form, in_person_mc: @transaction.in_person_mc, in_person_ro: @transaction.in_person_ro, keywords: @transaction.keywords, mail_volume: @transaction.mail_volume, man_hours: @transaction.man_hours, name: @transaction.name, office: @transaction.office, online: @transaction.online, phone: @transaction.phone, phone_number: @transaction.phone_number, request_volume: @transaction.request_volume, resolution_rate: @transaction.resolution_rate, resolution_time: @transaction.resolution_time, search_on_google: @transaction.search_on_google, search_on_va: @transaction.search_on_va, url: @transaction.url }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
