template "single_instance.yml" do
  source "instance.yml.erb"
end

template "instance_and_route53.yml" do
  source "instance.yml.erb"
  variables(
    route53: true
  )
end

template "asg.yml" do
  source "asg.yml.erb"
end
