node["sudoers"] = node["sudoers"] || []
node["users"] = node["users"] || []

node["users"].each do |u|
  include_recipe "#{u}.rb"
end

template "/etc/sudoers.d/90-sudoers" do
  mode "440"
  owner "root"
  group "root"
  variables(sudoers: node["sudoers"])
end
