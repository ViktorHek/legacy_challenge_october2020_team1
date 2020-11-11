feature 'User can create an account' do   

  context "Successfully create an account [Happy Path]" do
  before do
    visit root_path
    click_on 'Sign up'
    # create(:user, name: 'user')
    # create(:user, email: 'user@test.com')
    # create(:user, password )
    # create(:user, )
    fill_in "Name", with: "user"
    fill_in "Email", with: "user@test.com"
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    click_on "Create"
  end

  it 'User should see success message' do
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
end

  # it 'User should be on home page' do
  #   article = Article.find_by(title: 'Happy holidays')
  #   expect(current_path).to eq article_path(article)
  # end

  # it 'User should see article title' do
  #   expect(page).to have_content 'Happy holidays'
  # end

  # it 'User should see article content' do
  #   expect(page).to have_content 'Buy your gifts now!'
  # end