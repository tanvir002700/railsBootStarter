feature 'Navigation links', :devise do
  scenario 'view navigation links for admin' do
    user = FactoryGirl.create(:admin)
    login_as(user, scope: :user)
    visit root_path
    expect(page).to have_content 'Dashboard'
    expect(page).to have_content 'Vouchers'
    expect(page).to have_content 'Reports'
    expect(page).to have_content 'Users'
    expect(page).to have_content 'Sign out'
  end
end
