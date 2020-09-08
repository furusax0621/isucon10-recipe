execute "import newrelic-infra GPG Key" do
  command "curl -s https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | apt-key add -"
end

template "/etc/apt/sources.list.d/newrelic-infra.list" do
  version = run_command("cat /etc/lsb-release | grep 'DISTRIB_CODENAME' | cut -d '=' -f 2")
  variables(version: version.stdout.chomp)
end

template "/etc/newrelic-infra.yml" do
  license = run_command("cat license_key.txt")
  variables(license: license.stdout.chomp)
end

execute "update repositories" do
  command "apt update"
end

package "newrelic-infra"

service "newrelic-infra" do
  action [:enable, :start]
end
