output "vpc_id" {
  value = "${aws_vpc.default.id}"
}

output "cidr_block" {
  value = "${aws_vpc.default.cidr_block}"
}

output "private_subnets" {
  value = "${join(",", aws_subnet.private.*.id)}"
}

output "public_subnets" {
  value = "${join(",", aws_subnet.public.*.id)}"
}

output "private_db_subnets" {
  value = "${join(",", aws_subnet.private_db.*.id)}"
}

output "private_emr_subnets" {
  value = "${join(",", aws_subnet.private_emr.*.id)}"
}

output "nat_eip" {
  value = "${join(",", aws_eip.nat.*.public_ip)}"
}

output "bastion_eip" {
  value = "${aws_eip.bastion.public_ip}"
}