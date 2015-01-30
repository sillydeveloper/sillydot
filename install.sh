#!/usr/bin/env ruby

user = `whoami`.gsub(/\n/,'') # whoami appends a new line, clean it out
user_directory = "/Users/#{user}"
project_directory = "#{user_directory}/Projects/sillydot"

Dir.entries("#{project_directory}/dotfiles").each do |dotfile|
  if dotfile != "." and dotfile != ".." then
    `mv #{user_directory}/#{dotfile} #{user_directory}/#{dotfile}.orig` if File.exist?("#{user_directory}/#{dotfile}")
  
    p "Linking #{dotfile}..."
    `ln -s #{project_directory}/dotfiles/#{dotfile} ~/#{dotfile}`
  end
end

p "Installing makedot..."
`cp makedot /usr/local/bin;`


