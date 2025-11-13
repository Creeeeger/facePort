.class public final Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

.field public final synthetic val$mLinkProperties:Landroid/net/LinkProperties;

.field public final synthetic val$mMyAddr:[B

.field public final synthetic val$myMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Landroid/net/LinkProperties;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->val$mLinkProperties:Landroid/net/LinkProperties;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->val$myMac:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->val$mMyAddr:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const-string v0, "IOException "

    const-string v1, "ArpPeer"

    const-string v2, "RuntimeException "

    const-string v3, "Exception "

    const-string v4, "mMyMac="

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "socket create"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    sget v7, Landroid/system/OsConstants;->AF_PACKET:I

    sget v8, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    const-string v6, "getInterfaceName"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->val$mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v6, v5

    :goto_0
    if-nez v6, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v6

    :goto_1
    if-lez v6, :cond_1

    const-string v7, "makePacketSocketAddress"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    sget v8, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v8, v8

    invoke-static {v8, v6}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    const-string v7, "macStringToByteArray"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->val$myMac:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$mmacStringToByteArray(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "ByteBuffer allocate"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x5dc

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/16 v9, 0xe

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/16 v10, 0x1c

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v11, "makeEthernet"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v12, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->L2_BROADCAST:[B

    sget-object v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->ETHER_ARP_TYPE:[B

    invoke-static {v11, v9, v12, v7, v13}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$mmakeEthernet(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/nio/ByteBuffer;[B[B[B)V

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->val$mMyAddr:[B

    invoke-static {v11, v10, v7, v12}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->-$$Nest$mmakeGARP(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/nio/ByteBuffer;[B[B)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "     mMyAddr="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->val$mMyAddr:[B

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v9, v4, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->L2_BROADCAST:[B

    invoke-static {v6, v4}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(I[B)Ljava/net/SocketAddress;

    move-result-object v14

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v14}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_3

    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid interface index"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v6, v4, Landroid/system/ErrnoException;

    if-eqz v6, :cond_2

    check-cast v4, Landroid/system/ErrnoException;

    iget v4, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :goto_3
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_3
    :goto_4
    return-void

    :goto_5
    :try_start_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_4
    :goto_6
    throw v2
.end method
