feature 'User can create an account' do   
  visit root_path
  click_on 'A breaking news item'
end

  it 'title' do
    expect(page).to have_content 'A breaking news item'
  end
  
end