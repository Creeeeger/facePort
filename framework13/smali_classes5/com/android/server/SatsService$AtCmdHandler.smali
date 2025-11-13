.class public final Lcom/android/server/SatsService$AtCmdHandler;
.super Ljava/lang/Object;
.source "SatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AtCmdHandler"
.end annotation


# static fields
.field private static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final blacklist AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID PARAM)"

.field private static final blacklist AT_RESPONSE_NA:Ljava/lang/String; = "NA"

.field private static final blacklist AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final blacklist THREAD_SUFFIX_UART:Ljava/lang/String; = "At"

.field private static final blacklist THREAD_SUFFIX_USB:Ljava/lang/String; = "Data"

.field private static final blacklist UART_SOCKET_NAME:Ljava/lang/String; = "SatsService"

.field private static final blacklist USB_SOCKET_NAME:Ljava/lang/String; = "/data/misc/.socket_stream"


# instance fields
.field private blacklist THREAD_TAG:Ljava/lang/String;

.field private blacklist mGettedBuffer:Z

.field private blacklist mLocalSocket:Landroid/net/LocalSocket;

.field private blacklist mLocalSocketAddress:Landroid/net/LocalSocketAddress;

.field final synthetic blacklist this$0:Lcom/android/server/SatsService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/SatsService;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/SatsService;
    .param p2, "connectTarget"    # I

    .line 264
    iput-object p1, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    .line 265
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    .line 266
    const-string v0, "SatsService"

    const-string v1, "AtCmdHandler called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/server/SatsService$AtCmdHandler;->selectTarget(I)V

    .line 268
    return-void
.end method

.method private blacklist closeInputStream(Landroid/net/LocalSocket;)V
    .locals 1
    .param p1, "socket"    # Landroid/net/LocalSocket;

    .line 399
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 403
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private blacklist closeLocalSocket(Landroid/net/LocalSocket;)V
    .locals 1
    .param p1, "socket"    # Landroid/net/LocalSocket;

    .line 388
    if-eqz p1, :cond_0

    .line 389
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 393
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 394
    :goto_1
    return-void
.end method

.method private blacklist closeOutputStream(Landroid/net/LocalSocket;)V
    .locals 1
    .param p1, "socket"    # Landroid/net/LocalSocket;

    .line 408
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private blacklist doWork(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 499
    const-string v0, "\r\n\r\nOK\r\n"

    const/4 v1, 0x0

    .line 500
    .local v1, "atCmd":Lcom/android/server/IWorkOnAt;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v2, "responseDo":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v3}, Lcom/android/server/SatsService;->-$$Nest$fgetserviceInterfaces(Lcom/android/server/SatsService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 504
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/IWorkOnAt;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "SatsService"

    if-eqz v4, :cond_2

    .line 505
    const-string v4, "doWork: iterator: "

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/server/IWorkOnAt;

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doWork: cmd "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 510
    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v8, "SatsServiceData"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 511
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    :cond_0
    const-string v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 516
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 521
    goto :goto_1

    .line 517
    :catch_0
    move-exception v4

    .line 518
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    const-string v6, "NG (INVALID PARAM)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "doWork: cmdResponse is equal to cmd."

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 525
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    goto :goto_2

    .line 529
    :cond_1
    const-string v4, "doWork: cmd not in list"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 533
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    const-string v0, "doWork: no such service"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "NG (INVALID PARAM)\r\n\r\nOK\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 538
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist executeEmAtCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "cmd"    # Ljava/lang/String;

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "8,0,0"

    const-string v3, "8,0,1"

    const-string v4, "8,0,2"

    const-string v5, "8,0,3"

    const-string v6, "7,0,1,0"

    const-string v7, "7,1,0,0"

    const-string v8, "7,1,1,0"

    const-string v9, "7,2,0,0"

    const-string v10, "7,2,1,0"

    const-string v11, "7,1,1,1"

    const-string v12, "7,0,0,1"

    const-string v13, "7,0,0,2"

    const-string v14, "7,0,0,3"

    const-string v15, "7,0,0,4"

    const-string v16, "7,0,0,5"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "testParams":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 464
    .local v3, "result":[B
    const-string v4, ""

    .line 466
    .local v4, "response":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v6, "SatsServiceData"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 468
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 470
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "parameter":Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x0

    :goto_0
    const-string v9, "\r\n\r\nOK\r\n"

    const-string v10, "+ENGMODES:"

    if-ge v8, v7, :cond_2

    aget-object v11, v2, v8

    .line 473
    .local v11, "testParam":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 474
    iget-object v7, v0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "executeEmAtCommand: test command("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",OK"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    return-object v4

    .line 472
    .end local v11    # "testParam":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 483
    :cond_2
    iget-object v7, v0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v7}, Lcom/android/server/SatsService;->-$$Nest$fgetmEmCmdHelper(Lcom/android/server/SatsService;)Lcom/android/server/SatsService$EngModesCmdHelper;

    move-result-object v7

    invoke-static {}, Lcom/android/server/SatsService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/android/server/SatsService$EngModesCmdHelper;->processCmd(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    .line 485
    if-nez v3, :cond_3

    .line 486
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",NG,FFFFFFFF"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 491
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    :goto_1
    return-object v4
.end method

.method private blacklist isValidCommand(Ljava/lang/String;)Z
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 418
    const-string v0, "="

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v2, "error: cmd = null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v1

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidCommand: cmd is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "AT"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 427
    iget-object v2, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v2}, Lcom/android/server/SatsService;->-$$Nest$fgetcmdList(Lcom/android/server/SatsService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 428
    .local v2, "cmdListIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 430
    .local v3, "command":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidCommand: cmd is true. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    const/4 v0, 0x1

    return v0

    .line 438
    .end local v2    # "cmdListIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "command":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    .line 299
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    iget-object v1, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect daemon - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v1, "Connected to daemon."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 308
    .local v1, "bw":Ljava/io/BufferedWriter;
    const-string v2, ""

    .line 311
    .local v2, "strIncome":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v5

    .line 312
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v5

    .line 313
    iput-boolean v4, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    goto :goto_2

    .line 314
    :catch_1
    move-exception v5

    .line 315
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get input/output stream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-boolean v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    .line 319
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    if-eqz v5, :cond_5

    .line 321
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 323
    if-eqz v2, :cond_3

    .line 325
    invoke-direct {p0, v2}, Lcom/android/server/SatsService$AtCmdHandler;->isValidCommand(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 326
    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "command_0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v6, ""

    .line 328
    .local v6, "response":Ljava/lang/String;
    const-string v7, "AT+ENGMODES"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v7, v4, :cond_1

    .line 329
    invoke-direct {p0, v2}, Lcom/android/server/SatsService$AtCmdHandler;->executeEmAtCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_3

    .line 331
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/SatsService$AtCmdHandler;->doWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 333
    :goto_3
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 335
    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "command_1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    nop

    .end local v6    # "response":Ljava/lang/String;
    goto/16 :goto_4

    .line 339
    :cond_2
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v7, "SatsServiceData"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 340
    const-string v6, "NA"

    .line 341
    .restart local v6    # "response":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 343
    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    nop

    .end local v6    # "response":Ljava/lang/String;
    goto :goto_4

    .line 347
    :cond_3
    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v7, "Socket seems be closed."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput-boolean v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    .line 349
    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v6, v4}, Lcom/android/server/SatsService;->-$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V

    .line 350
    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v6}, Lcom/android/server/SatsService$AtCmdHandler;->closeInputStream(Landroid/net/LocalSocket;)V

    .line 351
    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v6}, Lcom/android/server/SatsService$AtCmdHandler;->closeOutputStream(Landroid/net/LocalSocket;)V

    .line 352
    iget-object v6, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v6}, Lcom/android/server/SatsService$AtCmdHandler;->closeLocalSocket(Landroid/net/LocalSocket;)V

    .line 353
    iput-object v5, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 354
    goto :goto_5

    .line 356
    :catch_2
    move-exception v6

    .line 357
    .local v6, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Socket seems be closed - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iput-boolean v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    .line 359
    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v7, v4}, Lcom/android/server/SatsService;->-$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V

    .line 360
    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v7}, Lcom/android/server/SatsService$AtCmdHandler;->closeInputStream(Landroid/net/LocalSocket;)V

    .line 361
    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v7}, Lcom/android/server/SatsService$AtCmdHandler;->closeOutputStream(Landroid/net/LocalSocket;)V

    .line 362
    iget-object v7, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v7}, Lcom/android/server/SatsService$AtCmdHandler;->closeLocalSocket(Landroid/net/LocalSocket;)V

    .line 364
    iput-object v5, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    .line 365
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    goto/16 :goto_2

    .line 367
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "strIncome":Ljava/lang/String;
    :cond_5
    :goto_5
    goto/16 :goto_0

    .line 369
    :cond_6
    const-wide/16 v0, 0x1388

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 371
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v1, "SatsServiceAt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v1, "Wait until JIG is inserted or ATD Activation intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v0}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 374
    :goto_6
    :try_start_4
    iget-object v1, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v1}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUartGoWait(Lcom/android/server/SatsService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 375
    iget-object v1, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v1}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 376
    :cond_7
    monitor-exit v0

    goto :goto_7

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/SatsService$AtCmdHandler;
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 378
    .restart local p0    # "this":Lcom/android/server/SatsService$AtCmdHandler;
    :catch_3
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_7
    goto/16 :goto_0
.end method

.method public blacklist selectTarget(I)V
    .locals 3
    .param p1, "connectTarget"    # I

    .line 272
    const-string v0, "SatsService"

    packed-switch p1, :pswitch_data_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :pswitch_0
    const-string v1, "connect data distributor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    const-string v2, "/data/misc/.socket_stream"

    invoke-direct {v0, v2, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 283
    const-string v0, "SatsServiceData"

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    .line 284
    goto :goto_0

    .line 274
    :pswitch_1
    const-string v1, "connect at distributor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v0, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 277
    const-string v0, "SatsServiceAt"

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    .line 278
    nop

    .line 289
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
