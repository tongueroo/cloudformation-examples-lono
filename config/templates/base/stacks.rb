template "single_instance" do
  source "instance"
end

template "instance_and_route53" do
  source "instance"
  variables(
    route53: true
  )
end

template "asg"
