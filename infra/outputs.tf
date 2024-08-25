output "queue_ids" {
  #value       = aws_sqs_queue.queue[*].url
  value = [
    for queue in aws_sqs_queue.queue : queue.url
  ]
  description = "output for queue_ids"
}

output "dead_letter_queue_ids" {
  #value = try(
  #aws_sqs_queue.dead_letter_queue[*].arn,
  #  null
  #)
  value = [
    for queue in aws_sqs_queue.dead_letter_queue : queue.url
  ]
  description = "output for dead_letter_queue_ids"
}