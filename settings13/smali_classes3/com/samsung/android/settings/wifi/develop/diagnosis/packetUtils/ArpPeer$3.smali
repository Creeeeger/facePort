.class Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;
.super Ljava/lang/Object;
.source "ArpPeer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->sendGArp(Landroid/net/LinkProperties;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

.field final synthetic val$mLinkProperties:Landroid/net/LinkProperties;

.field final synthetic val$mMyAddr:[B

.field final synthetic val$myMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Landroid/net/LinkProperties;Ljava/lang/String;[B)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->val$mLinkProperties:Landroid/net/LinkProperties;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->val$myMac:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->val$mMyAddr:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "IOException "

    const-string v1, "ArpPeer"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "socket create"

    .line 382
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    sget v4, Landroid/system/OsConstants;->AF_PACKET:I

    sget v5, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fputmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/io/FileDescriptor;)V

    const-string v3, "getInterfaceName"

    .line 384
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->val$mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v3

    const-string v4, "makePacketSocketAddress"

    .line 386
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v5, v5

    iget v6, v3, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v5, v6}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    const-string v4, "macStringToByteArray"

    .line 388
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->val$myMac:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$mmacStringToByteArray(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "ByteBuffer allocate"

    .line 392
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x5dc

    .line 395
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v6, 0xe

    .line 396
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/16 v7, 0x1c

    .line 397
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 399
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 400
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 403
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 405
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 406
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v8, "makeEthernet"

    .line 408
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetL2_BROADCAST(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)[B

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$sfgetETHER_ARP_TYPE()[B

    move-result-object v10

    invoke-static {v8, v6, v9, v4, v10}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$mmakeEthernet(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/nio/ByteBuffer;[B[B[B)V

    .line 415
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->val$mMyAddr:[B

    invoke-static {v8, v7, v4, v9}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$mmakeGARP(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/nio/ByteBuffer;[B[B)V

    .line 417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mMyMac="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "     mMyAddr="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->val$mMyAddr:[B

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 421
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 424
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v10, 0x0

    iget v3, v3, Lcom/android/net/module/util/InterfaceParams;->index:I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetL2_BROADCAST(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)[B

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(I[B)Ljava/net/SocketAddress;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 439
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fputmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_2

    :catch_1
    move-exception v3

    .line 430
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 431
    instance-of v5, v4, Landroid/system/ErrnoException;

    if-eqz v5, :cond_0

    check-cast v4, Landroid/system/ErrnoException;

    iget v4, v4, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v4, v5, :cond_0

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 439
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fputmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v3

    .line 428
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 437
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 439
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fputmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception p0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 437
    :goto_2
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 438
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 439
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$fputmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_2
    :goto_3
    throw v3
.end method
