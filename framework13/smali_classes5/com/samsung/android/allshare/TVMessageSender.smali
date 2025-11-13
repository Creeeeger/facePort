.class Lcom/samsung/android/allshare/TVMessageSender;
.super Ljava/lang/Thread;
.source "IAppControlAPI.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TVMessageSender"


# instance fields
.field blacklist mBuf:Ljava/nio/ByteBuffer;

.field private blacklist mCIPORT:I

.field blacklist mControlAPI:Lcom/samsung/android/allshare/IAppControlAPI;

.field blacklist mDOutStream:Ljava/io/DataOutputStream;

.field public blacklist mDeviceClass:Ljava/lang/String;

.field blacklist mDeviceName:Ljava/lang/String;

.field public blacklist mExcutor:Ljava/util/concurrent/ExecutorService;

.field public blacklist mHandler:Landroid/os/Handler;

.field blacklist mLocalAddr:Ljava/lang/String;

.field blacklist mMacAddr:Ljava/lang/String;

.field blacklist mOutStream:Ljava/io/OutputStream;

.field blacklist mProtocol:I

.field private blacklist mRemoteAddr:Ljava/net/SocketAddress;

.field blacklist mServerIp:Ljava/lang/String;

.field public blacklist mSocket:Ljava/net/Socket;

.field blacklist mTargetDtvName:Ljava/lang/String;

.field blacklist mTargetName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/allshare/IAppControlAPI;)V
    .locals 2
    .param p1, "controlAPI"    # Lcom/samsung/android/allshare/IAppControlAPI;

    .line 849
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 768
    const/16 v0, 0x7e4

    iput v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mCIPORT:I

    .line 770
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mServerIp:Ljava/lang/String;

    .line 776
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mLocalAddr:Ljava/lang/String;

    .line 778
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mMacAddr:Ljava/lang/String;

    .line 780
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDeviceName:Ljava/lang/String;

    .line 782
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetName:Ljava/lang/String;

    .line 784
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDeviceClass:Ljava/lang/String;

    .line 786
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    .line 790
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mOutStream:Ljava/io/OutputStream;

    .line 792
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    .line 796
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mExcutor:Ljava/util/concurrent/ExecutorService;

    .line 798
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mControlAPI:Lcom/samsung/android/allshare/IAppControlAPI;

    .line 1343
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mHandler:Landroid/os/Handler;

    .line 852
    iput-object p1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mControlAPI:Lcom/samsung/android/allshare/IAppControlAPI;

    .line 853
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDeviceName:Ljava/lang/String;

    .line 854
    return-void
.end method

.method private blacklist createHandler()V
    .locals 1

    .line 1346
    new-instance v0, Lcom/samsung/android/allshare/TVMessageSender$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/TVMessageSender$1;-><init>(Lcom/samsung/android/allshare/TVMessageSender;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mHandler:Landroid/os/Handler;

    .line 1480
    return-void
.end method


# virtual methods
.method public blacklist closeSender()V
    .locals 4

    .line 869
    iget v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 871
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "TVMessageSender"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 880
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 884
    iput-object v1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    .line 885
    return-void
.end method

.method public blacklist initSender(Lcom/samsung/android/allshare/NetworkSocketInfo;)V
    .locals 6
    .param p1, "netinfo"    # Lcom/samsung/android/allshare/NetworkSocketInfo;

    .line 801
    iget v0, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mProtocol:I

    iput v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    .line 802
    iget-object v0, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mServerIp:Ljava/lang/String;

    .line 803
    iget v0, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mPort:I

    iput v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mCIPORT:I

    .line 804
    iget-object v0, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mDeviceClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDeviceClass:Ljava/lang/String;

    .line 805
    iget-object v0, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mMacAddr:Ljava/lang/String;

    const/16 v1, 0x3a

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mMacAddr:Ljava/lang/String;

    .line 807
    iget v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 808
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    const-string v2, ""

    const-string v3, "TVMessageSender"

    if-eqz v0, :cond_0

    .line 810
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 814
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    .line 817
    :cond_0
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    .line 819
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    .line 820
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mServerIp:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mCIPORT:I

    invoke-direct {v0, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mRemoteAddr:Ljava/net/SocketAddress;

    .line 823
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    const/16 v5, 0xbb8

    invoke-virtual {v4, v0, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 824
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    const-string v0, "initSender : mSocket is connected."

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 828
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mLocalAddr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 831
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mOutStream:Ljava/io/OutputStream;

    .line 832
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mOutStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 833
    :catch_1
    move-exception v0

    .line 835
    .local v0, "e1":Ljava/io/IOException;
    :try_start_3
    invoke-static {v3, v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 836
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_1
    goto :goto_2

    .line 839
    :cond_1
    const-string v0, "initSender : mSocket connecting is failed."

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 844
    :goto_2
    goto :goto_3

    .line 841
    :catch_2
    move-exception v0

    .line 843
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 847
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void
.end method

.method public whitelist test-api run()V
    .locals 0

    .line 858
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 861
    invoke-direct {p0}, Lcom/samsung/android/allshare/TVMessageSender;->createHandler()V

    .line 863
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 865
    return-void
.end method

.method public blacklist sendAuthentication()V
    .locals 14

    .line 918
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 919
    .local v0, "strBuffer":Ljava/lang/StringBuffer;
    const-string v1, "omnia.iapp.samsung"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 920
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    .line 924
    iget-object v1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mLocalAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "ipAddr64":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 931
    .local v3, "macAddr64":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, "deviceName64":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 938
    .local v5, "ipLen":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 939
    .local v6, "macLen":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 940
    .local v7, "nameLen":I
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 942
    .local v8, "targetLen":I
    add-int v9, v5, v6

    add-int/2addr v9, v7

    add-int/lit8 v9, v9, 0x8

    .line 943
    .local v9, "dataLen":I
    add-int v10, v9, v8

    add-int/lit8 v10, v10, 0x5

    .line 945
    .local v10, "packetLen":I
    iget-object v11, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 946
    iget-object v11, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 947
    iget-object v11, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v12, v8

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 948
    iget-object v11, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 949
    iget-object v11, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v12, v9

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 951
    const/16 v11, 0x64

    .line 952
    .local v11, "ProtocolID":S
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 954
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v13, v5

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 955
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 956
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v13, v6

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 957
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 958
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v13, v7

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 959
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 960
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 963
    :try_start_0
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v13, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v12, v13, v2, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 964
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    goto :goto_0

    .line 965
    :catch_0
    move-exception v2

    .line 967
    .local v2, "e":Ljava/io/IOException;
    const-string v12, "TVMessageSender"

    const-string v13, ""

    invoke-static {v12, v13, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 970
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 971
    return-void
.end method

.method public blacklist sendKeyboardEnd()V
    .locals 8

    .line 888
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 889
    return-void

    .line 892
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 893
    .local v0, "targetLen":I
    const/4 v1, 0x2

    .line 894
    .local v1, "dataLen":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x5

    .line 895
    .local v2, "packetLen":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDTVKeyboardEnd targetLen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TVMessageSender"

    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 898
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 899
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 900
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 901
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 903
    const/4 v3, 0x4

    .line 904
    .local v3, "ProtocolID":S
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 907
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v7, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7, v5, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 908
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    goto :goto_0

    .line 909
    :catch_0
    move-exception v5

    .line 911
    .local v5, "e":Ljava/io/IOException;
    const-string v6, ""

    invoke-static {v4, v6, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 913
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 914
    return-void
.end method

.method public blacklist sendKeyboardString(ILjava/lang/String;)V
    .locals 11
    .param p1, "encoding"    # I
    .param p2, "keycode"    # Ljava/lang/String;

    .line 1146
    const-string v0, ""

    const-string v1, "TVMessageSender"

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1147
    return-void

    .line 1150
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1151
    return-void

    .line 1153
    :cond_1
    if-nez p2, :cond_2

    .line 1154
    return-void

    .line 1156
    :cond_2
    const/4 v2, 0x0

    .line 1158
    .local v2, "keyCode64":Ljava/lang/String;
    :try_start_0
    const-string v3, "UNICODE"

    .line 1159
    .local v3, "strEncoding":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    .line 1160
    const-string v4, "UTF-8"

    move-object v3, v4

    goto :goto_0

    .line 1161
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 1162
    const-string v4, "UTF-16"

    move-object v3, v4

    .line 1167
    :cond_4
    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v4

    .line 1172
    .end local v3    # "strEncoding":Ljava/lang/String;
    nop

    .line 1174
    if-eqz v2, :cond_5

    .line 1175
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1176
    .local v3, "keyLen":I
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1177
    .local v4, "targetLen":I
    add-int/lit8 v6, v3, 0x4

    .line 1178
    .local v6, "dataLen":I
    add-int v7, v6, v4

    add-int/lit8 v7, v7, 0x5

    .line 1180
    .local v7, "packetLen":I
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1181
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1182
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v9, v4

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1184
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1185
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v9, v6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1186
    const/4 v8, 0x1

    .line 1187
    .local v8, "ProtocolID":S
    iget-object v9, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1190
    iget-object v9, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v10, v3

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1191
    iget-object v9, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1192
    iget-object v9, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1195
    :try_start_1
    iget-object v9, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v10, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v9, v10, v5, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1196
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1200
    goto :goto_1

    .line 1197
    :catch_0
    move-exception v5

    .line 1199
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1202
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1204
    .end local v3    # "keyLen":I
    .end local v4    # "targetLen":I
    .end local v6    # "dataLen":I
    .end local v7    # "packetLen":I
    .end local v8    # "ProtocolID":S
    :cond_5
    return-void

    .line 1168
    :catch_1
    move-exception v3

    .line 1170
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1171
    return-void
.end method

.method public blacklist sendMouseCreate()V
    .locals 7

    .line 1250
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1251
    return-void

    .line 1254
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1255
    .local v0, "targetLen":I
    const/4 v1, 0x2

    .line 1256
    .local v1, "dataLen":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x5

    .line 1259
    .local v2, "packetLen":I
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1260
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1261
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1262
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1263
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1265
    const/16 v3, 0xf

    .line 1266
    .local v3, "ProtocolID":S
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1269
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1270
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    goto :goto_0

    .line 1271
    :catch_0
    move-exception v4

    .line 1273
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1275
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1276
    return-void
.end method

.method public blacklist sendMouseDestroy()V
    .locals 7

    .line 1279
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1280
    return-void

    .line 1283
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1284
    .local v0, "targetLen":I
    const/4 v1, 0x2

    .line 1285
    .local v1, "dataLen":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x5

    .line 1288
    .local v2, "packetLen":I
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1289
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1290
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1291
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1292
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1294
    const/16 v3, 0x10

    .line 1295
    .local v3, "ProtocolID":S
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1298
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1299
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    goto :goto_0

    .line 1300
    :catch_0
    move-exception v4

    .line 1301
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1303
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1304
    return-void
.end method

.method public blacklist sendMouseProcess(IIIIII)V
    .locals 7
    .param p1, "eventType"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "Button"    # I

    .line 1307
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1308
    return-void

    .line 1312
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1313
    .local v0, "targetLen":I
    const/16 v1, 0x1a

    .line 1314
    .local v1, "dataLen":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x5

    .line 1316
    .local v2, "packetLen":I
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1317
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1318
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1319
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1320
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1322
    const/16 v3, 0x11

    .line 1323
    .local v3, "ProtocolID":S
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1325
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1326
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1327
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1328
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1329
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1330
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1331
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1334
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1335
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    goto :goto_0

    .line 1336
    :catch_0
    move-exception v4

    .line 1337
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1339
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1341
    return-void
.end method

.method public blacklist sendRemoteControlKey(Ljava/lang/String;I)V
    .locals 9
    .param p1, "keycode"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1103
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    return-void

    .line 1109
    :cond_1
    if-nez p1, :cond_2

    .line 1110
    return-void

    .line 1113
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "keyCode64":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1116
    .local v2, "keyLen":I
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 1117
    .local v3, "targetLen":I
    add-int/lit8 v4, v2, 0x5

    .line 1118
    .local v4, "dataLen":I
    add-int v5, v4, v3

    add-int/lit8 v5, v5, 0x5

    .line 1120
    .local v5, "packetLen":I
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1121
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1122
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v7, v3

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1123
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1125
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v7, v4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1126
    const/4 v6, 0x0

    .line 1127
    .local v6, "ProtocolID":S
    iget-object v7, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1129
    iget-object v7, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-byte v8, p2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1130
    iget-object v7, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v8, v2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1131
    iget-object v7, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1132
    iget-object v7, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1135
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8, v1, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1136
    iget-object v1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    goto :goto_0

    .line 1137
    :catch_0
    move-exception v1

    .line 1139
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "TVMessageSender"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1142
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1143
    return-void
.end method

.method public blacklist sendTouchGestureEvent(SSBB)V
    .locals 7
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "dx"    # B
    .param p4, "dy"    # B

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1061
    return-void

    .line 1064
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1065
    .local v0, "targetLen":I
    const/16 v1, 0xe

    .line 1066
    .local v1, "dataLen":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x5

    .line 1072
    .local v2, "packetLen":I
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1073
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1074
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1075
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1076
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1079
    const/4 v3, 0x5

    .line 1080
    .local v3, "ProtocolID":S
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1082
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/16 v6, -0xc

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1083
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1084
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1085
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1086
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    neg-int v6, p3

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1087
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1088
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1091
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1092
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    goto :goto_0

    .line 1093
    :catch_0
    move-exception v4

    .line 1095
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1097
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1099
    return-void
.end method

.method public blacklist sendTouchGestureSemanticEvent(IIIII)V
    .locals 7
    .param p1, "eventType"    # I
    .param p2, "distance"    # I
    .param p3, "degree"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 976
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 977
    return-void

    .line 980
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 981
    .local v0, "targetLen":I
    const/16 v1, 0x16

    .line 982
    .local v1, "dataLen":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x5

    .line 984
    .local v2, "packetLen":I
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 985
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 986
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 987
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 988
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 990
    const/16 v3, 0x8

    .line 991
    .local v3, "ProtocolID":S
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 994
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 995
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 996
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 997
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 998
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1000
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1003
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1004
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    goto :goto_0

    .line 1005
    :catch_0
    move-exception v4

    .line 1007
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1009
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1011
    return-void
.end method

.method public blacklist sendTouchGuestureEvent2012(IIIIIII)V
    .locals 7
    .param p1, "eventType"    # I
    .param p2, "accellevel"    # I
    .param p3, "fingerid"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "dx"    # I
    .param p7, "dy"    # I

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1016
    return-void

    .line 1019
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1020
    .local v0, "targetLen":I
    const/16 v1, 0x1e

    .line 1021
    .local v1, "dataLen":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x5

    .line 1023
    .local v2, "packetLen":I
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1024
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1025
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1026
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1027
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1029
    const/4 v3, 0x7

    .line 1030
    .local v3, "ProtocolID":S
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1033
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1034
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1035
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1036
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1037
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1038
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1039
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1043
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1046
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1047
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    goto :goto_0

    .line 1048
    :catch_0
    move-exception v4

    .line 1050
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1052
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1054
    return-void
.end method

.method public blacklist setTouchGestureTouchMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .line 1211
    iget-object v0, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1212
    return-void

    .line 1216
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1217
    .local v0, "targetLen":I
    const/4 v1, 0x6

    .line 1218
    .local v1, "dataLen":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x5

    .line 1224
    .local v2, "packetLen":I
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1225
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1226
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1227
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1228
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1231
    const/16 v3, 0xb

    .line 1232
    .local v3, "ProtocolID":S
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1235
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1236
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1239
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1240
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    goto :goto_0

    .line 1241
    :catch_0
    move-exception v4

    .line 1243
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1245
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1247
    return-void
.end method
