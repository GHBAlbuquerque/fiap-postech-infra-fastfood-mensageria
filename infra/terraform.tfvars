region       = "us-east-1"
profile      = "default"
accountid    = "731362576078"
lab_role_arn = "arn:aws:iam::731362576078:role/LabRole"
sqs_queues   = {

  resposta_criar_pedido = {
    name                       = "queue_resposta_criar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 60
    visibility_timeout_seconds = 45
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_criar_pedido = {
    name                       = "queue_comando_criar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 60
    visibility_timeout_seconds = 45
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_solicitar_pagamento = {
    name                       = "queue_comando_solicitar_pagamento"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 60
    visibility_timeout_seconds = 45
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_realizar_pagamento = {
    name                       = "queue_comando_realizar_pagamento"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 60
    visibility_timeout_seconds = 45
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_notificar_cliente = {
    name                       = "queue_comando_notificar_cliente"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 60
    visibility_timeout_seconds = 45
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_preparar_pedido = {
    name                       = "queue_comando_preparar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 60
    visibility_timeout_seconds = 45
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_encerrar_pedido = {
    name                       = "queue_comando_encerrar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 60
    visibility_timeout_seconds = 45
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }
}
