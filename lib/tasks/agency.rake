namespace :agency do
  desc 'Send some tweets to a user'
  task :create, [:name, :logo, :code] => [:environment] do |t, args|
    if args[:name].blank?
      puts ':name is required.'
      puts "rake 'agency:create[Paulo McNally, http://i.imgur.com/22kPhMh.png, apkNmV6ebb]'"
    elsif args[:logo].blank?
      puts ':logo is required.'
      puts "rake 'agency:create[Paulo McNally, http://i.imgur.com/22kPhMh.png, apkNmV6ebb]'"
    elsif args[:code].blank?
      puts ':code is required.'
      puts "rake 'agency:create[Paulo McNally, http://i.imgur.com/22kPhMh.png, apkNmV6ebb]'"
    else
      Agency.create(name: args[:name], logo: args[:logo], code: args[:code])
      puts 'Agency created.'
    end
  end
end
