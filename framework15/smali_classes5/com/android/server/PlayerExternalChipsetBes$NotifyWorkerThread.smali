.class Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;
.super Ljava/lang/Thread;
.source "PlayerExternalChipsetBes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PlayerExternalChipsetBes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyWorkerThread"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/PlayerExternalChipsetBes;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/PlayerExternalChipsetBes;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    const-string p1, "FMNotifyWorkerThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist verifyInfo([B)I
    .locals 12

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    aput-byte v1, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x8

    aput-byte v4, v0, v3

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    const/4 v6, 0x4

    aput-byte v1, v0, v6

    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v7, p1, v0}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v7, v7, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v7

    if-eq v7, v3, :cond_c

    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBes;->-$$Nest$mqueryInfo(Lcom/android/server/PlayerExternalChipsetBes;)[B

    move-result-object v7

    const-string v8, "FMRadioBestechnic"

    if-eqz v7, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buffer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v10, v7}, Lcom/android/server/PlayerExternalChipsetBes;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v7, :cond_1

    return v1

    :cond_1
    const-string/jumbo v9, "has result"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v10, v3, [B

    fill-array-data v10, :array_0

    invoke-virtual {v9, v7, v10}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v9

    const v10, 0xffff

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v11, v3, [B

    fill-array-data v11, :array_1

    invoke-virtual {v9, v7, v11}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v11, v3, [B

    fill-array-data v11, :array_2

    invoke-virtual {v9, v7, v11}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v11, v3, [B

    fill-array-data v11, :array_3

    invoke-virtual {v9, v7, v11}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v2, v2, [B

    aput-byte v3, v2, v1

    invoke-virtual {v4, v7, v2}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-boolean v2, v2, Lcom/android/server/PlayerExternalChipsetBes;->mIsRDSEnabled:Z

    if-eqz v2, :cond_c

    :cond_4
    new-instance v1, Lcom/android/server/ExtRDSData;

    invoke-direct {v1, v7}, Lcom/android/server/ExtRDSData;-><init>([B)V

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v2, v2, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v2, v1}, Lcom/android/server/RDSParser;->parseData(Lcom/android/server/ExtRDSData;)V

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v2, v2, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v2}, Lcom/android/server/RDSParser;->isRDSDataValid()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RDSDataValid, PS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v3, v3, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v3}, Lcom/android/server/RDSParser;->getProgramService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - RT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v3, v3, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v3}, Lcom/android/server/RDSParser;->getRadioText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/FMPlayerNativeBase$RDSData;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBes;->getTunedFrequency()I

    move-result v3

    int-to-long v3, v3

    iget-object v6, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v6, v6, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v6}, Lcom/android/server/RDSParser;->getProgramService()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v9, v9, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v9}, Lcom/android/server/RDSParser;->getRadioText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v3, v4, v6, v9}, Lcom/android/server/FMPlayerNativeBase$RDSData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNativeBase$RDSData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v3, v3, Lcom/android/server/PlayerExternalChipsetBes;->mService:Lcom/android/server/FMRadioService;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    :cond_5
    return v5

    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    invoke-virtual {v1, v7, v2}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "seek fail"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    aget-byte v1, v7, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v7, v5

    shl-int/2addr v2, v4

    and-int/2addr v2, v10

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    aget-byte v4, v7, v6

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/android/server/PlayerExternalChipsetBes;->mCurrentRssi:J

    const/16 v2, 0x2a30

    if-gt v1, v2, :cond_8

    const/16 v2, 0x21fc

    if-ge v1, v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/PlayerExternalChipsetBes;->mSeekFreq:I

    :cond_9
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iput v1, v2, Lcom/android/server/PlayerExternalChipsetBes;->mSeekFreq:I

    :goto_1
    return v3

    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v9, v3, [B

    fill-array-data v9, :array_5

    invoke-virtual {v1, v7, v9}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "tune fail"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    aget-byte v1, v7, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v3, v7, v5

    shl-int/2addr v3, v4

    and-int/2addr v3, v10

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    aget-byte v4, v7, v6

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/android/server/PlayerExternalChipsetBes;->mCurrentRssi:J

    :goto_3
    return v2

    :cond_c
    return v1

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    const-string/jumbo v0, "notify thread is running"

    const-string v1, "FMRadioBestechnic"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v0, v0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    new-array v2, v0, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-boolean v5, v5, Lcom/android/server/PlayerExternalChipsetBes;->mIsRDSEnabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBes;->-$$Nest$fgetmIsRunning(Lcom/android/server/PlayerExternalChipsetBes;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v5, v5, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v6, v6, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v2, v0, v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    if-gez v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x32

    if-ne v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v5, v5, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v5}, Lcom/android/server/PlayerExternalChipsetBes;->releaseInterfaceBes()V

    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v5}, Lcom/android/server/PlayerExternalChipsetBes;->initEndpointBes()V

    goto :goto_3

    :cond_3
    if-lez v3, :cond_4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received NOTIFY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v6, v2}, Lcom/android/server/PlayerExternalChipsetBes;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->verifyInfo([B)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string/jumbo v7, "rds segment complete"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iput-boolean v5, v7, Lcom/android/server/PlayerExternalChipsetBes;->mIsGettingRds:Z

    goto :goto_3

    :pswitch_1
    const-string/jumbo v7, "seek or tune complete"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iput-boolean v5, v7, Lcom/android/server/PlayerExternalChipsetBes;->mIsSeekTuneing:Z

    goto :goto_3

    :pswitch_2
    const-string/jumbo v5, "no result complete"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v6, v7}, Lcom/android/server/PlayerExternalChipsetBes;->threadSleep(J)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist terminate()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/PlayerExternalChipsetBes;->-$$Nest$fputmIsRunning(Lcom/android/server/PlayerExternalChipsetBes;Z)V

    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->interrupt()V

    :cond_0
    return-void
.end method
