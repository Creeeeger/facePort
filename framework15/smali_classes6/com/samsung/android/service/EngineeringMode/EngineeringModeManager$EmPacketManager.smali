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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    const/16 v0, 0x1f4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-direct {v0}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    return-void
.end method

.method private blacklist byteArrayToHex([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getBytes([BII)[B
    .locals 1

    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist getInt([BI)I
    .locals 2

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private blacklist getShort([BI)I
    .locals 2

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private blacklist getStringFromBytes([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method private blacklist parseDeviceInfo([BI)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v1, v2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v2, v5

    const-string v4, "DEVI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    const-string v7, "engmode_java_manager"

    if-nez v4, :cond_0

    const-string v4, "Error deviceInfo magic"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/2addr v2, v5

    if-gez v4, :cond_1

    const-string v5, "Error deviceInfo sizeOfInfo"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    add-int/2addr v2, v5

    if-gez v8, :cond_2

    const-string v5, "Error deviceInfo numOfData"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string v5, ""

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "[Device Info]"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sizeOfInfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :goto_0
    if-gt v9, v8, :cond_8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v10

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    const/4 v12, 0x2

    add-int/2addr v2, v12

    if-gez v11, :cond_3

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

    return v6

    :cond_3
    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eq v10, v14, :cond_4

    if-eq v10, v12, :cond_4

    if-eq v10, v13, :cond_4

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

    :cond_4
    invoke-direct {v0, v1, v2, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v6

    add-int/2addr v2, v11

    iget-object v15, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v15, v10, v11, v6}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushDeviceInfo(II[B)V

    const-string v15, "Value : "

    if-ne v10, v14, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type : Model Name, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_7

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

    :cond_5
    if-ne v10, v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type : DID, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_7

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

    :cond_6
    if-ne v10, v13, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type : IMEI, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_7

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

    :cond_7
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_8
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method

.method private blacklist parseGroupData([BI)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v2

    add-int/lit8 v3, p2, 0x2

    const/4 v4, -0x1

    const-string v5, "engmode_java_manager"

    if-gez v2, :cond_0

    const-string v6, "Error parseGroupData groupIndex"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    const/16 v9, 0x20

    invoke-direct {v6, v1, v3, v9, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v3, v9

    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    const/16 v9, 0x80

    invoke-direct {v8, v1, v3, v9, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v7, v8

    add-int/2addr v3, v9

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    add-int/lit8 v3, v3, 0x4

    if-gez v8, :cond_1

    const-string v9, "Error parseGroupData sizeOfAttrInfo"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v9

    add-int/lit8 v3, v3, 0x4

    if-gez v9, :cond_2

    const-string v10, "Error parseGroupData numOfAttr"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v10, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v10, v2, v6, v7}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushGroupDB(ILjava/lang/String;Ljava/lang/String;)V

    const-string v10, ""

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "[Groupe DB Attr]"

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sizeOfAttrInfo : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    :goto_0
    if-gt v11, v9, :cond_6

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v12

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v13

    add-int/lit8 v3, v3, 0x2

    if-gez v13, :cond_3

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

    return v4

    :cond_3
    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

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

    :cond_4
    invoke-direct {v0, v1, v3, v13}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v4

    add-int/2addr v3, v13

    iget-object v15, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v15, v2, v12, v13, v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushAttrToGroupItem(III[B)V

    if-ne v12, v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "type : No Duplicate, len : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v13, :cond_5

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

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private blacklist parseGroupDb([BI)I
    .locals 9

    const-string v0, ""

    const-string v1, "Enter praseGroupDb"

    const-string v2, "engmode_java_manager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buf Lengh : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POS Offset : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, p1, p2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 p2, p2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "magic : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GRDB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    const-string v0, "Error groupDB magic"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/lit8 p2, p2, 0x4

    if-gez v4, :cond_1

    const-string v0, "Error groupDB sizeOfInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    add-int/lit8 p2, p2, 0x4

    if-gez v6, :cond_2

    const-string v0, "Error groupDB numOfData"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "[Group DB]"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Magic : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sizeOfInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numOfdata : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupData([BI)I

    move-result v7

    move p2, v7

    if-gez p2, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parseGroupData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    nop

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private blacklist parseIntegrityInfo([BI)I
    .locals 13

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr p2, v2

    const-string v1, "INTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "engmode_java_manager"

    if-nez v1, :cond_0

    const-string v1, "Error integInfo magic"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v1

    add-int/2addr p2, v2

    if-gez v1, :cond_1

    const-string v2, "Error integInfo sizeOfInfo"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    add-int/2addr p2, v2

    if-gez v5, :cond_2

    const-string v2, "Error integInfo numOfData"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[Integrity Info]"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v5, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v8

    const/4 v9, 0x2

    add-int/2addr p2, v9

    if-gez v8, :cond_3

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

    return v3

    :cond_3
    const/4 v10, 0x1

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_4

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

    :cond_4
    invoke-direct {p0, p1, p2, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v11

    add-int/2addr p2, v8

    iget-object v12, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v12, v7, v8, v11}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushIntegrityInfo(II[B)V

    const-string v12, "Value : "

    if-ne v7, v10, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type : Signature, len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v8, :cond_6

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

    :cond_5
    if-ne v7, v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type : Server Cert, len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v8, :cond_6

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

    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private blacklist parseIssuerInfo([BI)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v1, v2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v2, v5

    const-string v4, "ISSU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    const-string v7, "engmode_java_manager"

    if-nez v4, :cond_0

    const-string v4, "Error issuerInfo magic"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/2addr v2, v5

    if-gez v4, :cond_1

    const-string v5, "Error issuerInfo sizeOfInfo"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    add-int/2addr v2, v5

    if-gez v8, :cond_2

    const-string v5, "Error issuerInfo numOfData"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string v5, ""

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "[Issuer Info]"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sizeOfInfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :goto_0
    if-gt v9, v8, :cond_b

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v10

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    const/4 v12, 0x2

    add-int/2addr v2, v12

    if-gez v11, :cond_3

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

    return v6

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

    :cond_4
    invoke-direct {v0, v1, v2, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v14

    add-int/2addr v2, v11

    iget-object v15, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v15, v10, v11, v14}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushIssuerInfo(II[B)V

    const-string v15, "Value : "

    if-ne v10, v13, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type : Single ID, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_a

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

    :cond_5
    if-ne v10, v12, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type : OTP, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_a

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

    :cond_6
    if-ne v10, v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type : Nonce, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_a

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

    :cond_7
    const/16 v6, 0x1001

    if-ne v10, v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type : System ID, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_a

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

    :cond_8
    const/16 v6, 0x1002

    if-ne v10, v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type : IP, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_a

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

    :cond_9
    const/16 v6, 0x1003

    if-ne v10, v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type : MAC, len : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_a

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

    :cond_a
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method

.method private blacklist parseModeData([BI)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v2

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    const/4 v5, -0x1

    const-string v6, "engmode_java_manager"

    if-gez v2, :cond_0

    const-string v3, "Error parseModeData modeIndex"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    const/16 v10, 0x20

    invoke-direct {v7, v1, v4, v10, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v4, v10

    new-instance v9, Ljava/lang/String;

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    const/16 v10, 0x80

    invoke-direct {v9, v1, v4, v10, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v8, v9

    add-int/2addr v4, v10

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v9

    add-int/2addr v4, v3

    if-gez v9, :cond_1

    const-string v3, "Error parseModeData groupIndex"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v10

    const/4 v11, 0x4

    add-int/2addr v4, v11

    if-gez v10, :cond_2

    const-string v3, "Error parseModeData sizeOfAttrInfo"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v12

    add-int/2addr v4, v11

    if-gez v12, :cond_3

    const-string v3, "Error parseModeData numOfAttr"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    iget-object v13, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v13, v2, v7, v8, v9}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushModeDB(ILjava/lang/String;Ljava/lang/String;I)V

    const-string v13, ""

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "[Mode DB Attr]"

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sizeOfAttrInfo : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    :goto_0
    if-gt v14, v12, :cond_c

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v15

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    add-int/2addr v4, v3

    if-gez v11, :cond_4

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

    return v5

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

    :cond_5
    invoke-direct {v0, v1, v4, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v3

    add-int/2addr v4, v11

    iget-object v5, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v2, v15, v11, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushAttrToModeItem(III[B)V

    const-string v5, "Value : "

    const/4 v1, 0x1

    if-ne v15, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    const-string v2, "type : Device Unique Info, len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_b

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

    :cond_6
    move/from16 v16, v2

    const/4 v1, 0x2

    if-ne v15, v1, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type : Hidden, len : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_b

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

    :cond_7
    const/4 v1, 0x3

    if-ne v15, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type : MTUC, len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_b

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

    :cond_8
    const/4 v1, 0x4

    if-ne v15, v1, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type : MTUC Value, len : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_b

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

    :cond_9
    const/4 v1, 0x5

    if-ne v15, v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type : Exclusive, len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_b

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

    :cond_a
    const/4 v1, 0x6

    if-ne v15, v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type : Used Once, len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_b

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

    :cond_b
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v11, 0x4

    goto/16 :goto_0

    :cond_c
    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private blacklist parseModeDb([BI)I
    .locals 8

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr p2, v2

    const-string v1, "MODB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "engmode_java_manager"

    if-nez v1, :cond_0

    const-string v1, "Error modeDB magic"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v1

    add-int/2addr p2, v2

    if-gez v1, :cond_1

    const-string v2, "Error modeDB sizeOfInfo"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    add-int/2addr p2, v2

    if-gez v5, :cond_2

    const-string v2, "Error modeDB numOfData"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[Mode DB]"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeData([BI)I

    move-result p2

    if-gez p2, :cond_3

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

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist parseModeInfo([BI)I
    .locals 11

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr p2, v2

    const-string v1, "MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "engmode_java_manager"

    if-nez v1, :cond_0

    const-string v1, "Error modeInfo magic"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v1

    add-int/2addr p2, v2

    if-gez v1, :cond_1

    const-string v2, "Error modeInfo sizeOfInfo"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    add-int/2addr p2, v2

    if-gez v5, :cond_2

    const-string v2, "Error modeInfo numOfData"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[Mode Info]"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v5, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v8

    add-int/lit8 p2, p2, 0x2

    if-gez v8, :cond_3

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

    return v3

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v8, v10}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushModeInfo(II[B)V

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

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private blacklist parseOTPtime([BI)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    const-string v1, "engmode_java_manager"

    if-gez v0, :cond_0

    const-string v0, "Error OTP remain time"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

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

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    iget v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushOTPTime(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist parseTokenInfo([BI)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v1, v2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v2, v5

    const-string v4, "TOKE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    const-string v7, "engmode_java_manager"

    if-nez v4, :cond_0

    const-string v4, "Error tokenInfo magic"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/2addr v2, v5

    if-gez v4, :cond_1

    const-string v5, "Error tokenInfo sizeOfInfo"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    add-int/2addr v2, v5

    if-gez v8, :cond_2

    const-string v5, "Error tokenInfo numOfData"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string v5, ""

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "[Token Info]"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sizeOfInfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :goto_0
    const/4 v10, 0x0

    if-gt v9, v8, :cond_9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v12

    const/4 v13, 0x2

    add-int/2addr v2, v13

    if-gez v12, :cond_3

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

    return v6

    :cond_3
    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eq v11, v15, :cond_4

    if-eq v11, v13, :cond_4

    if-eq v11, v14, :cond_4

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

    :cond_4
    invoke-direct {v0, v1, v2, v12}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v6

    add-int/2addr v2, v12

    iget-object v13, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v13, v11, v12, v6}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushTokenInfo(II[B)V

    if-ne v11, v14, :cond_5

    invoke-direct {v0, v6, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v13

    iput v13, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    :cond_5
    const-string v13, "Value : "

    if-ne v11, v15, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type : TokenID, len : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_8

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

    :cond_6
    const/4 v15, 0x2

    if-ne v11, v15, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "type : Device Unique Info, len : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_8

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

    :cond_7
    if-ne v11, v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "type : Number Of Device Info, len : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_8

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

    :cond_8
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_9
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private blacklist parseValidityInfo([BI)I
    .locals 13

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr p2, v2

    const-string v1, "VALI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "engmode_java_manager"

    if-nez v1, :cond_0

    const-string v1, "Error validityInfo magic"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v1

    add-int/2addr p2, v2

    if-gez v1, :cond_1

    const-string v2, "Error validityInfo sizeOfInfo"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    add-int/2addr p2, v2

    if-gez v5, :cond_2

    const-string v2, "Error validityInfo numOfData"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[Validity Info]"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v5, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v8

    const/4 v9, 0x2

    add-int/2addr p2, v9

    if-gez v8, :cond_3

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

    return v3

    :cond_3
    const/4 v10, 0x1

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_4

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

    :cond_4
    invoke-direct {p0, p1, p2, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v11

    add-int/2addr p2, v8

    iget-object v12, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v12, v7, v8, v11}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushValidityInfo(II[B)V

    const-string v12, "Value : "

    if-ne v7, v10, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type : Issued Date, len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v8, :cond_6

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

    :cond_5
    if-ne v7, v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type : Expiry Date, len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v8, :cond_6

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

    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public blacklist parseToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const/4 v0, 0x0

    const-string v1, "engmode_java_manager"

    if-nez p2, :cond_0

    const-string v2, "Error Invalid Argument"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v2, p2, v3, v6, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const-string v3, "ENG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Error prefix"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v3, p2, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    new-instance v5, Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v7, 0x4

    invoke-direct {v5, p2, v6, v7, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v5

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v2}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setType(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setVersion(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prefix : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeDb([BI)I

    move-result v5

    if-gez v5, :cond_2

    const-string v6, "Error parseModeDB"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const-string v8, "Error modeDB sizeOfInfo"

    if-gez v6, :cond_3

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v9, v7

    iput v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pos Offset : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupDb([BI)I

    move-result v5

    if-gez v5, :cond_4

    const-string v7, "Error parseGroupDB"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v9, v7

    iput v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v9, v7

    iput v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    if-gez v6, :cond_5

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseOTPtime([BI)I

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    return-object v0
.end method

.method public blacklist parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const/4 v0, 0x0

    const-string v1, "engmode_java_manager"

    if-nez p1, :cond_0

    const-string v2, "Error Invalid Argument"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v2, p1, v3, v6, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const-string v3, "ENG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Error prefix"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v3, p1, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    new-instance v5, Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v7, 0x4

    invoke-direct {v5, p1, v6, v7, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v5

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v2}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setType(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setVersion(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prefix : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->headerLen:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosTokenInfo:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosTokenInfo:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseTokenInfo([BI)I

    move-result v5

    if-gez v5, :cond_2

    const-string v6, "Error parseTokenInfo"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

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

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    if-ge v6, v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v9

    aput v9, v8, v6

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget-object v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    aget v8, v8, v6

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseDeviceInfo([BI)I

    move-result v5

    if-gez v5, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parseDeviceInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIssuerInfo:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIssuerInfo:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseIssuerInfo([BI)I

    move-result v5

    if-gez v5, :cond_5

    const-string v6, "Error parseIssuerInfo"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeInfo:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeInfo:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeInfo([BI)I

    move-result v5

    if-gez v5, :cond_6

    const-string v6, "Error parseModeInfo"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosValidityInfo:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosValidityInfo:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseValidityInfo([BI)I

    move-result v5

    if-gez v5, :cond_7

    const-string v6, "Error parseValidityInfo"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_7
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIntegrityInfo:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIntegrityInfo:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseIntegrityInfo([BI)I

    move-result v5

    if-gez v5, :cond_8

    const-string v6, "Error parseIntegrityInfo"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_8
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeDb:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeDb:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeDb([BI)I

    move-result v5

    if-gez v5, :cond_9

    const-string v6, "Error parseModeDB"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosGroupDb:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosGroupDb:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupDb([BI)I

    move-result v5

    if-gez v5, :cond_a

    const-string v6, "Error parseGroupDB"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    return-object v0
.end method
