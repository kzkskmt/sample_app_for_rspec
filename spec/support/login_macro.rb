module LoginMacros
  def login(user)
    visit root_path
    click_link 'Login'
    fill_in 'email', with: user.email
    fill_in 'password', with: 'password'
    click_button 'Login'
  end

  def logout
    click_link 'Logout'
    expect(page).to have_content 'Logged out'
  end
end
