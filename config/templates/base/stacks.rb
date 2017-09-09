template "single-instance" do
  source "instance"
end

template "instance-and-route53" do
  source "instance"
  variables(
    route53: true
  )
end

template "asg"
