.class Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmPacketManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager$EmType;
    }
.end annotation


# static fields
.field private static final blacklist EMP_2BYTES:I = 0x2

.field private static final blacklist EMP_3BYTES:I = 0x3

.field private static final blacklist EMP_4BYTES:I = 0x4

.field private static final blacklist EMP_MAGIC_SIZE:I = 0x4

.field private static final blacklist EMP_MAX_DEVICE_NUM:I = 0x1f4

.field private static final blacklist EMP_MAX_MODE_DESC:I = 0x80

.field private static final blacklist EMP_MAX_MODE_NAME:I = 0x20


# instance fields
.field private blacklist headerLen:I

.field private blacklist mNumOfDevice:I

.field private blacklist mOTPtime:I

.field private blacklist mPos:I

.field private blacklist mPosDeviceInfo:[I

.field private blacklist mPosGroupDb:I

.field private blacklist mPosIntegrityInfo:I

.field private blacklist mPosIssuerInfo:I

.field private blacklist mPosModeDb:I

.field private blacklist mPosModeInfo:I

.field private blacklist mPosTokenInfo:I

.field private blacklist mPosValidityInfo:I

.field private blacklist mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    .line 1137
    const/16 v0, 0x1f4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    .line 1138
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-direct {v0}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    .line 1139
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    .line 1140
    return-void
.end method

.method private blacklist byteArrayToHex([B)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # [B

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1170
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    .line 1171
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1173
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getBytes([BII)[B
    .locals 1
    .param p1, "msg"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .line 1153
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist getInt([BI)I
    .locals 2
    .param p1, "msg"    # [B
    .param p2, "pos"    # I

    .line 1157
    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1158
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1157
    return v0
.end method

.method private blacklist getShort([BI)I
    .locals 2
    .param p1, "msg"    # [B
    .param p2, "pos"    # I

    .line 1163
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1164
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 1163
    return v0
.end method

.method private blacklist getStringFromBytes([B)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # [B

    .line 1143
    const/4 v0, 0x0

    .line 1145
    .local v0, "out":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1147
    goto :goto_0

    .line 1146
    :catch_0
    move-exception v1

    .line 1149
    :goto_0
    return-object v0
.end method

.method private blacklist parseDeviceInfo([BI)I
    .locals 16
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1400
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v1, v2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v3, "magic":Ljava/lang/String;
    add-int/2addr v2, v5

    .line 1401
    .end local p2    # "pos":I
    .local v2, "pos":I
    const-string v4, "DEVI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    const-string v7, "engmode_java_manager"

    if-nez v4, :cond_0

    .line 1402
    const-string v4, "Error deviceInfo magic"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return v6

    .line 1406
    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    .local v4, "sizeOfInfo":I
    add-int/2addr v2, v5

    .line 1407
    if-gez v4, :cond_1

    .line 1408
    const-string v5, "Error deviceInfo sizeOfInfo"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    return v6

    .line 1412
    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    .local v8, "numOfData":I
    add-int/2addr v2, v5

    .line 1413
    if-gez v8, :cond_2

    .line 1414
    const-string v5, "Error deviceInfo numOfData"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    return v6

    .line 1418
    :cond_2
    const-string v5, ""

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const-string v9, "[Device Info]"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Magic : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sizeOfInfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "numOfdata : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-gt v9, v8, :cond_8

    .line 1426
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v10

    .local v10, "type":I
    add-int/lit8 v2, v2, 0x2

    .line 1427
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    .local v11, "len":I
    const/4 v12, 0x2

    add-int/2addr v2, v12

    .line 1428
    if-gez v11, :cond_3

    .line 1429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error deviceInfo item len : type : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    return v6

    .line 1433
    :cond_3
    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eq v10, v14, :cond_4

    if-eq v10, v12, :cond_4

    if-eq v10, v13, :cond_4

    .line 1435
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregistered type but it can be new one : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_4
    invoke-direct {v0, v1, v2, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v6

    .local v6, "value":[B
    add-int/2addr v2, v11

    .line 1439
    iget-object v15, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v15, v10, v11, v6}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushDeviceInfo(II[B)V

    .line 1441
    const-string v15, "Value : "

    if-ne v10, v14, :cond_5

    .line 1442
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : Model Name, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    if-lez v11, :cond_7

    .line 1444
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1446
    :cond_5
    if-ne v10, v12, :cond_6

    .line 1447
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : DID, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    if-lez v11, :cond_7

    .line 1449
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1451
    :cond_6
    if-ne v10, v13, :cond_7

    .line 1452
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : IMEI, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    if-lez v11, :cond_7

    .line 1454
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    .end local v6    # "value":[B
    .end local v10    # "type":I
    .end local v11    # "len":I
    :cond_7
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    .line 1458
    .end local v9    # "i":I
    :cond_8
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v5, 0x0

    return v5
.end method

.method private blacklist parseGroupData([BI)I
    .locals 16
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1872
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v2

    .local v2, "groupIndex":I
    add-int/lit8 v3, p2, 0x2

    .line 1873
    .end local p2    # "pos":I
    .local v3, "pos":I
    const/4 v4, -0x1

    const-string v5, "engmode_java_manager"

    if-gez v2, :cond_0

    .line 1874
    const-string v6, "Error parseGroupData groupIndex"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    return v4

    .line 1878
    :cond_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    const/16 v9, 0x20

    invoke-direct {v6, v1, v3, v9, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v6, "groupName":Ljava/lang/String;
    add-int/2addr v3, v9

    .line 1879
    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    const/16 v9, 0x80

    invoke-direct {v8, v1, v3, v9, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v7, v8

    .local v7, "groupDesc":Ljava/lang/String;
    add-int/2addr v3, v9

    .line 1880
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    .local v8, "sizeOfAttrInfo":I
    add-int/lit8 v3, v3, 0x4

    .line 1881
    if-gez v8, :cond_1

    .line 1882
    const-string v9, "Error parseGroupData sizeOfAttrInfo"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    return v4

    .line 1886
    :cond_1
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v9

    .local v9, "numOfAttr":I
    add-int/lit8 v3, v3, 0x4

    .line 1887
    if-gez v9, :cond_2

    .line 1888
    const-string v10, "Error parseGroupData numOfAttr"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    return v4

    .line 1892
    :cond_2
    iget-object v10, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v10, v2, v6, v7}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushGroupDB(ILjava/lang/String;Ljava/lang/String;)V

    .line 1894
    const-string v10, ""

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const-string v11, "[Groupe DB Attr]"

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "groupIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "groupName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "groupDesc : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sizeOfAttrInfo : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "numOfAttr : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    if-gt v11, v9, :cond_6

    .line 1904
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v12

    .local v12, "type":I
    add-int/lit8 v3, v3, 0x2

    .line 1905
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v13

    .local v13, "len":I
    add-int/lit8 v3, v3, 0x2

    .line 1906
    if-gez v13, :cond_3

    .line 1907
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error groupData item len : type : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    return v4

    .line 1911
    :cond_3
    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    .line 1912
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistered type but it can be new one : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_4
    invoke-direct {v0, v1, v3, v13}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v4

    .local v4, "value":[B
    add-int/2addr v3, v13

    .line 1916
    iget-object v15, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v15, v2, v12, v13, v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushAttrToGroupItem(III[B)V

    .line 1918
    if-ne v12, v14, :cond_5

    .line 1919
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "type : No Duplicate, len : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    if-lez v13, :cond_5

    .line 1921
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Value : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct {v0, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    .end local v4    # "value":[B
    .end local v12    # "type":I
    .end local v13    # "len":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1925
    .end local v11    # "i":I
    :cond_6
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    return v3
.end method

.method private blacklist parseGroupDb([BI)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1935
    const-string v0, ""

    const-string v1, "engmode_java_manager"

    const-string v2, "Enter praseGroupDb"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buf Lengh : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POS Offset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, p1, p2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1941
    .local v3, "magic":Ljava/lang/String;
    add-int/lit8 p2, p2, 0x4

    .line 1943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "magic : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const-string v4, "GRDB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    .line 1945
    const-string v0, "Error groupDB magic"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return v5

    .line 1949
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    .local v4, "sizeOfInfo":I
    add-int/lit8 p2, p2, 0x4

    .line 1950
    if-gez v4, :cond_1

    .line 1951
    const-string v0, "Error groupDB sizeOfInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    return v5

    .line 1955
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    .local v6, "numOfData":I
    add-int/lit8 p2, p2, 0x4

    .line 1956
    if-gez v6, :cond_2

    .line 1957
    const-string v0, "Error groupDB numOfData"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    return v5

    .line 1961
    :cond_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const-string v7, "[Group DB]"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Magic : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sizeOfInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numOfdata : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 1969
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupData([BI)I

    move-result v7

    move p2, v7

    .line 1970
    if-gez p2, :cond_3

    .line 1971
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parseGroupData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    return v5

    .line 1968
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1978
    .end local v0    # "i":I
    :cond_4
    nop

    .line 1980
    return v2

    .line 1975
    .end local v3    # "magic":Ljava/lang/String;
    .end local v4    # "sizeOfInfo":I
    .end local v6    # "numOfData":I
    :catch_0
    move-exception v0

    .line 1976
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1977
    return v2
.end method

.method private blacklist parseIntegrityInfo([BI)I
    .locals 13
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1665
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v0, "magic":Ljava/lang/String;
    add-int/2addr p2, v2

    .line 1666
    const-string v1, "INTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "engmode_java_manager"

    if-nez v1, :cond_0

    .line 1667
    const-string v1, "Error integInfo magic"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    return v3

    .line 1671
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v1

    .local v1, "sizeOfInfo":I
    add-int/2addr p2, v2

    .line 1672
    if-gez v1, :cond_1

    .line 1673
    const-string v2, "Error integInfo sizeOfInfo"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    return v3

    .line 1677
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    .local v5, "numOfData":I
    add-int/2addr p2, v2

    .line 1678
    if-gez v5, :cond_2

    .line 1679
    const-string v2, "Error integInfo numOfData"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    return v3

    .line 1683
    :cond_2
    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const-string v6, "[Integrity Info]"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Magic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numOfdata : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v5, :cond_7

    .line 1691
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    .local v7, "type":I
    add-int/lit8 p2, p2, 0x2

    .line 1692
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v8

    .local v8, "len":I
    const/4 v9, 0x2

    add-int/2addr p2, v9

    .line 1693
    if-gez v8, :cond_3

    .line 1694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error integInfo item len : type : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return v3

    .line 1698
    :cond_3
    const/4 v10, 0x1

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_4

    .line 1699
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unregistered type but it can be new one : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_4
    invoke-direct {p0, p1, p2, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v11

    .local v11, "value":[B
    add-int/2addr p2, v8

    .line 1703
    iget-object v12, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v12, v7, v8, v11}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushIntegrityInfo(II[B)V

    .line 1705
    const-string v12, "Value : "

    if-ne v7, v10, :cond_5

    .line 1706
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type : Signature, len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    if-lez v8, :cond_6

    .line 1708
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1710
    :cond_5
    if-ne v7, v9, :cond_6

    .line 1711
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type : Server Cert, len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    if-lez v8, :cond_6

    .line 1713
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    .end local v7    # "type":I
    .end local v8    # "len":I
    .end local v11    # "value":[B
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1717
    .end local v6    # "i":I
    :cond_7
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist parseIssuerInfo([BI)I
    .locals 16
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1469
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v1, v2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v3, "magic":Ljava/lang/String;
    add-int/2addr v2, v5

    .line 1470
    .end local p2    # "pos":I
    .local v2, "pos":I
    const-string v4, "ISSU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    const-string v7, "engmode_java_manager"

    if-nez v4, :cond_0

    .line 1471
    const-string v4, "Error issuerInfo magic"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    return v6

    .line 1475
    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    .local v4, "sizeOfInfo":I
    add-int/2addr v2, v5

    .line 1476
    if-gez v4, :cond_1

    .line 1477
    const-string v5, "Error issuerInfo sizeOfInfo"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    return v6

    .line 1481
    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    .local v8, "numOfData":I
    add-int/2addr v2, v5

    .line 1482
    if-gez v8, :cond_2

    .line 1483
    const-string v5, "Error issuerInfo numOfData"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    return v6

    .line 1487
    :cond_2
    const-string v5, ""

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const-string v9, "[Issuer Info]"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Magic : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sizeOfInfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "numOfdata : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-gt v9, v8, :cond_b

    .line 1495
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v10

    .local v10, "type":I
    add-int/lit8 v2, v2, 0x2

    .line 1496
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    .local v11, "len":I
    const/4 v12, 0x2

    add-int/2addr v2, v12

    .line 1497
    if-gez v11, :cond_3

    .line 1498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error issuerInfo item len : type : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    return v6

    .line 1502
    :cond_3
    const/16 v14, 0x1002

    const/16 v15, 0x1001

    const/4 v6, 0x3

    const/4 v13, 0x1

    if-eq v10, v13, :cond_4

    if-eq v10, v12, :cond_4

    if-eq v10, v6, :cond_4

    if-eq v10, v15, :cond_4

    if-eq v10, v14, :cond_4

    const/16 v14, 0x1003

    if-eq v10, v14, :cond_4

    .line 1505
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unregistered type but it can be new one : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_4
    invoke-direct {v0, v1, v2, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v14

    .local v14, "value":[B
    add-int/2addr v2, v11

    .line 1509
    iget-object v15, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v15, v10, v11, v14}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushIssuerInfo(II[B)V

    .line 1511
    const-string v15, "Value : "

    if-ne v10, v13, :cond_5

    .line 1512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : Single ID, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    if-lez v11, :cond_a

    .line 1514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1516
    :cond_5
    if-ne v10, v12, :cond_6

    .line 1517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : OTP, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    if-lez v11, :cond_a

    .line 1519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1521
    :cond_6
    if-ne v10, v6, :cond_7

    .line 1522
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : Nonce, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    if-lez v11, :cond_a

    .line 1524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1526
    :cond_7
    const/16 v6, 0x1001

    if-ne v10, v6, :cond_8

    .line 1527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : System ID, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    if-lez v11, :cond_a

    .line 1529
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1531
    :cond_8
    const/16 v6, 0x1002

    if-ne v10, v6, :cond_9

    .line 1532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : IP, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    if-lez v11, :cond_a

    .line 1534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1536
    :cond_9
    const/16 v6, 0x1003

    if-ne v10, v6, :cond_a

    .line 1537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : MAC, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    if-lez v11, :cond_a

    .line 1539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    .end local v10    # "type":I
    .end local v11    # "len":I
    .end local v14    # "value":[B
    :cond_a
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    .line 1543
    .end local v9    # "i":I
    :cond_b
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/4 v5, 0x0

    return v5
.end method

.method private blacklist parseModeData([BI)I
    .locals 17
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1731
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v2

    .local v2, "modeIndex":I
    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    .line 1732
    .end local p2    # "pos":I
    .local v4, "pos":I
    const/4 v5, -0x1

    const-string v6, "engmode_java_manager"

    if-gez v2, :cond_0

    .line 1733
    const-string v3, "Error parseModeData modeIndex"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return v5

    .line 1737
    :cond_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    const/16 v10, 0x20

    invoke-direct {v7, v1, v4, v10, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v7, "modeName":Ljava/lang/String;
    add-int/2addr v4, v10

    .line 1738
    new-instance v9, Ljava/lang/String;

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    const/16 v10, 0x80

    invoke-direct {v9, v1, v4, v10, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v8, v9

    .local v8, "modeDesc":Ljava/lang/String;
    add-int/2addr v4, v10

    .line 1739
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v9

    .local v9, "groupIndex":I
    add-int/2addr v4, v3

    .line 1740
    if-gez v9, :cond_1

    .line 1741
    const-string v3, "Error parseModeData groupIndex"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    return v5

    .line 1745
    :cond_1
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v10

    .local v10, "sizeOfAttrInfo":I
    const/4 v11, 0x4

    add-int/2addr v4, v11

    .line 1746
    if-gez v10, :cond_2

    .line 1747
    const-string v3, "Error parseModeData sizeOfAttrInfo"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return v5

    .line 1751
    :cond_2
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v12

    .local v12, "numOfAttr":I
    add-int/2addr v4, v11

    .line 1752
    if-gez v12, :cond_3

    .line 1753
    const-string v3, "Error parseModeData numOfAttr"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return v5

    .line 1757
    :cond_3
    iget-object v13, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v13, v2, v7, v8, v9}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushModeDB(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1759
    const-string v13, ""

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string v14, "[Mode DB Attr]"

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "modeIndex : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "modeName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "modeDesc : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "groupIndex : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sizeOfAttrInfo : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "numOfAttr : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_0
    if-gt v14, v12, :cond_c

    .line 1770
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v15

    .local v15, "type":I
    add-int/lit8 v4, v4, 0x2

    .line 1771
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    .local v11, "len":I
    add-int/2addr v4, v3

    .line 1772
    if-gez v11, :cond_4

    .line 1773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error modeData item len : type : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    return v5

    .line 1777
    :cond_4
    const/4 v5, 0x1

    if-eq v15, v5, :cond_5

    if-eq v15, v3, :cond_5

    const/4 v3, 0x3

    if-eq v15, v3, :cond_5

    const/4 v3, 0x4

    if-eq v15, v3, :cond_5

    const/4 v3, 0x5

    if-eq v15, v3, :cond_5

    const/4 v3, 0x6

    if-eq v15, v3, :cond_5

    .line 1780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistered type but it can be new one : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_5
    invoke-direct {v0, v1, v4, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v3

    .local v3, "value":[B
    add-int/2addr v4, v11

    .line 1784
    iget-object v5, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v2, v15, v11, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushAttrToModeItem(III[B)V

    .line 1786
    const-string v5, "Value : "

    const/4 v1, 0x1

    if-ne v15, v1, :cond_6

    .line 1787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    .end local v2    # "modeIndex":I
    .local v16, "modeIndex":I
    const-string/jumbo v2, "type : Device Unique Info, len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    if-lez v11, :cond_b

    .line 1789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1791
    .end local v16    # "modeIndex":I
    .restart local v2    # "modeIndex":I
    :cond_6
    move/from16 v16, v2

    .end local v2    # "modeIndex":I
    .restart local v16    # "modeIndex":I
    const/4 v1, 0x2

    if-ne v15, v1, :cond_7

    .line 1792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type : Hidden, len : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    if-lez v11, :cond_b

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1796
    :cond_7
    const/4 v1, 0x3

    if-ne v15, v1, :cond_8

    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type : MTUC, len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    if-lez v11, :cond_b

    .line 1799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1801
    :cond_8
    const/4 v1, 0x4

    if-ne v15, v1, :cond_9

    .line 1802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type : MTUC Value, len : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    if-lez v11, :cond_b

    .line 1804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1806
    :cond_9
    const/4 v1, 0x5

    if-ne v15, v1, :cond_a

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type : Exclusive, len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    if-lez v11, :cond_b

    .line 1809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1811
    :cond_a
    const/4 v1, 0x6

    if-ne v15, v1, :cond_b

    .line 1812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type : Used Once, len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    if-lez v11, :cond_b

    .line 1814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    .end local v3    # "value":[B
    .end local v11    # "len":I
    .end local v15    # "type":I
    :cond_b
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v11, 0x4

    goto/16 :goto_0

    .line 1818
    .end local v14    # "i":I
    .end local v16    # "modeIndex":I
    .restart local v2    # "modeIndex":I
    :cond_c
    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    return v4
.end method

.method private blacklist parseModeDb([BI)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1829
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v0, "magic":Ljava/lang/String;
    add-int/2addr p2, v2

    .line 1830
    const-string v1, "MODB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "engmode_java_manager"

    if-nez v1, :cond_0

    .line 1831
    const-string v1, "Error modeDB magic"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    return v3

    .line 1835
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v1

    .local v1, "sizeOfInfo":I
    add-int/2addr p2, v2

    .line 1836
    if-gez v1, :cond_1

    .line 1837
    const-string v2, "Error modeDB sizeOfInfo"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return v3

    .line 1841
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    .local v5, "numOfData":I
    add-int/2addr p2, v2

    .line 1842
    if-gez v5, :cond_2

    .line 1843
    const-string v2, "Error modeDB numOfData"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    return v3

    .line 1847
    :cond_2
    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v6, "[Mode DB]"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Magic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numOfdata : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 1855
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeData([BI)I

    move-result p2

    .line 1856
    if-gez p2, :cond_3

    .line 1857
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parseModeData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    return v3

    .line 1854
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1862
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist parseModeInfo([BI)I
    .locals 11
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1555
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v0, "magic":Ljava/lang/String;
    add-int/2addr p2, v2

    .line 1556
    const-string v1, "MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "engmode_java_manager"

    if-nez v1, :cond_0

    .line 1557
    const-string v1, "Error modeInfo magic"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return v3

    .line 1561
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v1

    .local v1, "sizeOfInfo":I
    add-int/2addr p2, v2

    .line 1562
    if-gez v1, :cond_1

    .line 1563
    const-string v2, "Error modeInfo sizeOfInfo"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return v3

    .line 1567
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    .local v5, "numOfData":I
    add-int/2addr p2, v2

    .line 1568
    if-gez v5, :cond_2

    .line 1569
    const-string v2, "Error modeInfo numOfData"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    return v3

    .line 1573
    :cond_2
    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const-string v6, "[Mode Info]"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Magic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numOfdata : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v5, :cond_4

    .line 1581
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    .local v7, "type":I
    add-int/lit8 p2, p2, 0x2

    .line 1582
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v8

    .local v8, "len":I
    add-int/lit8 p2, p2, 0x2

    .line 1583
    if-gez v8, :cond_3

    .line 1584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error modeInfo item len : type : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    return v3

    .line 1588
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v8, v10}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushModeInfo(II[B)V

    .line 1589
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    .end local v7    # "type":I
    .end local v8    # "len":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1591
    .end local v6    # "i":I
    :cond_4
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist parseOTPtime([BI)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1984
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    .line 1985
    const-string v1, "engmode_java_manager"

    if-gez v0, :cond_0

    .line 1986
    const-string v0, "Error OTP remain time"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const/4 v0, -0x1

    return v0

    .line 1989
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTP Time : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    iget v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushOTPTime(I)V

    .line 1991
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist parseTokenInfo([BI)I
    .locals 16
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v1, v2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v3, "magic":Ljava/lang/String;
    add-int/2addr v2, v5

    .line 1328
    .end local p2    # "pos":I
    .local v2, "pos":I
    const-string v4, "TOKE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    const-string v7, "engmode_java_manager"

    if-nez v4, :cond_0

    .line 1329
    const-string v4, "Error tokenInfo magic"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return v6

    .line 1333
    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    .local v4, "sizeOfInfo":I
    add-int/2addr v2, v5

    .line 1334
    if-gez v4, :cond_1

    .line 1335
    const-string v5, "Error tokenInfo sizeOfInfo"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return v6

    .line 1339
    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    .local v8, "numOfData":I
    add-int/2addr v2, v5

    .line 1340
    if-gez v8, :cond_2

    .line 1341
    const-string v5, "Error tokenInfo numOfData"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return v6

    .line 1345
    :cond_2
    const-string v5, ""

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const-string v9, "[Token Info]"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Magic : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sizeOfInfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "numOfdata : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    const/4 v10, 0x0

    if-gt v9, v8, :cond_9

    .line 1353
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    .local v11, "type":I
    add-int/lit8 v2, v2, 0x2

    .line 1354
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v12

    .local v12, "len":I
    const/4 v13, 0x2

    add-int/2addr v2, v13

    .line 1355
    if-gez v12, :cond_3

    .line 1356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error tokenInfo item len : type : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return v6

    .line 1360
    :cond_3
    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eq v11, v15, :cond_4

    if-eq v11, v13, :cond_4

    if-eq v11, v14, :cond_4

    .line 1362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unregistered type but it can be new one : "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_4
    invoke-direct {v0, v1, v2, v12}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v6

    .local v6, "value":[B
    add-int/2addr v2, v12

    .line 1366
    iget-object v13, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v13, v11, v12, v6}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushTokenInfo(II[B)V

    .line 1368
    if-ne v11, v14, :cond_5

    .line 1369
    invoke-direct {v0, v6, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v13

    iput v13, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    .line 1372
    :cond_5
    const-string v13, "Value : "

    if-ne v11, v15, :cond_6

    .line 1373
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "type : TokenID, len : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    if-lez v12, :cond_8

    .line 1375
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1377
    :cond_6
    const/4 v15, 0x2

    if-ne v11, v15, :cond_7

    .line 1378
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "type : Device Unique Info, len : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    if-lez v12, :cond_8

    .line 1380
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {v0, v6, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1382
    :cond_7
    if-ne v11, v14, :cond_8

    .line 1383
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "type : Number Of Device Info, len : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    if-lez v12, :cond_8

    .line 1385
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {v0, v6, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    .end local v6    # "value":[B
    .end local v11    # "type":I
    .end local v12    # "len":I
    :cond_8
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    .line 1389
    .end local v9    # "i":I
    :cond_9
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return v10
.end method

.method private blacklist parseValidityInfo([BI)I
    .locals 13
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 1602
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v0, "magic":Ljava/lang/String;
    add-int/2addr p2, v2

    .line 1603
    const-string v1, "VALI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "engmode_java_manager"

    if-nez v1, :cond_0

    .line 1604
    const-string v1, "Error validityInfo magic"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    return v3

    .line 1608
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v1

    .local v1, "sizeOfInfo":I
    add-int/2addr p2, v2

    .line 1609
    if-gez v1, :cond_1

    .line 1610
    const-string v2, "Error validityInfo sizeOfInfo"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return v3

    .line 1614
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    .local v5, "numOfData":I
    add-int/2addr p2, v2

    .line 1615
    if-gez v5, :cond_2

    .line 1616
    const-string v2, "Error validityInfo numOfData"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return v3

    .line 1620
    :cond_2
    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const-string v6, "[Validity Info]"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Magic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numOfdata : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v5, :cond_7

    .line 1628
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    .local v7, "type":I
    add-int/lit8 p2, p2, 0x2

    .line 1629
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v8

    .local v8, "len":I
    const/4 v9, 0x2

    add-int/2addr p2, v9

    .line 1630
    if-gez v8, :cond_3

    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error validityInfo item len : type : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    return v3

    .line 1635
    :cond_3
    const/4 v10, 0x1

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_4

    .line 1636
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unregistered type but it can be new one : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_4
    invoke-direct {p0, p1, p2, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v11

    .local v11, "value":[B
    add-int/2addr p2, v8

    .line 1640
    iget-object v12, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v12, v7, v8, v11}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushValidityInfo(II[B)V

    .line 1642
    const-string v12, "Value : "

    if-ne v7, v10, :cond_5

    .line 1643
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type : Issued Date, len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    if-lez v8, :cond_6

    .line 1645
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1647
    :cond_5
    if-ne v7, v9, :cond_6

    .line 1648
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type : Expiry Date, len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    if-lez v8, :cond_6

    .line 1650
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    .end local v7    # "type":I
    .end local v8    # "len":I
    .end local v11    # "value":[B
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1654
    .end local v6    # "i":I
    :cond_7
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public blacklist parseToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 11
    .param p1, "type_"    # I
    .param p2, "buf"    # [B

    .line 1267
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1268
    const/4 v1, 0x0

    const-string v2, "engmode_java_manager"

    if-nez p2, :cond_0

    .line 1269
    const-string v0, "Error Invalid Argument"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-object v1

    .line 1273
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v3, p2, v0, v6, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v3

    .local v0, "prefix":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1274
    const-string v3, "ENG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1275
    const-string v3, "Error prefix"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-object v1

    .line 1279
    :cond_1
    new-instance v3, Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v3, p2, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v3, "type":Ljava/lang/String;
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1280
    new-instance v6, Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v7, 0x4

    invoke-direct {v6, p2, v5, v7, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v6

    .local v4, "version":Ljava/lang/String;
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1282
    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v0}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setPrefix(Ljava/lang/String;)V

    .line 1283
    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setType(Ljava/lang/String;)V

    .line 1284
    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setVersion(Ljava/lang/String;)V

    .line 1285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prefix : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeDb([BI)I

    move-result v5

    .line 1288
    .local v5, "ret":I
    if-gez v5, :cond_2

    .line 1289
    const-string v6, "Error parseModeDB"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    return-object v1

    .line 1293
    :cond_2
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1294
    invoke-direct {p0, p2, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    .local v6, "sizeOfInfo":I
    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1295
    const-string v9, "Error modeDB sizeOfInfo"

    if-gez v6, :cond_3

    .line 1296
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return-object v1

    .line 1300
    :cond_3
    add-int/2addr v8, v6

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1301
    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1302
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pos Offset : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupDb([BI)I

    move-result v5

    .line 1304
    if-gez v5, :cond_4

    .line 1305
    const-string v7, "Error parseGroupDB"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-object v1

    .line 1309
    :cond_4
    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1310
    invoke-direct {p0, p2, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1311
    if-gez v6, :cond_5

    .line 1312
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-object v1

    .line 1316
    :cond_5
    add-int/2addr v8, v6

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1317
    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1318
    invoke-direct {p0, p2, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseOTPtime([BI)I

    .line 1319
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    return-object v1
.end method

.method public blacklist parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 10
    .param p1, "buf"    # [B

    .line 1178
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1180
    const/4 v1, 0x0

    const-string v2, "engmode_java_manager"

    if-nez p1, :cond_0

    .line 1181
    const-string v0, "Error Invalid Argument"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-object v1

    .line 1185
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v3, p1, v0, v6, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v3

    .local v0, "prefix":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1186
    const-string v3, "ENG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1187
    const-string v3, "Error prefix"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-object v1

    .line 1191
    :cond_1
    new-instance v3, Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v3, p1, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v3, "type":Ljava/lang/String;
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1192
    new-instance v6, Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v7, 0x4

    invoke-direct {v6, p1, v5, v7, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v6

    .local v4, "version":Ljava/lang/String;
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1194
    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v0}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setPrefix(Ljava/lang/String;)V

    .line 1195
    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setType(Ljava/lang/String;)V

    .line 1196
    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setVersion(Ljava/lang/String;)V

    .line 1197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prefix : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->headerLen:I

    .line 1200
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1201
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosTokenInfo:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1202
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseTokenInfo([BI)I

    move-result v5

    .line 1203
    .local v5, "ret":I
    if-gez v5, :cond_2

    .line 1204
    const-string v6, "Error parseTokenInfo"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-object v1

    .line 1207
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "headerLen : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->headerLen:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    if-ge v6, v8, :cond_4

    .line 1210
    iget-object v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v9

    aput v9, v8, v6

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1211
    iget-object v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    aget v8, v8, v6

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseDeviceInfo([BI)I

    move-result v5

    .line 1212
    if-gez v5, :cond_3

    .line 1213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parseDeviceInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-object v1

    .line 1209
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1218
    .end local v6    # "i":I
    :cond_4
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIssuerInfo:I

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1219
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseIssuerInfo([BI)I

    move-result v5

    .line 1220
    if-gez v5, :cond_5

    .line 1221
    const-string v6, "Error parseIssuerInfo"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-object v1

    .line 1225
    :cond_5
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeInfo:I

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1226
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeInfo([BI)I

    move-result v5

    .line 1227
    if-gez v5, :cond_6

    .line 1228
    const-string v6, "Error parseModeInfo"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return-object v1

    .line 1232
    :cond_6
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosValidityInfo:I

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1233
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseValidityInfo([BI)I

    move-result v5

    .line 1234
    if-gez v5, :cond_7

    .line 1235
    const-string v6, "Error parseValidityInfo"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return-object v1

    .line 1239
    :cond_7
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIntegrityInfo:I

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1240
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseIntegrityInfo([BI)I

    move-result v5

    .line 1241
    if-gez v5, :cond_8

    .line 1242
    const-string v6, "Error parseIntegrityInfo"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-object v1

    .line 1246
    :cond_8
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeDb:I

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1247
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeDb([BI)I

    move-result v5

    .line 1248
    if-gez v5, :cond_9

    .line 1249
    const-string v6, "Error parseModeDB"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    return-object v1

    .line 1253
    :cond_9
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosGroupDb:I

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    .line 1254
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupDb([BI)I

    move-result v5

    .line 1255
    if-gez v5, :cond_a

    .line 1256
    const-string v6, "Error parseGroupDB"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return-object v1

    .line 1260
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    return-object v1
.end method
