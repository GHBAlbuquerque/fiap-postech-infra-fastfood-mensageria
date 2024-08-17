data "aws_iam_policy_document" "queue_policy_document" {
  statement {
    sid    = "SQS Queue Policy"
    effect = "Allow"

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage",
      "sqs.GetQueueUrl"
    ]
    resources = ["*"]
  }
}

resource "aws_sqs_queue_policy" "queue_policy" {
  for_each  = aws_sqs_queue.queue
  queue_url = each.value.id
  policy    = data.aws_iam_policy_document.queue_policy_document.json
}

resource "aws_sqs_queue_policy" "dlq_queue_policy" {
  for_each  = aws_sqs_queue.dead_letter_queue
  queue_url = each.value.id
  policy    = data.aws_iam_policy_document.queue_policy_document.json
}