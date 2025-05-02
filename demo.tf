resource local_file my_file {
    content  = "Hello Good evening to everyone"
    filename = "${path.module}/output.txt"
}