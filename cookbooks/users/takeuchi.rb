USER_NAME = "takeuchi"

user USER_NAME do
  action :create
  home "/home/#{USER_NAME}"
  shell "/bin/bash"
end

directory "/home/#{USER_NAME}/.ssh" do
  group USER_NAME
  owner USER_NAME
  mode "0755"
  action :create
end

template "/home/#{USER_NAME}/.bashrc" do
  group USER_NAME
  owner USER_NAME
  mode "0644"
  source "templates/bashrc.erb"
end

file "/home/#{USER_NAME}/.ssh/authorized_keys" do
  group USER_NAME
  owner USER_NAME
  mode "0644"
  content <<'EOS'
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSVAlMO21pFNsS1L2WleCAZ4mBGlCaWvguIGDpjzxBHlSPZtEXN3OToAGAff0KVXl8YUDUSborJAZta1i3wvVUbZQaI3HmfO1b77GWczNxp1iw5gbPc8/6qAtslEh3MnhrjxXI73B2iCErTGnrbn/dMjV4sWSijbcZx3aTlEWS8EdkziqXuZuQWg75g3m2U3d+DntDAR72ovxPqdbTU6CJ4Disp7JY04dEtboByj+wTK+TY/kOk+3bLS//MBJhUUH5tgKfbCH7kTinttqkmvOaSWjzXkWVCMM1UPjlm24m1LSbmXUeyVOlzCUXUh8a0UcUwXMqb7u9NZ2QZhjqlzxV
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGdSgTe3SrhaJ4nKDc1yp4YxOVY2W+oLIo0YzDqgLMU2EwA6WvPQi7M+7KvLBeJutxYGUbgmbKgOqa/VFYf0yuozjRzf+rHNQWFxRmTFAsijJRbnUtwFxhhKBUdW2FQZm6oC5kCjn1iipu4ZPGlcsrgfQ74wMbqC4b1v9XxD4Ff0uj4GP/mXSq8m8YAbBEdhoJvH+ohzKRC7zpPN4W3G2XbHYsMz02syNp6LFNiwrxxljF0V/tdQ4iBogc8vGL9cFGoeoDWHeZrgwatBNvKYs5oKz3L3MNgo0jbJyHCS/85cSb65h/6A1uDNx+6qLlErlqTSdEnmwmd7oZNXUGGBe5
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeg9xmYzX9qH/L8M2hK1xGBIdAqhUE7u/viDzbZbDwmX61xVtUGaK+2qmbOXb3O2VNGdwiAMtQBXN6FZ55gYNKgnKtd4at8uzETKinRltbx5cj7c9gXyRvVqbptzbIjOyO1oC/w07hOq8LGD6gi02eWroy6ffWpd2R2qAb8UG0ZhQ7imJrzEjPjQE50KoIHl1U8ctdm+f9tZFGqzdp1FLBnsw4YaYwCxBp9Lh0FyjvU4bIwT1Q6KlSiH6qx8hPrvqu0PmrvVt67X5IYyJiOi7wM+3Haep88s+kp2pRiFSPHBfaRkYla60w+R5UVQ7Hwq2zCvCIpZCaRGIqV5SYM/C1
EOS
end
