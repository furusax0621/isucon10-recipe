execute 'update repositories' do
  command "apt update"
end

package 'jq'
