.class public Lcom/android/server/PlayerExternalChipsetBesRichwave;
.super Lcom/android/server/PlayerExternalChipsetBes;
.source "PlayerExternalChipsetBesRichwave.java"

# interfaces
.implements Lcom/android/server/RichwaveTuningParameteres;


# static fields
.field private static final blacklist SEEKTUNE_TIMEOUT:I = 0x834

.field private static final blacklist TAG:Ljava/lang/String; = "FMRadioExtRichwave"


# instance fields
.field private blacklist isThreadRunning:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mNeedOnTestMode:Z

.field private blacklist mNeedToStopSeek:Z

.field private blacklist registerList:[I

.field private blacklist restoreRdsForScan:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/server/FMRadioService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/FMRadioService;

    .line 29
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBes;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mNeedOnTestMode:Z

    .line 101
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->registerList:[I

    .line 30
    iput-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mService:Lcom/android/server/FMRadioService;

    .line 32
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x7
        0x8
        0x9
        0xa
        0xb
        0x10
        0x12
        0x13
        0x14
        0x15
        0x2b
        0x2c
        0x2d
    .end array-data
.end method

.method private blacklist closeConnection()V
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->isThreadRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 792
    return-void
.end method

.method private blacklist getFMICDebugInfo(I)V
    .locals 9
    .param p1, "register"    # I

    .line 832
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 833
    .local v0, "get_fmic_info_cmd":[B
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xc0

    const/16 v3, 0xa2

    const/16 v4, 0x10

    const/4 v7, 0x2

    const/16 v8, 0xfa0

    move v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 834
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFMICDebugInfo: register: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 835
    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 795
    const-string v0, "FMRadioExtRichwave"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void
.end method

.method private blacklist openConnection()Z
    .locals 5

    .line 740
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 741
    const-string v0, "can\'t open connection"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 742
    return v1

    .line 744
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->isThreadRunning:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 745
    const-string/jumbo v0, "thread is running, already open connection"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 746
    return v2

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 749
    const-string v0, "log request to grant permission"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    const-string v4, "com.sec.android.app.fm"

    invoke-virtual {v0, v3, v4}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 753
    const-string/jumbo v0, "permission not granted"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 754
    return v1

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 757
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method private blacklist printFMICInfo()V
    .locals 3

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->registerList:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 105
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getFMICDebugInfo(I)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private declared-synchronized blacklist seekTune(II)V
    .locals 16
    .param p1, "cmd"    # I
    .param p2, "value"    # I

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v10, p2

    monitor-enter p0

    .line 255
    const/16 v11, 0x9

    const/4 v12, 0x1

    if-ne v0, v11, :cond_0

    .line 256
    :try_start_0
    iput-boolean v12, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsTuning:Z

    .line 257
    iput v10, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mCmdTuneFreq:I

    goto :goto_0

    .line 259
    .end local p0    # "this":Lcom/android/server/PlayerExternalChipsetBesRichwave;
    :cond_0
    iput-boolean v12, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeeking:Z

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getTunedFrequency()I

    move-result v2

    iput v2, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mPreviousTuneFreq:I

    .line 262
    :goto_0
    iget-boolean v2, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v2}, Lcom/android/server/RDSParser;->reset()V

    .line 265
    :cond_1
    const/4 v2, 0x0

    .line 266
    .local v2, "needRestoreRds":Z
    iput-boolean v12, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    .line 267
    iget-boolean v3, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    const/4 v13, 0x0

    if-nez v3, :cond_3

    .line 268
    invoke-virtual {v1, v13}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startNotifyThread(Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 269
    monitor-exit p0

    return-void

    .line 270
    .restart local p0    # "this":Lcom/android/server/PlayerExternalChipsetBesRichwave;
    :cond_2
    :try_start_1
    iget-boolean v3, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    if-eqz v3, :cond_3

    .line 271
    const/4 v2, 0x1

    .line 272
    invoke-virtual {v1, v13}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->setRdsEnable(Z)Z

    move v14, v2

    goto :goto_1

    .line 278
    .end local p0    # "this":Lcom/android/server/PlayerExternalChipsetBesRichwave;
    :cond_3
    move v14, v2

    .end local v2    # "needRestoreRds":Z
    .local v14, "needRestoreRds":Z
    :goto_1
    new-array v2, v12, [B

    const/4 v3, -0x1

    aput-byte v3, v2, v13

    move-object v15, v2

    .line 279
    .local v15, "seektune_cmd":[B
    iget-object v2, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v3, 0xc0

    const/16 v4, 0xa1

    const/4 v8, 0x1

    const/16 v9, 0xfa0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v15

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    .line 280
    .local v2, "ret":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v15}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, "timeOutCnt":I
    :cond_4
    iget-boolean v4, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    const/4 v5, 0x7

    if-eqz v4, :cond_5

    .line 283
    add-int/lit8 v3, v3, 0x1

    .line 285
    const-wide/16 v6, 0xa

    invoke-virtual {v1, v6, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 286
    const/16 v4, 0x834

    if-ne v3, v4, :cond_4

    .line 287
    iput-boolean v13, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    .line 288
    if-ne v0, v5, :cond_5

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopSeek()Z

    .line 294
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v5, :cond_6

    const-string/jumbo v5, "seek"

    goto :goto_2

    :cond_6
    const-string/jumbo v5, "tune"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 297
    if-ne v0, v11, :cond_7

    .line 298
    iput-boolean v13, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsTuning:Z

    .line 299
    iget-boolean v4, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mNeedToStopSeek:Z

    if-eqz v4, :cond_8

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopSeekExecute()Z

    .line 301
    iput-boolean v13, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mNeedToStopSeek:Z

    goto :goto_3

    .line 304
    :cond_7
    iput-boolean v13, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeeking:Z

    .line 307
    :cond_8
    :goto_3
    iget-boolean v4, v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    if-nez v4, :cond_a

    .line 308
    if-eqz v14, :cond_9

    invoke-virtual {v1, v12}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->setRdsEnable(Z)Z

    .line 309
    :cond_9
    invoke-virtual {v1, v13}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopNotifyThread(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :cond_a
    monitor-exit p0

    return-void

    .line 254
    .end local v2    # "ret":I
    .end local v3    # "timeOutCnt":I
    .end local v14    # "needRestoreRds":Z
    .end local v15    # "seektune_cmd":[B
    .end local p1    # "cmd":I
    .end local p2    # "value":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist setTestMode(I)V
    .locals 11
    .param p1, "testMode"    # I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTestMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 112
    .local v0, "test_mode":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa1

    const/16 v6, 0xd

    const/4 v9, 0x1

    const/16 v10, 0xfa0

    move v7, p1

    move-object v8, v0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 113
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test_mode ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 114
    const-wide/16 v2, 0x14

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 115
    return-void
.end method

.method private blacklist stopSeekExecute()Z
    .locals 12

    .line 324
    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 325
    iput-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    .line 327
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeeking:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 328
    return v2

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    iput-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    .line 332
    return v1

    .line 335
    :cond_2
    new-array v0, v2, [B

    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 336
    .local v0, "seek_stop":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v11, 0xc8

    move-object v9, v0

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 337
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seek_stop ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 338
    const-wide/16 v4, 0x32

    invoke-virtual {p0, v4, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 339
    iget-boolean v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeeking:Z

    if-eqz v4, :cond_3

    .line 340
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getTunedFrequency()I

    move-result v4

    iput v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mSeekFreq:I

    .line 342
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    .line 343
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 344
    const-string/jumbo v4, "stopSeek is done"

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 345
    if-lez v3, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public static blacklist toASCII([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .line 820
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 822
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 823
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    .line 824
    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 822
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist destruct()V
    .locals 1

    .line 598
    const-string v0, "destruct"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 603
    :cond_0
    return-void
.end method

.method public blacklist getBand()I
    .locals 11

    .line 496
    const-string v0, "getBand"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 498
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 499
    .local v2, "get_band_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 500
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_band_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 502
    if-ne v3, v0, :cond_1

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get_band_cmd[0]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - get_band_cmd[1]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 504
    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result v0

    return v0

    .line 507
    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getChannelSpacing()I
    .locals 11

    .line 527
    const-string v0, "getChannelSpacing"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 529
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 530
    .local v2, "get_spacing_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 531
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_spacing_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 533
    if-ne v3, v0, :cond_1

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get_spacing_cmd[0]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - get_spacing_cmd[1]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 535
    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result v0

    return v0

    .line 538
    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getCntThreshold()I
    .locals 1

    .line 80
    const-string v0, "getCntThreshold"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDEConstant()I
    .locals 1

    .line 550
    const-string v0, "getDEConstant"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFirmwareVersion()Ljava/lang/String;
    .locals 17

    .line 799
    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 800
    .local v1, "getFWVersion":[B
    const/16 v10, 0x40

    .line 801
    .local v10, "bmRequestType":I
    const/4 v11, 0x6

    .line 802
    .local v11, "bRequest":I
    const/4 v12, 0x0

    .line 803
    .local v12, "wValue":I
    const/4 v13, 0x0

    .line 804
    .local v13, "wIndex":I
    const/16 v14, 0x190

    .line 805
    .local v14, "timeout":I
    iget-object v2, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v8, v1

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v1

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v15

    .line 806
    .local v15, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirmwareVersion getFirmwareVersion SEND ascii = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 807
    const/16 v2, 0xe

    new-array v9, v2, [B

    .line 808
    .local v9, "buffer":[B
    const/16 v10, 0xc0

    .line 809
    const/16 v11, 0xc

    .line 812
    const/16 v14, 0x190

    .line 813
    iget-object v2, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v8, v9

    move v3, v10

    move v4, v11

    move-object v7, v9

    move-object/from16 v16, v9

    .end local v9    # "buffer":[B
    .local v16, "buffer":[B
    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    .line 814
    .end local v15    # "ret":I
    .local v2, "ret":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, "version":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirmwareVersion getFirmwareVersion BACK ascii = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 816
    return-object v3

    nop

    :array_0
    .array-data 1
        0x51t
        0x55t
        0x45t
        0x52t
        0x59t
        0x5ft
        0x53t
        0x57t
        0x5ft
        0x56t
        0x45t
        0x52t
    .end array-data
.end method

.method public blacklist getIntTuningParameter(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 568
    const-string v0, "getIntTuningParameter"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLongTuningParameter(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 580
    const-string v0, "getLongTuningParameter"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 581
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getRssiThreshold()I
    .locals 11

    .line 47
    const-string v0, "getRssiThreshold"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 50
    .local v2, "get_rssith_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 51
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_rssith_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 53
    if-ne v3, v0, :cond_1

    .line 54
    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result v0

    return v0

    .line 56
    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getSeekDC()I
    .locals 11

    .line 658
    const-string v0, "getSeekDC"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 660
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 661
    .local v2, "get_dc_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 662
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_dc_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 663
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 664
    if-ne v3, v0, :cond_1

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get_dc_cmd[0]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - get_dc_cmd[1]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 666
    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result v0

    return v0

    .line 669
    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getSeekQA()I
    .locals 11

    .line 625
    const-string v0, "getSeekQA"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 626
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 627
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 628
    .local v2, "get_qa_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 629
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_qa_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 631
    if-ne v3, v0, :cond_1

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get_qa_cmd[0]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - get_qa_cmd[1]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 633
    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result v0

    return v0

    .line 635
    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getSnrThreshold()I
    .locals 1

    .line 67
    const-string/jumbo v0, "setSnrThreshold"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSoundMode()Z
    .locals 11

    .line 410
    const-string v0, "getSoundMode"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 412
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 413
    .local v2, "get_soundmode_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 414
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_soundmode_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 416
    if-ne v3, v0, :cond_1

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data[0]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " - data[1]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x1

    aget-byte v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 418
    new-array v0, v4, [B

    aput-byte v4, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v0

    return v0

    .line 420
    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getStringTuningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 592
    const-string v0, "getStringTuningParameter"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTunedFrequency()I
    .locals 11

    .line 227
    const-string v0, "getTunedFrequency"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 229
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 230
    .local v2, "get_tune_freq_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 231
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTunedFrequency ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 233
    if-ne v3, v0, :cond_1

    .line 234
    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result v0

    return v0

    .line 237
    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getVolume()I
    .locals 11

    .line 372
    const-string v0, "getVolume"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 374
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 375
    .local v2, "get_volume_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 376
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_volume_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 378
    if-ne v3, v0, :cond_1

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_volume_cmd[0]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - get_volume_cmd[1]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 380
    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result v0

    return v0

    .line 383
    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist init(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 87
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 92
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUsbDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsTuning:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    .line 99
    :goto_0
    return-void
.end method

.method public blacklist initTuningParameters()V
    .locals 1

    .line 557
    const-string v0, "initTuningParameters"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public blacklist isAfEnabled()Z
    .locals 1

    .line 474
    const-string v0, "isAfEnabled"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOn()Z
    .locals 15

    .line 202
    const-string v0, "isOn"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 204
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 206
    .local v2, "fm_state_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 207
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fm_state_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ascii: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 209
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 210
    .local v0, "recording_status_cmd":[B
    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v8, 0xc0

    const/16 v9, 0xa2

    const/16 v10, 0x11

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v12, v0

    invoke-virtual/range {v7 .. v14}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recording_status_cmd ret: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 214
    const/4 v4, 0x1

    new-array v5, v4, [B

    aput-byte v4, v5, v1

    invoke-virtual {p0, v2, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    new-array v5, v4, [B

    aput-byte v4, v5, v1

    invoke-virtual {p0, v0, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    return v1

    .line 215
    :cond_2
    :goto_0
    return v4

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist isRdsEnabled()Z
    .locals 11

    .line 452
    const-string v0, "isRdsEnabled"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 454
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 455
    .local v2, "is_rdsenabled_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 456
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_rdsenabled_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 458
    if-ne v3, v0, :cond_1

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data[0]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " - data[1]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x1

    aget-byte v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 460
    new-array v0, v4, [B

    aput-byte v4, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v0

    return v0

    .line 462
    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist muteOff()V
    .locals 12

    .line 686
    const-string v0, "muteOff"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    const/4 v0, 0x0

    .line 689
    .local v0, "MUTE_OFF":I
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 690
    .local v1, "mute_off_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move-object v9, v1

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    .line 691
    .local v2, "ret":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mute_off_cmd ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 692
    const-wide/16 v3, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 693
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 694
    return-void
.end method

.method public blacklist muteOn()V
    .locals 12

    .line 674
    const-string v0, "muteOn"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 675
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 676
    :cond_0
    const/4 v0, 0x1

    .line 677
    .local v0, "MUTE_ON":I
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 678
    .local v1, "mute_on_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move-object v9, v1

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    .line 679
    .local v2, "ret":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mute_on_cmd ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 680
    const-wide/16 v3, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 681
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 682
    return-void
.end method

.method public blacklist off()Z
    .locals 19

    .line 162
    move-object/from16 v0, p0

    const-string v1, "off"

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 168
    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, -0x1

    aput-byte v4, v3, v1

    .line 169
    .local v3, "off_fm_cmd":[B
    iget-object v5, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v6, 0xc0

    const/16 v7, 0xa1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xfa0

    move-object v10, v3

    invoke-virtual/range {v5 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    .line 170
    .local v4, "ret":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "off_fm_cmd ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", ascii: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 171
    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 172
    const-string v5, "off set power state done"

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 175
    new-array v5, v2, [B

    .line 176
    .local v5, "set_record_cmd":[B
    iget-object v10, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v11, 0xc0

    const/16 v12, 0xa1

    const/16 v13, 0xe

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xfa0

    move-object v15, v5

    invoke-virtual/range {v10 .. v17}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_record_cmd ret: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, v8, v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 181
    const/4 v8, 0x2

    new-array v9, v8, [B

    fill-array-data v9, :array_0

    .line 183
    .local v9, "fm_state_cmd":[B
    iget-object v10, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v11, 0xc0

    const/16 v12, 0xa2

    const/4 v13, 0x2

    const/16 v16, 0x2

    move-object v15, v9

    invoke-virtual/range {v10 .. v17}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fm_state_cmd ret: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 187
    new-array v8, v8, [B

    .line 188
    .local v8, "recording_status_cmd":[B
    iget-object v11, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v12, 0xc0

    const/16 v13, 0xa2

    const/16 v14, 0x11

    const/4 v15, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "recording_status_cmd ret: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 193
    new-array v6, v2, [B

    aput-byte v1, v6, v1

    invoke-virtual {v0, v9, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v6, v2, [B

    aput-byte v1, v6, v1

    invoke-virtual {v0, v8, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    return v2

    .line 197
    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist on()Z
    .locals 21

    .line 119
    move-object/from16 v0, p0

    const-string v1, "on"

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "isOn":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 123
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getFirmwareVersion()Ljava/lang/String;

    .line 124
    const/4 v2, 0x2

    new-array v12, v2, [B

    .line 125
    .local v12, "recording_status_cmd":[B
    iget-object v4, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa2

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v9, v12

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    .line 126
    .local v4, "ret":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recording_status_cmd ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v12}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", ascii: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v12}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 127
    const/4 v5, 0x1

    new-array v8, v5, [B

    aput-byte v5, v8, v3

    invoke-virtual {v0, v12, v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 128
    const-string v2, "Do not turn on FM in playback mode cause current mode are recording"

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 129
    return v3

    .line 131
    :cond_1
    new-array v8, v2, [B

    .line 132
    .local v8, "buffer":[B
    iget-object v13, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v14, 0xc0

    const/16 v15, 0xa2

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v18, v8

    invoke-virtual/range {v13 .. v20}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ret: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 134
    if-ne v4, v2, :cond_2

    new-array v9, v5, [B

    aput-byte v5, v9, v3

    invoke-virtual {v0, v8, v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 135
    new-array v9, v5, [B

    const/4 v10, -0x1

    aput-byte v10, v9, v3

    .line 136
    .local v9, "open_fm_cmd":[B
    const-string v10, "on set power state begin"

    invoke-static {v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 138
    iget-object v13, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v14, 0xc0

    const/16 v15, 0xa1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x1

    const/16 v20, 0xfa0

    move-object/from16 v18, v9

    invoke-virtual/range {v13 .. v20}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    .line 139
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "open_fm_cmd ret: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 140
    const-wide/16 v10, 0x14

    invoke-virtual {v0, v10, v11}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 141
    const-string v10, "on set power state done"

    invoke-static {v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 143
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 145
    .local v2, "fm_state_cmd":[B
    iget-object v13, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v15, 0xa2

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v19, 0x2

    move-object/from16 v18, v2

    invoke-virtual/range {v13 .. v20}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    .line 146
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fm_state_cmd ret: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 147
    new-array v6, v5, [B

    aput-byte v5, v6, v3

    invoke-virtual {v0, v2, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    const/4 v1, 0x1

    .line 156
    .end local v2    # "fm_state_cmd":[B
    .end local v9    # "open_fm_cmd":[B
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 157
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist searchAll()J
    .locals 2

    .line 350
    const-string/jumbo v0, "searchAll"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->seekUp()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist seekDown()J
    .locals 2

    .line 249
    const-string/jumbo v0, "seekDown"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x7

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->seekTune(II)V

    .line 251
    iget v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mSeekFreq:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist seekUp()J
    .locals 2

    .line 242
    const-string/jumbo v0, "seekUp"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->seekTune(II)V

    .line 244
    iget v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mSeekFreq:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist setAfEnable(Z)Z
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 467
    const-string/jumbo v0, "setAfEnable"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBand(I)Z
    .locals 12
    .param p1, "band"    # I

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 483
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 484
    .local v2, "set_band_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/4 v7, 0x1

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move v8, p1

    move-object v9, v2

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 485
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_band_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 487
    const-wide/16 v4, 0xf

    invoke-virtual {p0, v4, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 488
    if-ne v3, v0, :cond_1

    new-array v4, v0, [B

    aput-byte v1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    return v0

    .line 491
    :cond_1
    return v1
.end method

.method public blacklist setChannelSpacing(I)Z
    .locals 12
    .param p1, "spacing"    # I

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChannelSpacing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 514
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 515
    .local v2, "set_space_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move v8, p1

    move-object v9, v2

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 516
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_space_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 518
    const-wide/16 v4, 0xf

    invoke-virtual {p0, v4, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 519
    if-ne v3, v0, :cond_1

    new-array v4, v0, [B

    aput-byte v1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 520
    return v0

    .line 522
    :cond_1
    return v1
.end method

.method public blacklist setCntThreshold(I)V
    .locals 1
    .param p1, "rssiThreshold"    # I

    .line 74
    const-string/jumbo v0, "setSnrThreshold"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public blacklist setDEConstant(I)Z
    .locals 1
    .param p1, "constant"    # I

    .line 543
    const-string/jumbo v0, "setDEConstant"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setIntTuningParameter(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 562
    const-string/jumbo v0, "setIntTuningParameter"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public blacklist setLongTuningParameter(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 574
    const-string/jumbo v0, "setLongTuningParameter"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public blacklist setRdsEnable(Z)Z
    .locals 12
    .param p1, "isEnabled"    # Z

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRdsEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 426
    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RDS already "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 428
    return v1

    .line 430
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    .line 431
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 432
    :cond_1
    new-array v0, v1, [B

    const/4 v3, -0x1

    aput-byte v3, v0, v2

    .line 433
    .local v0, "set_rds_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/16 v7, 0xa

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move v8, p1

    move-object v9, v0

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 434
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_rds_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 435
    const-wide/16 v4, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 437
    if-ne v3, v1, :cond_3

    new-array v4, v1, [B

    aput-byte v2, v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 438
    if-ne p1, v1, :cond_2

    .line 439
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v4}, Lcom/android/server/RDSParser;->reset()V

    .line 440
    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startNotifyThread(Z)Z

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopNotifyThread(Z)V

    .line 444
    :goto_0
    return v1

    .line 446
    :cond_3
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 447
    return v2
.end method

.method public blacklist setRecordMode(Z)V
    .locals 20
    .param p1, "isRecord"    # Z

    .line 762
    move-object/from16 v0, p0

    move/from16 v9, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecordMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 763
    const/4 v1, -0x1

    .line 765
    .local v1, "ret":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 766
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getFirmwareVersion()Ljava/lang/String;

    .line 767
    const/4 v2, 0x2

    new-array v8, v2, [B

    .line 768
    .local v8, "get_protocol_version_cmd":[B
    iget-object v10, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v11, 0xc0

    const/16 v12, 0xa2

    const/16 v13, 0x12

    const/4 v14, 0x0

    const/16 v16, 0x2

    const/16 v17, 0xfa0

    move-object v15, v8

    invoke-virtual/range {v10 .. v17}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GET PROTOCOL VERIONS] ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", data: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ", ascii: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 771
    const/4 v3, 0x1

    if-eqz v9, :cond_2

    .line 772
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 773
    .local v2, "fm_state_cmd":[B
    iget-object v12, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v13, 0xc0

    const/16 v14, 0xa2

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v18, 0x2

    const/16 v19, 0xfa0

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v19}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fm_state_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 775
    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v3, v4, v5

    invoke-virtual {v0, v2, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 776
    const-string v3, "Do not record, FM is on playback mode, please turn off it first"

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 777
    return-void

    .line 775
    :cond_1
    move v12, v1

    goto :goto_0

    .line 771
    .end local v2    # "fm_state_cmd":[B
    :cond_2
    move v12, v1

    .line 781
    .end local v1    # "ret":I
    .local v12, "ret":I
    :goto_0
    move/from16 v5, p1

    .line 782
    .local v5, "recording_mode_index":I
    new-array v13, v3, [B

    .line 783
    .local v13, "set_record_cmd":[B
    iget-object v1, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xc0

    const/16 v3, 0xa1

    const/16 v4, 0xe

    const/4 v7, 0x1

    const/16 v14, 0xfa0

    move-object v6, v13

    move-object v15, v8

    .end local v8    # "get_protocol_version_cmd":[B
    .local v15, "get_protocol_version_cmd":[B
    move v8, v14

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 784
    .end local v12    # "ret":I
    .restart local v1    # "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_record_cmd ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v13}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 785
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 786
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 787
    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist setRssiThreshold(I)V
    .locals 11
    .param p1, "rssiThreshold"    # I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRssiThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 39
    .local v0, "set_rssith_cmd":[B
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0xc0

    const/16 v5, 0xa1

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/16 v10, 0xfa0

    move v7, p1

    move-object v8, v0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 40
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_rssith_cmd ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 41
    const-wide/16 v2, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 42
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 43
    return-void
.end method

.method public blacklist setSeekDC(I)Z
    .locals 12
    .param p1, "value"    # I

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSeekDC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 644
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 645
    .local v2, "set_dc_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/16 v7, 0xb

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move v8, p1

    move-object v9, v2

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 646
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_dc_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 647
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 648
    const-wide/16 v4, 0xf

    invoke-virtual {p0, v4, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 649
    if-ne v3, v0, :cond_1

    new-array v4, v0, [B

    aput-byte v1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 650
    return v0

    .line 653
    :cond_1
    return v1
.end method

.method public blacklist setSeekQA(I)Z
    .locals 12
    .param p1, "value"    # I

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSeekQA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 611
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 612
    .local v2, "set_qa_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/16 v7, 0xc

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move v8, p1

    move-object v9, v2

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 613
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_qa_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 615
    const-wide/16 v4, 0xf

    invoke-virtual {p0, v4, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 616
    if-ne v3, v0, :cond_1

    new-array v4, v0, [B

    aput-byte v1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 617
    return v0

    .line 620
    :cond_1
    return v1
.end method

.method public blacklist setSnrThreshold(I)V
    .locals 1
    .param p1, "snrThreshold"    # I

    .line 61
    const-string/jumbo v0, "setSnrThreshold"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public blacklist setSoundMode(I)Z
    .locals 12
    .param p1, "mode"    # I

    .line 394
    const-string/jumbo v0, "setSoundMode"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 396
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 397
    .local v2, "sound_mode_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/4 v7, 0x6

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move v8, p1

    move-object v9, v2

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 398
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sound_mode_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 400
    const-wide/16 v4, 0xf

    invoke-virtual {p0, v4, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 401
    if-ne v3, v0, :cond_1

    new-array v4, v0, [B

    aput-byte v1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    return v0

    .line 404
    :cond_1
    return v1
.end method

.method public blacklist setStringTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 586
    const-string/jumbo v0, "setStringTuningParameter"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public blacklist setVolume(I)Z
    .locals 12
    .param p1, "volume"    # I

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 358
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 359
    .local v2, "set_volume_cmd":[B
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/4 v7, 0x5

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    move v8, p1

    move-object v9, v2

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 360
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_volume_cmd ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 361
    const-wide/16 v4, 0x1e

    invoke-virtual {p0, v4, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    .line 362
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    .line 363
    if-ne v3, v0, :cond_1

    new-array v4, v0, [B

    aput-byte v1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    return v0

    .line 367
    :cond_1
    return v1
.end method

.method public blacklist startNotifyThread(Z)Z
    .locals 3
    .param p1, "isForScan"    # Z

    .line 698
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 699
    const-string v0, "Can\'t open connection for Notify Thread"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 700
    return v1

    .line 702
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->isThreadRunning:Z

    .line 703
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->initEndpointBes()V

    .line 704
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startNotifyThreadBes()V

    .line 705
    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    .line 706
    if-eqz p1, :cond_1

    .line 707
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mSeekFreq:I

    .line 708
    iget-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    if-eqz v2, :cond_1

    .line 709
    invoke-virtual {p0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->setRdsEnable(Z)Z

    .line 710
    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->restoreRdsForScan:Z

    .line 713
    :cond_1
    return v0
.end method

.method public blacklist stopNotifyThread(Z)V
    .locals 2
    .param p1, "isForScan"    # Z

    .line 718
    const-string/jumbo v0, "stopNotifyThread"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 720
    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    .line 721
    iget-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->restoreRdsForScan:Z

    if-eqz v1, :cond_0

    .line 722
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->setRdsEnable(Z)Z

    .line 723
    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->restoreRdsForScan:Z

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    if-eqz v1, :cond_2

    .line 727
    :cond_1
    const-string v0, "Need to keep NotifyThread alive"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 728
    return-void

    .line 730
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopNotifyThreadBes()V

    .line 731
    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->isThreadRunning:Z

    .line 732
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->releaseInterfaceBes()V

    .line 733
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_3

    .line 734
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 736
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    .line 737
    return-void
.end method

.method public blacklist stopSeek()Z
    .locals 1

    .line 315
    const-string/jumbo v0, "stopSeek"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    .line 316
    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsTuning:Z

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mNeedToStopSeek:Z

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopSeekExecute()Z

    move-result v0

    return v0
.end method

.method public blacklist tune(I)V
    .locals 1
    .param p1, "freq"    # I

    .line 222
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->seekTune(II)V

    .line 223
    return-void
.end method
