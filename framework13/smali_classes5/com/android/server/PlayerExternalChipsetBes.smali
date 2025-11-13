.class public abstract Lcom/android/server/PlayerExternalChipsetBes;
.super Lcom/android/server/PlayerExternalChipsetBase;
.source "PlayerExternalChipsetBes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;
    }
.end annotation


# static fields
.field public static final blacklist FEATURE_SUPPORT_RDS:Z

.field public static final blacklist GET:I = 0xa2

.field public static final blacklist GET_CURRENT_CHANNEL:I = 0xd

.field public static final blacklist GET_CURRENT_FM_BAND:I = 0x3

.field public static final blacklist GET_CURRENT_FM_IC_INFO:I = 0x10

.field public static final blacklist GET_CURRENT_RSSI:I = 0x4

.field public static final blacklist GET_CURRENT_SEEKING_DC_THRESHOLD:I = 0xe

.field public static final blacklist GET_CURRENT_SEEKING_SPIKING_THRESHOLD:I = 0xf

.field public static final blacklist GET_CURRENT_SPACING:I = 0x5

.field public static final blacklist GET_CURRENT_VOLUME:I = 0x8

.field public static final blacklist GET_DATA_LENGTH:I = 0x2

.field public static final blacklist GET_FM_IC_NO:I = 0x1

.field public static final blacklist GET_FM_IC_POWER_ON_STATE:I = 0x2

.field public static final blacklist GET_FM_INDEX:I = 0x0

.field public static final blacklist GET_FM_PROTOCOL_VERSION:I = 0x12

.field public static final blacklist GET_FM_RECORDING_MODE_STATUS:I = 0x11

.field public static final blacklist GET_FORCED_MONO_STATE:I = 0x7

.field public static final blacklist GET_MUTE_STATE:I = 0x6

.field public static final blacklist GET_RDS_STATUS:I = 0xa

.field public static final blacklist QUERY:I = 0xa3

.field public static final blacklist QUERY_RESULT_FAIL:I = 0x0

.field public static final blacklist QUERY_RESULT_RDS:I = 0x3

.field public static final blacklist QUERY_RESULT_SEEK:I = 0x2

.field public static final blacklist QUERY_RESULT_TUNE:I = 0x1

.field public static final blacklist READ:I = 0xc0

.field public static final blacklist SET:I = 0xa1

.field public static final blacklist SET_CHANNEL:I = 0x9

.field public static final blacklist SET_CHAN_RSSI_TH:I = 0x2

.field public static final blacklist SET_CHAN_SPACING:I = 0x3

.field public static final blacklist SET_DATA_LENGTH:I = 0x1

.field public static final blacklist SET_DC_THRES:I = 0xb

.field public static final blacklist SET_FM_BAND:I = 0x1

.field public static final blacklist SET_FM_IC_POWER_OFF:I = 0x0

.field public static final blacklist SET_FM_IC_POWER_ON:I = 0x1

.field public static final blacklist SET_FM_IC_RECORDING_POWER_OFF:I = 0x0

.field public static final blacklist SET_FM_IC_RECORDING_POWER_ON:I = 0x1

.field public static final blacklist SET_MONO_MODE:I = 0x6

.field public static final blacklist SET_MUTE:I = 0x4

.field public static final blacklist SET_POWER_STATE:I = 0x0

.field public static final blacklist SET_RDS:I = 0xa

.field public static final blacklist SET_RECORDING_MODE:I = 0xe

.field public static final blacklist SET_SEEK_DOWN:I = 0x2

.field public static final blacklist SET_SEEK_START:I = 0x7

.field public static final blacklist SET_SEEK_STOP:I = 0x8

.field public static final blacklist SET_SEEK_UP:I = 0x1

.field public static final blacklist SET_SPIKE_THRES:I = 0xc

.field public static final blacklist SET_TEST_MODE:I = 0xd

.field public static final blacklist SET_TEST_MODE_OFF:I = 0x0

.field public static final blacklist SET_TEST_MODE_ON:I = 0x1

.field public static final blacklist SET_VOLUME:I = 0x5

.field public static final blacklist WRITE:I = 0x40


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field protected blacklist mCDCInterface:Landroid/hardware/usb/UsbInterface;

.field protected blacklist mCurrentRssi:J

.field protected blacklist mIsGettingRds:Z

.field protected blacklist mIsRDSEnabled:Z

.field private blacklist mIsRunning:Z

.field protected blacklist mIsScanning:Z

.field protected blacklist mSeekFreq:I

.field private blacklist notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

.field protected blacklist rdsParser:Lcom/android/server/RDSParser;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsRunning(Lcom/android/server/PlayerExternalChipsetBes;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsRunning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRunning(Lcom/android/server/PlayerExternalChipsetBes;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsRunning:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mqueryInfo(Lcom/android/server/PlayerExternalChipsetBes;)[B
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBes;->queryInfo()[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_SUPPORT_RDS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PlayerExternalChipsetBes;->FEATURE_SUPPORT_RDS:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBase;-><init>()V

    .line 15
    const-string v0, "FMRadioBestechnic"

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsRDSEnabled:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mSeekFreq:I

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCurrentRssi:J

    .line 78
    invoke-static {}, Lcom/android/server/RDSParser;->getInstance()Lcom/android/server/RDSParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    return-void
.end method

.method public static blacklist bytesToInt([B)I
    .locals 3
    .param p0, "data"    # [B

    .line 339
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 340
    const/4 v0, -0x1

    return v0

    .line 342
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 343
    .local v0, "ret":I
    return v0
.end method

.method private blacklist queryInfo()[B
    .locals 13

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 88
    .local v0, "buffer":[B
    const/4 v1, 0x0

    move v9, v1

    .local v9, "ret":I
    :goto_0
    array-length v1, v0

    if-ge v9, v1, :cond_0

    .line 89
    const/4 v1, -0x1

    aput-byte v1, v0, v9

    .line 88
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 91
    :cond_0
    sget-boolean v1, Lcom/android/server/PlayerExternalChipsetBes;->FEATURE_SUPPORT_RDS:Z

    if-nez v1, :cond_9

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "channel":I
    const/4 v2, 0x1

    .line 94
    .local v2, "running":Z
    const/4 v3, 0x0

    move v10, v2

    move v11, v3

    move v12, v9

    move v9, v1

    .end local v1    # "channel":I
    .end local v2    # "running":Z
    .local v9, "channel":I
    .local v10, "running":Z
    .local v11, "timeout":I
    .local v12, "ret":I
    :goto_1
    const/16 v1, 0x190

    if-ge v11, v1, :cond_8

    .line 95
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xc0

    const/16 v3, 0xa3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xfa0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v12

    .line 96
    const-wide/16 v1, 0x32

    invoke-virtual {p0, v1, v2}, Lcom/android/server/PlayerExternalChipsetBes;->threadSleep(J)V

    .line 97
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int v9, v1, v2

    .line 99
    const/4 v1, 0x1

    aget-byte v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 100
    const/16 v2, 0x12c

    if-ge v11, v2, :cond_5

    .line 101
    const/16 v11, 0x12c

    goto :goto_4

    .line 103
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsTuning:Z

    if-eqz v2, :cond_3

    .line 104
    aget-byte v2, v0, v3

    if-ne v2, v1, :cond_5

    .line 105
    iget v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCmdTuneFreq:I

    if-eq v9, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    move v10, v2

    goto :goto_4

    .line 107
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsSeeking:Z

    if-eqz v2, :cond_5

    .line 108
    aget-byte v2, v0, v3

    if-nez v2, :cond_5

    .line 109
    iget v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mPreviousTuneFreq:I

    if-ne v9, v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    move v10, v2

    .line 113
    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    iget-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsSeekTuneing:Z

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    move v10, v1

    .line 114
    if-nez v10, :cond_7

    .line 115
    goto :goto_6

    .line 94
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 117
    .end local v9    # "channel":I
    .end local v10    # "running":Z
    .end local v11    # "timeout":I
    :cond_8
    :goto_6
    goto :goto_7

    .line 118
    .end local v12    # "ret":I
    .local v9, "ret":I
    :cond_9
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xc0

    const/16 v3, 0xa3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xfa0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v12

    .line 119
    .end local v9    # "ret":I
    .restart local v12    # "ret":I
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/android/server/PlayerExternalChipsetBes;->threadSleep(J)V

    .line 121
    :goto_7
    if-lez v12, :cond_a

    move-object v1, v0

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    return-object v1
.end method


# virtual methods
.method public blacklist getCurrentRSSI()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCurrentRssi:J

    return-wide v0
.end method

.method protected blacklist initEndpointBes()V
    .locals 7

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interface Count - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " End ID - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMRadioBestechnic"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 130
    .local v0, "usbInterface":Landroid/hardware/usb/UsbInterface;
    if-eqz v0, :cond_5

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "claim HID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2, v0, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCDCInterface:Landroid/hardware/usb/UsbInterface;

    .line 135
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 136
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 137
    .local v3, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 145
    :pswitch_0
    const-string v4, "found USB endpoint the Type is  USB_ENDPOINT_XFER_INT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const-string v5, "endpoint.getEndpointNumber:"

    if-nez v4, :cond_1

    .line 147
    const-string v4, "found USB_DIR_OUT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v6, 0x80

    if-ne v4, v6, :cond_2

    .line 151
    const-string v4, "found USB_DIR_IN"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :pswitch_1
    goto :goto_1

    .line 141
    :pswitch_2
    goto :goto_1

    .line 139
    :pswitch_3
    nop

    .line 135
    .end local v3    # "endpoint":Landroid/hardware/usb/UsbEndpoint;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "j":I
    :cond_3
    goto :goto_2

    .line 159
    :cond_4
    const-string v2, "Cannot claim interface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist releaseInterfaceBes()V
    .locals 2

    .line 182
    const-string v0, "FMRadioBestechnic"

    const-string/jumbo v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCDCInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCDCInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCDCInterface:Landroid/hardware/usb/UsbInterface;

    .line 188
    :cond_0
    return-void
.end method

.method protected blacklist startNotifyThreadBes()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    invoke-direct {v0, p0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;-><init>(Lcom/android/server/PlayerExternalChipsetBes;)V

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    .line 167
    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->start()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsRunning:Z

    .line 169
    const-string v0, "FMRadioBestechnic"

    const-string/jumbo v1, "start Notify Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method protected blacklist startsWith([B[B)Z
    .locals 5
    .param p1, "data"    # [B
    .param p2, "param"    # [B

    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 304
    if-nez p2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 305
    :cond_1
    if-nez p2, :cond_2

    .line 306
    return v1

    .line 307
    :cond_2
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 308
    return v0

    .line 310
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 311
    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_4

    .line 312
    return v0

    .line 310
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v2    # "i":I
    :cond_5
    return v1
.end method

.method protected blacklist stopNotifyThreadBes()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->terminate()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    .line 177
    const-string v0, "FMRadioBestechnic"

    const-string v1, "Notify Thread is stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return-void
.end method

.method protected blacklist threadSleep(J)V
    .locals 3
    .param p1, "ms"    # J

    .line 322
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FMRadioBestechnic"

    const-string v2, "Thread sleep interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method protected blacklist toHex([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 332
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
