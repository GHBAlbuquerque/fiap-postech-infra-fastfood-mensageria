data "aws_iam_policy_document" "queue_policy_document" {
  for_each = var.sqs_queues
  statement {
    sid    = lookup(each.value, "delay_seconds", null)
    effect = "Allow"

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions   = ["sqs:SendMessage"]
    resources = [aws_sqs_queue.queue.*.arn]
  }
}

resource "aws_sqs_queue_policy" "queue_policy" {

  queue_url = aws_sqs_queue.queue.*.id
  policy    = data.aws_iam_policy_document.queue_policy_document.json
}