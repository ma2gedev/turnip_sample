step 'Sign in ボタンをクリックする' do
  click_link 'Sign in'
end

step 'ログインする' do
  fill_in 'login', with: ENV['LOGIN_USER']
  fill_in 'password', with: ENV['LOGIN_PASSWORD']
  click_button 'Sign in'
end

step ':path へ遷移する' do |path|
  visit path
end

step 'Star をつける' do
  click_link 'Star'
end

step 'Star がつく' do
  expect(page).to have_content('Unstar')
end
