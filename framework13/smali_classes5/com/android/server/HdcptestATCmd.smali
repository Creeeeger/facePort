.class public Lcom/android/server/HdcptestATCmd;
.super Ljava/lang/Object;
.source "HdcptestATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final blacklist AT_COMMAND_HDCPTEST:Ljava/lang/String; = "HDCPTEST"

.field private static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final blacklist AT_COMMON_INTERVAL:Ljava/lang/String; = " "

.field private static final blacklist AT_HDCP_DP_HASH_SIZE:I = 0x20

.field private static final blacklist AT_HDCP_DP_VER_13_INSTALL_CMD:Ljava/lang/String; = "idp1"

.field private static final blacklist AT_HDCP_DP_VER_13_VERIFY_CMD:Ljava/lang/String; = "vdp1"

.field private static final blacklist AT_HDCP_DP_VER_13_WRITE_CMD:Ljava/lang/String; = "wdp1"

.field private static final blacklist AT_HDCP_DP_VER_22_INSTALL_CMD:Ljava/lang/String; = "idp2"

.field private static final blacklist AT_HDCP_DP_VER_22_VERIFY_CMD:Ljava/lang/String; = "vdp2"

.field private static final blacklist AT_HDCP_DP_VER_22_WRITE_CMD:Ljava/lang/String; = "wdp2"

.field private static final blacklist AT_HDCP_FILE_PATH_CPK:Ljava/lang/String; = "/efs/cpk"

.field private static final blacklist AT_HDCP_FILE_PATH_EFS:Ljava/lang/String; = "/efs"

.field private static final blacklist AT_HDCP_KEY_20:Ljava/lang/String; = "/h2k.dat"

.field private static final blacklist AT_HDCP_VERIFY_CMD:Ljava/lang/String; = "vhdk"

.field private static final blacklist AT_HDCP_WRITE_CMD:Ljava/lang/String; = "whdk"

.field private static final blacklist AT_RESPONSE_ERROR_EXEC:Ljava/lang/String; = "NG (ERROR_EXEC)"

.field private static final blacklist AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final blacklist AT_RESPONSE_INTEGRITY_FAIL:Ljava/lang/String; = "NG (INTEGRITY CHK FAIL)"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final blacklist AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final blacklist AT_RESPONSE_NG_FIELD:Ljava/lang/String; = "NG_FIELD"

.field private static final blacklist AT_RESPONSE_NG_KEY:Ljava/lang/String; = "NG_KEY"

.field private static final blacklist AT_RESPONSE_NO_DATA:Ljava/lang/String; = "NG (NO_DATA)"

.field private static final blacklist AT_RESPONSE_NO_EFS_PARTITION:Ljava/lang/String; = "NG (NO_EFS)"

.field private static final blacklist AT_RESPONSE_NO_EXIST_PATH:Ljava/lang/String; = "NG (NO_PATH)"

.field private static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final blacklist AT_SERIAL_PATH:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field private static final blacklist AT_SERIAL_PATH2:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field private static final blacklist AT_SERIAL_PATH3:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field private static final blacklist AT_SERIAL_SIZE:I = 0x20

.field private static final blacklist AT_WV_DEFAULT_SERIAL:Ljava/lang/String; = "S000000000000000"

.field private static final blacklist AT_WV_INSTALL_CMD:Ljava/lang/String; = "iwvk"

.field private static final blacklist AT_WV_KEY:Ljava/lang/String; = "/efs/wv.keys"

.field private static final blacklist AT_WV_KEY_HUAQIN:Ljava/lang/String; = "persist/data/widevine/widevine"

.field private static final blacklist AT_WV_VERIFY_CMD:Ljava/lang/String; = "vwvk"

.field private static final blacklist AT_WV_VERIFY_CMD_JDM:Ljava/lang/String; = "jvwk"

.field private static final blacklist AT_WV_ZERO_STRING:Ljava/lang/String; = "0"

.field private static final blacklist EFS_PARTITION:Ljava/lang/String; = "/efs"

.field private static final blacklist ERROR_EXEC:I = 0x2c

.field private static final blacklist ERROR_INTERNAL:I = 0x1

.field private static final blacklist NO_ERROR:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "HdcptestATCmd"

.field private static final blacklist TYPE_DIR:I = 0x1

.field private static final blacklist TYPE_FILE:I = 0x2

.field private static blacklist mContext:Landroid/content/Context; = null

.field private static final blacklist productType:Ljava/lang/String; = "in_house"


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mRunningBSD:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z

    .line 98
    invoke-static {p1}, Lcom/android/server/HdcptestATCmd;->setContext(Landroid/content/Context;)V

    .line 99
    const-string v0, "BSD_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static blacklist checkMsgIntegrity([B)Z
    .locals 7
    .param p0, "Array"    # [B

    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, "ret":Z
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 491
    .local v2, "bMD1":[B
    new-array v1, v1, [B

    .line 492
    .local v1, "bMD2":[B
    array-length v3, p0

    array-length v4, v2

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 495
    .local v3, "bMsg":[B
    :try_start_0
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    array-length v4, v3

    array-length v6, v2

    invoke-static {p0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 499
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 500
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    move-object v1, v5

    .line 502
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "HdcptestATCmd"

    if-eqz v5, :cond_0

    .line 503
    const/4 v0, 0x1

    .line 504
    :try_start_1
    const-string v5, "Integrity Check : Pass"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_0
    const-string v5, "Integrity Check : Failure"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_0
    goto :goto_1

    .line 508
    :catch_0
    move-exception v4

    .line 509
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public static blacklist checkPath(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, "tmpFile":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 465
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_0

    .line 462
    :pswitch_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 463
    nop

    .line 468
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist execCmd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 435
    const/16 v0, 0x2c

    .line 437
    .local v0, "ret":I
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    return v0

    .line 440
    :cond_0
    if-eqz p1, :cond_1

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 446
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 447
    .local v1, "rt":Ljava/lang/Runtime;
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 448
    .local v2, "pc":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 449
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 452
    .end local v1    # "rt":Ljava/lang/Runtime;
    .end local v2    # "pc":Ljava/lang/Process;
    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static blacklist getHdcp2XPath()Ljava/lang/String;
    .locals 3

    .line 475
    const-string v0, "/efs/cpk"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "HdcptestATCmd"

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "/efs/cpk"

    .line 477
    .local v0, "hPath":Ljava/lang/String;
    const-string v2, "Get path : cpk"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    .end local v0    # "hPath":Ljava/lang/String;
    :cond_0
    const-string v0, "/efs"

    .line 480
    .restart local v0    # "hPath":Ljava/lang/String;
    const-string v2, "Get path : legacy"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_0
    return-object v0
.end method

.method public static blacklist hexToByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hexData"    # Ljava/lang/String;

    .line 421
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 425
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 427
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 428
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 422
    .end local v0    # "bArray":[B
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist makeDirectory(Ljava/lang/String;)V
    .locals 3
    .param p0, "dir"    # Ljava/lang/String;

    .line 517
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/cpk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "cpkPath":Ljava/io/File;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    const-string v1, "HdcptestATCmd"

    const-string v2, "Make cpkPath"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    const-string v2, "Make cpkPath Failse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    return-void
.end method

.method private blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 415
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 414
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static blacklist setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    sput-object p0, Lcom/android/server/HdcptestATCmd;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public static blacklist writeFile([BLjava/lang/String;I)I
    .locals 5
    .param p0, "bArray"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 529
    const-string v0, "HdcptestATCmd"

    const/4 v1, 0x0

    .line 530
    .local v1, "hOStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 533
    .local v2, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 534
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 535
    const-string v3, "Prepare buffer stream"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 538
    const-string v3, "Write data into buffer"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 541
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 543
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x0

    .local v0, "ret":I
    goto :goto_0

    .line 546
    .end local v0    # "ret":I
    :cond_0
    const/4 v0, 0x1

    .line 555
    .restart local v0    # "ret":I
    :goto_0
    nop

    .line 557
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :goto_1
    const/4 v2, 0x0

    .line 562
    goto :goto_2

    .line 561
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 558
    :catch_0
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 563
    :goto_2
    nop

    .line 565
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_e

    .line 569
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 566
    :catch_1
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_e

    .line 569
    :goto_3
    const/4 v1, 0x0

    .line 570
    throw v3

    .line 561
    :goto_4
    const/4 v2, 0x0

    .line 562
    throw v3

    .line 555
    .end local v0    # "ret":I
    :catchall_2
    move-exception v0

    goto/16 :goto_11

    .line 551
    :catch_2
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    .line 553
    .local v3, "ret":I
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 557
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 561
    :goto_5
    const/4 v0, 0x0

    .line 562
    .end local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v0, "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v2, v0

    goto :goto_7

    .line 561
    .end local v0    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 558
    :catch_3
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 561
    :goto_6
    const/4 v2, 0x0

    .line 562
    throw v0

    .line 563
    :cond_1
    :goto_7
    if-eqz v1, :cond_2

    .line 565
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 569
    :goto_8
    const/4 v0, 0x0

    .line 570
    .end local v1    # "hOStream":Ljava/io/FileOutputStream;
    .local v0, "hOStream":Ljava/io/FileOutputStream;
    move-object v1, v0

    goto :goto_9

    .line 569
    .end local v0    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v1    # "hOStream":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v0

    goto :goto_a

    .line 566
    :catch_4
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 570
    :goto_9
    move v0, v3

    goto :goto_10

    .line 569
    :goto_a
    const/4 v1, 0x0

    .line 570
    throw v0

    .line 563
    :cond_2
    move v0, v3

    goto :goto_10

    .line 547
    .end local v3    # "ret":I
    :catch_5
    move-exception v3

    .line 548
    .local v3, "e":Ljava/io/SyncFailedException;
    :try_start_a
    const-string v4, "SyncFailedException occurs"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v0, 0x1

    .line 550
    .local v0, "ret":I
    invoke-virtual {v3}, Ljava/io/SyncFailedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 555
    .end local v3    # "e":Ljava/io/SyncFailedException;
    if-eqz v2, :cond_3

    .line 557
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 561
    :goto_b
    const/4 v2, 0x0

    .line 562
    goto :goto_d

    .line 561
    :catchall_5
    move-exception v3

    goto :goto_c

    .line 558
    :catch_6
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 561
    :goto_c
    const/4 v2, 0x0

    .line 562
    throw v3

    .line 563
    :cond_3
    :goto_d
    if-eqz v1, :cond_4

    .line 565
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 569
    :goto_e
    const/4 v1, 0x0

    .line 570
    goto :goto_10

    .line 569
    :catchall_6
    move-exception v3

    goto :goto_f

    .line 566
    :catch_7
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_e

    .line 569
    :goto_f
    const/4 v1, 0x0

    .line 570
    throw v3

    .line 572
    :cond_4
    :goto_10
    return v0

    .line 555
    .end local v0    # "ret":I
    :goto_11
    if-eqz v2, :cond_5

    .line 557
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 561
    :goto_12
    const/4 v2, 0x0

    .line 562
    goto :goto_14

    .line 561
    :catchall_7
    move-exception v0

    goto :goto_13

    .line 558
    :catch_8
    move-exception v3

    .line 559
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_12

    .line 561
    :goto_13
    const/4 v2, 0x0

    .line 562
    throw v0

    .line 563
    :cond_5
    :goto_14
    if-eqz v1, :cond_6

    .line 565
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 569
    :goto_15
    const/4 v1, 0x0

    .line 570
    goto :goto_17

    .line 569
    :catchall_8
    move-exception v0

    goto :goto_16

    .line 566
    :catch_9
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 569
    :goto_16
    const/4 v1, 0x0

    .line 570
    throw v0

    .line 571
    :cond_6
    :goto_17
    throw v0
.end method


# virtual methods
.method public blacklist getCmd()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "HDCPTEST"

    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "cmd"    # Ljava/lang/String;

    .line 114
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "/h2k.dat"

    const-string v4, "/sys/class/sec/ufs/un"

    const-string v5, "NG (EXCEPTION)"

    const-string v6, ""

    .line 115
    .local v6, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/HdcptestATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "params":[Ljava/lang/String;
    const-string v8, "0,0"

    const-string v9, "0,3"

    const-string v10, "0,4"

    const-string v11, "0,5"

    const-string v12, "1,0"

    const-string v13, "2,"

    const-string v14, "3,3,"

    const-string v15, "3,4,"

    const-string v16, "3,5,"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "supportedParams":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 130
    .local v9, "hIStream":Ljava/io/FileInputStream;
    const-string v10, "NG (INVALID_PARAM)"

    const-string v11, "HdcptestATCmd"

    if-nez v7, :cond_0

    .line 131
    const-string/jumbo v3, "processCmd: params is null"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v10

    .line 135
    :cond_0
    const-string v12, "/efs"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 136
    const-string v3, "efs partition is not mounted"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "NG (NO_EFS)"

    return-object v3

    .line 141
    :cond_1
    :try_start_0
    iget-boolean v14, v1, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v14, :cond_2

    .line 142
    :try_start_1
    const-string v14, "Start BSD service!"

    invoke-static {v11, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v14, "ctl.start"

    const-string v15, "bsd"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-boolean v13, v1, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_12

    .line 147
    :cond_2
    :goto_0
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v13, v7, v15

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 150
    aget-object v13, v8, v15

    aget-object v14, v8, v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v14, "NG_KEY"

    const-string v15, "NG_FIELD"

    const-string v18, "/efs/cpk"

    move-object/from16 v19, v9

    .end local v9    # "hIStream":Ljava/io/FileInputStream;
    .local v19, "hIStream":Ljava/io/FileInputStream;
    const-string v9, "NG (ERROR_EXEC)"

    move-object/from16 v20, v5

    const-string v5, "OK"

    move-object/from16 v21, v10

    const/4 v10, 0x2

    if-eqz v13, :cond_8

    .line 151
    :try_start_3
    const-string v4, "AT+HDCPTEST=0,0"

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v4, v18

    .line 155
    .local v4, "hPath":Ljava/lang/String;
    const-string/jumbo v13, "vhdk"

    invoke-virtual {v1, v13}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v13

    .line 157
    .local v13, "ret":I
    if-nez v13, :cond_3

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 160
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 161
    move-object v4, v12

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 165
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_4
    const/16 v3, 0x2c

    if-ne v13, v3, :cond_5

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 168
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 171
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_6
    const/16 v3, 0x2c

    if-ne v13, v3, :cond_7

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 174
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 178
    :goto_1
    const-string v3, "0,0 is complete!"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    move-object/from16 v9, v19

    .end local v4    # "hPath":Ljava/lang/String;
    .end local v13    # "ret":I
    goto/16 :goto_11

    .line 393
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_16

    .line 389
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_12

    .line 181
    :cond_8
    const/4 v3, 0x1

    :try_start_4
    aget-object v12, v8, v3

    aget-object v13, v8, v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_e

    .line 182
    :try_start_5
    const-string v3, "AT+HDCPTEST=0,3"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v3, 0x2c

    .line 184
    .local v3, "ret":I
    const-string v4, "jdm"

    const-string v12, "in_house"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 185
    const-string v4, "0,3 test for jdm"

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v4, "jvwk"

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto :goto_2

    .line 188
    :cond_9
    const-string/jumbo v4, "ro.product.first_api_level"

    const/4 v12, 0x0

    invoke-static {v4, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v12, 0x1d

    const-string/jumbo v13, "vwvk"

    if-ge v4, v12, :cond_b

    .line 189
    :try_start_6
    const-string v4, "/efs/wv.keys"

    invoke-static {v4, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto :goto_2

    .line 192
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_a
    invoke-virtual {v1, v13}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto :goto_2

    .line 195
    :cond_b
    invoke-virtual {v1, v13}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 198
    :goto_2
    if-nez v3, :cond_c

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_3

    .line 200
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_c
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_d

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_3

    .line 203
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 205
    :goto_3
    const-string v4, "0,3 is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    goto/16 :goto_11

    .line 208
    :cond_e
    :try_start_7
    aget-object v3, v8, v10

    aget-object v12, v8, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v12, "NG"

    if-eqz v3, :cond_12

    .line 209
    :try_start_8
    const-string v3, "AT+HDCPTEST=0,4"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v3, "vdp2"

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 213
    .restart local v3    # "ret":I
    if-nez v3, :cond_f

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_4

    .line 216
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_f
    const-string v4, "idp2"

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 217
    if-nez v3, :cond_10

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_4

    .line 219
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_10
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_11

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_4

    .line 222
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 225
    :goto_4
    const-string v4, "0,4 is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 226
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    goto/16 :goto_11

    .line 228
    :cond_12
    const/4 v3, 0x3

    :try_start_9
    aget-object v13, v8, v3

    aget-object v3, v8, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_16

    .line 229
    :try_start_a
    const-string v3, "AT+HDCPTEST=0,5"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string/jumbo v3, "vdp1"

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 233
    .restart local v3    # "ret":I
    if-nez v3, :cond_13

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_5

    .line 236
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_13
    const-string v4, "idp1"

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 237
    if-nez v3, :cond_14

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_5

    .line 239
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_14
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_15

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_5

    .line 242
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 245
    :goto_5
    const-string v4, "0,5 is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 246
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    goto/16 :goto_11

    .line 248
    :cond_16
    const/4 v3, 0x4

    :try_start_b
    aget-object v13, v8, v3

    aget-object v3, v8, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v3, :cond_23

    .line 249
    :try_start_c
    const-string v3, "AT+HDCPTEST=1,0"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, "serialNo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 253
    .local v5, "serialPath":Ljava/lang/String;
    const-string v9, "S000000000000000"

    .line 255
    .local v9, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v12, v13, :cond_1f

    .line 256
    invoke-static {v4, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const-string v13, "/sys/block/mmcblk0/device/cid"

    const-string v14, "/sys/class/scsi_host/host0/unique_number"

    if-eqz v12, :cond_17

    .line 257
    move-object v5, v4

    goto :goto_6

    .line 258
    :cond_17
    :try_start_d
    invoke-static {v14, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 259
    move-object v5, v14

    goto :goto_6

    .line 260
    :cond_18
    invoke-static {v13, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 261
    move-object v5, v13

    .line 264
    :cond_19
    :goto_6
    if-eqz v5, :cond_1e

    .line 265
    const/16 v10, 0x20

    new-array v10, v10, [B

    .line 267
    .local v10, "bArray":[B
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 268
    .end local v19    # "hIStream":Ljava/io/FileInputStream;
    .local v12, "hIStream":Ljava/io/FileInputStream;
    :try_start_e
    invoke-virtual {v12, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    move-object/from16 v17, v3

    .end local v3    # "serialNo":Ljava/lang/String;
    .local v17, "serialNo":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v15, v3, :cond_1c

    .line 269
    if-eq v5, v14, :cond_1b

    if-ne v5, v4, :cond_1a

    goto :goto_7

    .line 271
    :cond_1a
    if-ne v5, v13, :cond_1d

    .line 272
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    const/16 v13, 0x20

    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v17    # "serialNo":Ljava/lang/String;
    .restart local v3    # "serialNo":Ljava/lang/String;
    goto :goto_8

    .line 270
    .end local v3    # "serialNo":Ljava/lang/String;
    .restart local v17    # "serialNo":Ljava/lang/String;
    :cond_1b
    :goto_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .end local v17    # "serialNo":Ljava/lang/String;
    .restart local v3    # "serialNo":Ljava/lang/String;
    goto :goto_8

    .line 275
    .end local v3    # "serialNo":Ljava/lang/String;
    .restart local v17    # "serialNo":Ljava/lang/String;
    :cond_1c
    const-string v3, "Read S/N Failed"

    invoke-static {v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 277
    .end local v10    # "bArray":[B
    :cond_1d
    move-object/from16 v3, v17

    .end local v17    # "serialNo":Ljava/lang/String;
    .restart local v3    # "serialNo":Ljava/lang/String;
    :goto_8
    move-object/from16 v19, v12

    goto :goto_9

    .line 393
    .end local v3    # "serialNo":Ljava/lang/String;
    .end local v5    # "serialPath":Ljava/lang/String;
    .end local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v9, v12

    move-object/from16 v5, v20

    goto/16 :goto_16

    .line 389
    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v9, v12

    move-object/from16 v5, v20

    goto/16 :goto_12

    .line 264
    .end local v12    # "hIStream":Ljava/io/FileInputStream;
    .restart local v3    # "serialNo":Ljava/lang/String;
    .restart local v5    # "serialPath":Ljava/lang/String;
    .restart local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v19    # "hIStream":Ljava/io/FileInputStream;
    :cond_1e
    move-object/from16 v17, v3

    .end local v3    # "serialNo":Ljava/lang/String;
    .restart local v17    # "serialNo":Ljava/lang/String;
    goto :goto_9

    .line 279
    .end local v17    # "serialNo":Ljava/lang/String;
    .restart local v3    # "serialNo":Ljava/lang/String;
    :cond_1f
    move-object/from16 v17, v3

    .end local v3    # "serialNo":Ljava/lang/String;
    .restart local v17    # "serialNo":Ljava/lang/String;
    :try_start_f
    const-string/jumbo v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .end local v17    # "serialNo":Ljava/lang/String;
    .restart local v3    # "serialNo":Ljava/lang/String;
    :goto_9
    if-nez v3, :cond_20

    .line 283
    const-string v4, "S000000000000000"

    move-object v3, v4

    .line 286
    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v10, 0x10

    if-lt v4, v10, :cond_21

    .line 287
    move-object v4, v3

    .end local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .local v4, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    goto :goto_a

    .line 288
    .end local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :cond_21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_22

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    goto :goto_a

    .line 291
    .end local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .end local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Serial Number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 297
    const-string v9, "1,0 is complete."

    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 298
    move-object/from16 v9, v19

    .end local v3    # "serialNo":Ljava/lang/String;
    .end local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v5    # "serialPath":Ljava/lang/String;
    goto/16 :goto_11

    .line 300
    :cond_23
    const/4 v3, 0x5

    :try_start_10
    aget-object v3, v8, v3

    const/4 v4, 0x5

    aget-object v4, v8, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const-string v4, "NG (NO_DATA)"

    if-eqz v3, :cond_27

    .line 301
    const/4 v3, 0x1

    :try_start_11
    aget-object v9, v7, v3

    if-eqz v9, :cond_26

    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_b

    .line 304
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Param size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v9, v7, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static/range {v18 .. v18}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "whdk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_25

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto :goto_c

    .line 310
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_c

    .line 302
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_26
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 314
    :goto_c
    const-string v3, "2,Data is complete."

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object/from16 v9, v19

    goto/16 :goto_11

    .line 317
    :cond_27
    const/4 v3, 0x6

    :try_start_12
    aget-object v3, v8, v3

    const/4 v13, 0x6

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v3, :cond_2c

    .line 318
    :try_start_13
    const-string v3, "AT+HDCPTEST=3,3,Data"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    aget-object v3, v7, v10

    if-eqz v3, :cond_2b

    aget-object v3, v7, v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_d

    .line 323
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Param size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v7, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iwvk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v7, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 327
    .local v3, "ret":I
    if-nez v3, :cond_29

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto :goto_e

    .line 329
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_29
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_2a

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_e

    .line 332
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_e

    .line 321
    .end local v3    # "ret":I
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2b
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 335
    :goto_e
    const-string v3, "3,3,Data is complete."

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-object/from16 v9, v19

    goto/16 :goto_11

    .line 338
    :cond_2c
    const/4 v3, 0x7

    :try_start_14
    aget-object v3, v8, v3

    const/4 v9, 0x7

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-eqz v3, :cond_30

    .line 339
    :try_start_15
    const-string v3, "AT+HDCPTEST=3,4,Data"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v3, 0x0

    .line 342
    .restart local v3    # "ret":I
    aget-object v9, v7, v10

    invoke-static {v9}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 344
    .local v9, "bArray":[B
    if-nez v9, :cond_2d

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_f

    .line 346
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2d
    invoke-static {v9}, Lcom/android/server/HdcptestATCmd;->checkMsgIntegrity([B)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check integtiry -size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (INTEGRITY CHK FAIL)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_f

    .line 350
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bArray size : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v13, v9

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static/range {v18 .. v18}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wdp2"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v7, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2f

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_f

    .line 356
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 360
    :goto_f
    const-string v4, "3,4,Data is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 361
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    .end local v9    # "bArray":[B
    goto/16 :goto_11

    .line 364
    :cond_30
    const/16 v3, 0x8

    :try_start_16
    aget-object v3, v8, v3

    const/16 v9, 0x8

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-eqz v3, :cond_34

    .line 365
    :try_start_17
    const-string v3, "AT+HDCPTEST=3,5,Data"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v3, 0x0

    .line 368
    .restart local v3    # "ret":I
    aget-object v9, v7, v10

    invoke-static {v9}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 370
    .restart local v9    # "bArray":[B
    if-nez v9, :cond_31

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_10

    .line 372
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_31
    invoke-static {v9}, Lcom/android/server/HdcptestATCmd;->checkMsgIntegrity([B)Z

    move-result v4

    if-nez v4, :cond_32

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check integtiry -size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (INTEGRITY CHK FAIL)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_10

    .line 376
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bArray size : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v13, v9

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static/range {v18 .. v18}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wdp1"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v7, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_33

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_10

    .line 382
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 385
    :goto_10
    const-string v4, "3,5,Data is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 386
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    .end local v9    # "bArray":[B
    goto :goto_11

    .line 387
    :cond_34
    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    move-object v6, v3

    move-object/from16 v9, v19

    .line 394
    .end local v19    # "hIStream":Ljava/io/FileInputStream;
    .local v9, "hIStream":Ljava/io/FileInputStream;
    :goto_11
    if-eqz v9, :cond_35

    .line 395
    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3

    goto :goto_14

    .line 397
    :catch_3
    move-exception v0

    move-object v3, v0

    .line 398
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v20

    goto :goto_13

    .line 393
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "hIStream":Ljava/io/FileInputStream;
    .restart local v19    # "hIStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v5, v20

    move-object v3, v0

    move-object/from16 v9, v19

    goto :goto_16

    .line 389
    :catch_4
    move-exception v0

    move-object/from16 v5, v20

    move-object v3, v0

    move-object/from16 v9, v19

    goto :goto_12

    .line 393
    .end local v19    # "hIStream":Ljava/io/FileInputStream;
    .restart local v9    # "hIStream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v9

    move-object v3, v0

    .end local v9    # "hIStream":Ljava/io/FileInputStream;
    .restart local v19    # "hIStream":Ljava/io/FileInputStream;
    goto :goto_16

    .line 389
    .end local v19    # "hIStream":Ljava/io/FileInputStream;
    .restart local v9    # "hIStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object/from16 v19, v9

    move-object v3, v0

    .line 390
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_12
    :try_start_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 391
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 394
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_35

    .line 395
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    goto :goto_14

    .line 397
    :catch_6
    move-exception v0

    move-object v3, v0

    .line 398
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 399
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 400
    :cond_35
    :goto_14
    nop

    .line 403
    :goto_15
    return-object v6

    .line 393
    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 394
    :goto_16
    if-eqz v9, :cond_36

    .line 395
    :try_start_1c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7

    goto :goto_17

    .line 397
    :catch_7
    move-exception v0

    move-object v4, v0

    .line 398
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 399
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 400
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_17
    nop

    .line 401
    :goto_18
    throw v3
.end method

.method native blacklist sendTobsd(Ljava/lang/String;)I
.end method
