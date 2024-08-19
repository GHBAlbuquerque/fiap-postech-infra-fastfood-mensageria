region       = "us-east-1"
profile      = "default"
accountid    = "673847524989"
lab_role_arn = "arn:aws:iam::673847524989:role/LabRole"
sqs_queues   = {

  resposta_criar_pedido = {
    name                       = "queue_resposta_criar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_criar_pedido = {
    name                       = "queue_comando_criar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_solicitar_pagamento = {
    name                       = "queue_comando_solicitar_pagamento"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_realizar_pagamento = {
    name                       = "queue_comando_realizar_pagamento"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_notificar_cliente = {
    name                       = "queue_comando_notificar_cliente"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_preparar_pedido = {
    name                       = "queue_comando_preparar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_encerrar_pedido = {
    name                       = "queue_comando_encerrar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_estornar_pagamento = {
    name                       = "queue_comando_estornar_pagamento"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_cancelar_solicitacao_pagamento = {
    name                       = "queue_comando_cancelar_solicitacao_pagamento"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  comando_cancelar_pedido = {
    name                       = "queue_comando_cancelar_pedido"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }

  dev_teste= {
    name                       = "queue_dev_teste"
    delay_seconds              = 0
    message_retention_seconds  = 345600
    receive_wait_time_seconds  = 10
    visibility_timeout_seconds = 300
    fifo_queue                 = true
    suffix                     = ".fifo"

    create_deadletter = true
    maxReceiveCount   = 5
  }



}
