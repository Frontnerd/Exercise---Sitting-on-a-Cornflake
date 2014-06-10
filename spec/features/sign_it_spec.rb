feature "the signin process" do

  background do
    create(:user, :email => 'user@example.com', :password => 'password')
    visit '/users/sign_in'
  end

  scenario "signs me in" do
    within("#session") do
      fill_in 'Login', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
    end
    click_link 'Sign in'
    expect(page).to have_content 'Success'
  end
  
  scenario 'e qui si suda'
end


describe 'Authentication' do

  context 'signed out' do
    it 'redirects to the sign in view' do
      debugger
      puts
    end
  end

  context 'signed out' do
    it 'redirects to the sign in view' do
    end
  end

end


