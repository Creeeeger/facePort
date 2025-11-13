.class Lcom/samsung/android/allshare/TVMessageListener;
.super Ljava/lang/Thread;
.source "IAppControlAPI.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TVMessageListener"


# instance fields
.field blacklist mBuf:Ljava/nio/ByteBuffer;

.field blacklist mCbuf:Ljava/nio/CharBuffer;

.field blacklist mContext:Landroid/content/Context;

.field private blacklist mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

.field blacklist mInput:Ljava/nio/channels/ReadableByteChannel;

.field blacklist mProtocol:I

.field blacklist mRebuf:[B

.field public blacklist mRunThread:Z

.field blacklist mSender:Lcom/samsung/android/allshare/TVMessageSender;

.field blacklist mSocket:Ljava/net/Socket;

.field blacklist mStrCamera:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/allshare/TVMessageSender;)V
    .locals 3
    .param p1, "sender"    # Lcom/samsung/android/allshare/TVMessageSender;

    .line 524
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    .line 493
    const/16 v1, 0x200

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/allshare/TVMessageListener;->mRebuf:[B

    .line 499
    const-string v2, "live_camera.jpg"

    iput-object v2, p0, Lcom/samsung/android/allshare/TVMessageListener;->mStrCamera:Ljava/lang/String;

    .line 501
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/allshare/TVMessageListener;->mProtocol:I

    .line 503
    iput-boolean v2, p0, Lcom/samsung/android/allshare/TVMessageListener;->mRunThread:Z

    .line 505
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSender:Lcom/samsung/android/allshare/TVMessageSender;

    .line 511
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 526
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    .line 527
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mCbuf:Ljava/nio/CharBuffer;

    .line 531
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mProtocol:I

    .line 533
    iput-object p1, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSender:Lcom/samsung/android/allshare/TVMessageSender;

    .line 535
    if-eqz p1, :cond_0

    .line 536
    iget-object v0, p1, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    .line 538
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist deliverMsgData(III)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 547
    new-instance v0, Lcom/samsung/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventSync;-><init>()V

    .line 549
    .local v0, "isc":Lcom/samsung/android/allshare/EventSync;
    iput p1, v0, Lcom/samsung/android/allshare/EventSync;->mWhat:I

    .line 550
    iput p2, v0, Lcom/samsung/android/allshare/EventSync;->mArg1:I

    .line 551
    iput p3, v0, Lcom/samsung/android/allshare/EventSync;->mArg2:I

    .line 561
    iget-object v1, p0, Lcom/samsung/android/allshare/TVMessageListener;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    if-eqz v1, :cond_0

    .line 562
    invoke-interface {v1, v0}, Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;->controlEvent(Lcom/samsung/android/allshare/EventSync;)V

    goto :goto_0

    .line 564
    :cond_0
    const-string v1, "TVMessageListener"

    const-string v2, "EventListener is null !!!"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_0
    return-void
.end method

.method public blacklist deliverMsgData(IIILjava/lang/String;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "str"    # Ljava/lang/String;

    .line 572
    new-instance v0, Lcom/samsung/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventSync;-><init>()V

    .line 573
    .local v0, "isc":Lcom/samsung/android/allshare/EventSync;
    iput p1, v0, Lcom/samsung/android/allshare/EventSync;->mWhat:I

    .line 574
    iput p2, v0, Lcom/samsung/android/allshare/EventSync;->mArg1:I

    .line 575
    iput p3, v0, Lcom/samsung/android/allshare/EventSync;->mArg2:I

    .line 576
    iput-object p4, v0, Lcom/samsung/android/allshare/EventSync;->mStr:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/samsung/android/allshare/TVMessageListener;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    if-eqz v1, :cond_0

    .line 586
    invoke-interface {v1, v0}, Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;->controlEvent(Lcom/samsung/android/allshare/EventSync;)V

    goto :goto_0

    .line 588
    :cond_0
    const-string v1, "TVMessageListener"

    const-string v2, "EventListener is null !!!"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_0
    return-void
.end method

.method public whitelist test-api run()V
    .locals 15

    .line 601
    const-string v0, ""

    const-string v1, "TVMessageListener"

    const/4 v2, 0x0

    .line 602
    .local v2, "inStream":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 603
    return-void

    .line 604
    :cond_0
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 605
    return-void

    .line 608
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 609
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 615
    if-eqz v2, :cond_2

    .line 617
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 620
    :goto_0
    goto :goto_1

    .line 618
    :catch_0
    move-exception v3

    .line 619
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 629
    :cond_2
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_4

    .line 752
    if-eqz v3, :cond_3

    .line 753
    :try_start_3
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 755
    :catch_1
    move-exception v3

    .line 756
    .local v3, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 757
    .end local v3    # "e2":Ljava/io/IOException;
    :cond_3
    :goto_2
    nop

    .line 630
    :goto_3
    return-void

    .line 631
    :cond_4
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v3, p0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v4, v3

    .local v4, "nRecv":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TVMessageListener data received "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 647
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 649
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 650
    .local v3, "tvStatus":B
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 652
    .local v5, "targetLen":S
    const/16 v6, 0x200

    new-array v7, v6, [B

    .line 653
    .local v7, "srebuf":[B
    if-le v5, v6, :cond_5

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "targetLen = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is larger than MaxSize:512,discard is this pack."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 658
    goto :goto_4

    .line 660
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 664
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 665
    .local v8, "dataLen":S
    iget-object v10, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 667
    .local v10, "protocolId":S
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tvStatus :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " targetLen :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dataLen :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " protocolId :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_5

    .line 719
    :sswitch_0
    const-string v6, "IAPP_EXIT"

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 723
    .local v6, "exit":S
    const/16 v11, 0x12c

    invoke-virtual {p0, v11, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 724
    goto/16 :goto_5

    .line 692
    .end local v6    # "exit":S
    :sswitch_1
    const-string v6, "IAPP_STATUS"

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 694
    .local v6, "statusType":S
    iget-object v9, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 695
    .local v9, "statusVal":S
    const/16 v11, 0xc8

    invoke-virtual {p0, v11, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 696
    goto/16 :goto_5

    .line 735
    .end local v6    # "statusType":S
    .end local v9    # "statusVal":S
    :sswitch_2
    const-string v6, "IAPP_AUTHENTICATION_TIMEOUT"

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/16 v6, 0x65

    invoke-virtual {p0, v6, v9, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 737
    goto/16 :goto_5

    .line 727
    :sswitch_3
    const-string v6, "IAPP_AUTHENTICATION"

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 731
    .local v6, "authresponse":S
    const/16 v11, 0x64

    invoke-virtual {p0, v11, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 732
    goto/16 :goto_5

    .line 686
    .end local v6    # "authresponse":S
    :sswitch_4
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 687
    .local v6, "remoteType":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IAPP_REMOTE_INPUT_TYPE : remoteType :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/16 v11, 0xa

    invoke-virtual {p0, v11, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 689
    goto :goto_5

    .line 699
    .end local v6    # "remoteType":I
    :sswitch_5
    iget-object v11, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 700
    .local v11, "stringLength":S
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IAPP_KEYBOARD_SYNC : stringLength :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v7, v9, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 703
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v7, v9, v11}, Ljava/lang/String;-><init>([BII)V

    .line 705
    .local v12, "keySync":Ljava/lang/String;
    const-string v13, "AA=="

    invoke-virtual {v12, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x3

    if-eqz v13, :cond_6

    .line 706
    invoke-virtual {p0, v14, v11, v9, v0}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(IIILjava/lang/String;)V

    .line 707
    goto :goto_5

    .line 710
    :cond_6
    new-array v6, v6, [B

    .line 711
    .local v6, "sync":[B
    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    move-object v6, v13

    .line 713
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([B)V

    .line 715
    .local v13, "keySync2":Ljava/lang/String;
    invoke-virtual {p0, v14, v11, v9, v13}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(IIILjava/lang/String;)V

    .line 716
    goto :goto_5

    .line 672
    .end local v6    # "sync":[B
    .end local v11    # "stringLength":S
    .end local v12    # "keySync":Ljava/lang/String;
    .end local v13    # "keySync2":Ljava/lang/String;
    :sswitch_6
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 673
    .local v6, "response":S
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IAPP_REMOCON : response :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, v9, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 683
    nop

    .line 744
    .end local v6    # "response":S
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 746
    nop

    .end local v3    # "tvStatus":B
    .end local v5    # "targetLen":S
    .end local v7    # "srebuf":[B
    .end local v8    # "dataLen":S
    .end local v10    # "protocolId":S
    goto/16 :goto_4

    .line 752
    .end local v4    # "nRecv":I
    :cond_7
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v3, :cond_8

    .line 753
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 757
    :cond_8
    :goto_6
    goto :goto_7

    .line 755
    :catch_2
    move-exception v3

    .line 756
    .local v3, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 758
    .end local v3    # "e2":Ljava/io/IOException;
    goto :goto_7

    .line 751
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 747
    :catch_3
    move-exception v3

    .line 749
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 752
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_7
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v3, :cond_8

    .line 753
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    .line 761
    :goto_7
    return-void

    .line 752
    :goto_8
    :try_start_8
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v4, :cond_9

    .line 753
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 757
    :cond_9
    goto :goto_9

    .line 755
    :catch_4
    move-exception v4

    .line 756
    .local v4, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 758
    .end local v4    # "e2":Ljava/io/IOException;
    :goto_9
    throw v3

    .line 615
    :catchall_1
    move-exception v3

    goto :goto_b

    .line 610
    :catch_5
    move-exception v3

    .line 612
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 615
    if-eqz v2, :cond_a

    .line 617
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 620
    goto :goto_a

    .line 618
    :catch_6
    move-exception v4

    .line 619
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 613
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a
    :goto_a
    return-void

    .line 615
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b
    if-eqz v2, :cond_b

    .line 617
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 620
    goto :goto_c

    .line 618
    :catch_7
    move-exception v4

    .line 619
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 622
    .end local v4    # "e":Ljava/io/IOException;
    :cond_b
    :goto_c
    throw v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x3 -> :sswitch_5
        0xa -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setOnEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 514
    iput-object p1, p0, Lcom/samsung/android/allshare/TVMessageListener;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 515
    return-void
.end method

.method public blacklist stopThread()V
    .locals 0

    .line 596
    return-void
.end method
