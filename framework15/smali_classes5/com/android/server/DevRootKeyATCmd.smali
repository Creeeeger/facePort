.class public Lcom/android/server/DevRootKeyATCmd;
.super Ljava/lang/Object;
.source "DevRootKeyATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field protected static final blacklist AT_COMMAND_DEVROOTK:Ljava/lang/String; = "DEVROOTK"

.field protected static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field protected static final blacklist MODE_MNFR_ALLOW_ATCMD:I = 0x1c

.field protected static final blacklist TAG:Ljava/lang/String; = "DEVROOT#ATCmd(1.0.0)"

.field protected static final blacklist VERSION:Ljava/lang/String; = "1.0.0"

.field static blacklist getKeyWaitTime:I

.field protected static final blacklist isExceptionProduct:Z

.field protected static final blacklist isSupportATCommandV2:Z

.field protected static final blacklist productName:Ljava/lang/String;


# instance fields
.field protected blacklist isJDMProductNotInHouse:Z

.field protected blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceIDProvisionManager:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

.field private blacklist mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private blacklist mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

.field private blacklist mTlvKeyBlob:Ljava/lang/String;

.field private blacklist mTlvKeyBlobCounter:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.product.system.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DevRootKeyATCmd;->productName:Ljava/lang/String;

    sget-object v0, Lcom/android/server/DevRootKeyATCmd;->productName:Ljava/lang/String;

    const-string v1, "a36xq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/DevRootKeyATCmd;->productName:Ljava/lang/String;

    const-string/jumbo v3, "gtact5pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/DevRootKeyATCmd;->isExceptionProduct:Z

    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x23

    if-lt v0, v3, :cond_2

    sget-boolean v0, Lcom/android/server/DevRootKeyATCmd;->isExceptionProduct:Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/android/server/DevRootKeyATCmd;->isSupportATCommandV2:Z

    const-string v0, "_nativeJni.dk.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/16 v0, 0x32

    sput v0, Lcom/android/server/DevRootKeyATCmd;->getKeyWaitTime:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevRootKeyATCmd;->isJDMProductNotInHouse:Z

    iput-object p1, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    new-instance v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceIDProvisionManager:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceIDProvisionManager:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->provisionForFirstBoot()V

    :cond_0
    return-void
.end method

.method private native blacklist isExistDRK(I)I
.end method

.method private native blacklist isSupportedDrkV2()Z
.end method

.method private native blacklist readDrkUID(I)Ljava/lang/String;
.end method

.method private native blacklist readKeyInfo(I)[B
.end method


# virtual methods
.method protected blacklist appendKeyBlob(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    iput-object p2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist checkKeyValidity(I)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    nop

    const-string/jumbo v3, "ro.product.first_api_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x21

    if-lt v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    nop

    const-string/jumbo v7, "ro.vendor.build.version.sdk"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    nop

    const-string/jumbo v7, "ro.build.flavor"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a14m"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a14xm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a24"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "a34x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v5

    :goto_3
    if-eqz v3, :cond_5

    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    const/4 v8, 0x4

    const-string v9, "DEVROOT#ATCmd(1.0.0)"

    if-eqz v1, :cond_9

    if-eqz v4, :cond_8

    if-ne p1, v5, :cond_6

    iget-object v10, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceIDProvisionManager:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->provisionForATCommand(I)I

    move-result v0

    goto :goto_4

    :cond_6
    if-ne p1, v8, :cond_7

    iget-object v10, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceIDProvisionManager:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->provisionForATCommand(I)I

    move-result v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    const-string/jumbo v5, "installDeviceID failed"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v5, "validateDeviceKey failed"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    if-eq p1, v5, :cond_a

    if-ne p1, v8, :cond_b

    if-eqz v2, :cond_b

    :cond_a
    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKeyFromKeystore(IZ)I

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v5, "validateDeviceKeyFromKeystore failed"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    return v0
.end method

.method public blacklist generateCertWithTlv(Z)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    new-instance v5, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v5}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    iput-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/16 v6, 0x1d

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    :goto_0
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v6, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->doSelfTestProvService(ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "OK"

    return-object v5

    :cond_1
    const-string v5, "NG_FAIL"

    return-object v5

    nop

    :array_0
    .array-data 1
        0x2t
        0x2t
        0x1et
        -0x11t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x2t
        0x2t
        -0x4t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x30t
        -0x7at
        0x2et
        0x54t
        0x68t
        0x69t
        0x73t
        0x20t
        0x69t
        0x73t
        0x20t
        0x73t
        0x75t
        0x62t
        0x6at
        0x65t
        0x63t
        0x74t
        0x20t
        0x61t
        0x6ct
        0x74t
        0x65t
        0x72t
        0x6et
        0x61t
        0x74t
        0x69t
        0x76t
        0x65t
        0x20t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x20t
        0x66t
        0x69t
        0x65t
        0x6ct
        0x64t
        0x20t
        0x74t
        0x65t
        0x73t
        0x74t
        0x2et
        0x2dt
        0x5ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
    .end array-data
.end method

.method protected native blacklist generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B
.end method

.method public blacklist getCmd()Ljava/lang/String;
    .locals 1

    const-string v0, "DEVROOTK"

    return-object v0
.end method

.method protected blacklist getKeyBlobIndex()I
    .locals 1

    iget v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    return v0
.end method

.method protected blacklist getTotalKeyBlob()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initTlvKeyBlob()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    return-void
.end method

.method protected native blacklist installDeviceBoundCertificate(I[B)I
.end method

.method protected native blacklist installDeviceUnboundKey(I[B)I
.end method

.method protected blacklist isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    :cond_0
    sget-object v4, Lcom/android/server/SecureKeyConst;->GoogleRootPubKey:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/SecureKeyConst;->GoogleDevRootPubKey:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3

    :cond_2
    :goto_0
    return v3
.end method

.method protected blacklist isValidEM()Z
    .locals 5

    sget-boolean v0, Lcom/android/server/SecureKeyConst;->isJDM:Z

    const/4 v1, 0x1

    const-string v2, "DEVROOT#ATCmd(1.0.0)"

    if-nez v0, :cond_0

    const-string v0, "It is not a JDM project"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/SecureKeyConst;->isDevDevice:Ljava/lang/String;

    const-string v3, "0x1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "It is not A User Product Device"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v3, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v1, "Failed to connect to em service"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    const/16 v3, 0x1c

    invoke-virtual {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    const-string v3, "EM Status : Permitted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v1, "EM Status : Not Permitted"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method protected blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ProcessCmd ["

    const-string v3, "DEVROOT#ATCmd(1.0.0)"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevRootKeyATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "NG_FAIL(INVALID_PARAM)"

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    array-length v8, v6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    return-object v7

    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] start"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v11, v6, v10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    aget-object v8, v6, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v8, :cond_2

    :try_start_1
    aget-object v8, v6, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v8, v11, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    :goto_0
    :try_start_2
    aget-object v8, v6, v12

    const-string v13, "0"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v8, :cond_3

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :cond_3
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v6, v10

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v13, v6, v11

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    const-string v13, "OK(NOT SUPPORT DRK)"

    const-string v14, "] is deprecated"

    const-string v9, "01"

    const-string v11, " TB-"

    const-string v10, "NG_FAIL(DATA MISSED) SN-"

    const-string v15, "_"

    const-string v12, "NG_FAIL"

    move/from16 v16, v4

    const-string v4, "FFF"

    const-string v17, "NG_FAIL(NO_TOKEN)"

    move-object/from16 v18, v13

    const-string v13, "NG_FAIL "

    move-object/from16 v19, v3

    const-string v3, "OK"

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move-object/from16 v4, v19

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_8

    :pswitch_1
    const/4 v8, 0x2

    :try_start_6
    aget-object v12, v6, v8

    const/4 v14, 0x5

    invoke-virtual {v12, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aget-object v14, v6, v8

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object/from16 v4, v19

    move-object/from16 v2, p1

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    goto :goto_1

    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v9, v6, v7

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v14, 0x1

    add-int/2addr v9, v14

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v8, v6, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x1a

    if-ne v4, v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v4}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v4

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v4}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_2
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    if-eqz v4, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move/from16 v16, v4

    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_8
    move/from16 v4, v16

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v2, p1

    move-object v5, v3

    move/from16 v16, v4

    move-object/from16 v4, v19

    goto/16 :goto_9

    :pswitch_2
    const/4 v2, 0x2

    :try_start_8
    aget-object v8, v6, v2

    const/4 v12, 0x5

    invoke-virtual {v8, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aget-object v12, v6, v2

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object/from16 v4, v19

    move-object/from16 v2, p1

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    goto :goto_3

    :cond_b
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_3
    const/4 v7, 0x2

    aget-object v9, v6, v7

    aget-object v12, v6, v7

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x1

    add-int/2addr v12, v14

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v1, v7, v4}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    if-eqz v4, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move/from16 v16, v4

    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->sendSakUidMsgAppletBindingIntent()V

    goto :goto_4

    :cond_e
    move/from16 v4, v16

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v2, p1

    move-object v5, v3

    move/from16 v16, v4

    move-object/from16 v4, v19

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_a

    :pswitch_3
    const/4 v2, 0x2

    :try_start_a
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object/from16 v4, v19

    move-object/from16 v2, p1

    goto/16 :goto_9

    :cond_f
    const/4 v2, 0x2

    aget-object v3, v6, v2

    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v2, v6, v2

    const/16 v7, 0x11

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move-object/from16 v4, v19

    goto/16 :goto_9

    :pswitch_4
    invoke-static {}, Lcom/android/server/SecureKeyConst;->checkblockDrkWriting()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v2, p1

    :try_start_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v19

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    return-object v18

    :cond_11
    move-object/from16 v2, p1

    move-object/from16 v8, v19

    const/4 v12, 0x2

    :try_start_c
    aget-object v14, v6, v12

    move-object/from16 v19, v8

    const/4 v8, 0x5

    invoke-virtual {v14, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aget-object v14, v6, v12

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object/from16 v4, v19

    move-object/from16 v2, p1

    goto/16 :goto_9

    :cond_12
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    goto :goto_5

    :cond_13
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_5
    const/4 v7, 0x2

    aget-object v9, v6, v7

    aget-object v12, v6, v7

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x1

    add-int/2addr v12, v14

    aget-object v14, v6, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_14
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v4

    if-nez v4, :cond_15

    return-object v17

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v1, v7, v4}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    if-eqz v4, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move/from16 v16, v4

    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_16
    move/from16 v4, v16

    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-object/from16 v2, p1

    move-object v5, v3

    move/from16 v16, v4

    move-object/from16 v4, v19

    goto/16 :goto_9

    :pswitch_5
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_18

    return-object v17

    :cond_18
    const/4 v2, 0x2

    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object/from16 v4, v19

    move-object/from16 v2, p1

    goto/16 :goto_9

    :cond_19
    const/4 v2, 0x2

    aget-object v3, v6, v2

    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v7, v6, v2

    const/16 v8, 0x11

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move-object v5, v3

    move-object/from16 v4, v19

    goto/16 :goto_9

    :pswitch_6
    invoke-static {}, Lcom/android/server/SecureKeyConst;->checkblockDrkWriting()Z

    move-result v2

    if-eqz v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-object/from16 v2, p1

    :try_start_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v19

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v18

    :cond_1b
    move-object/from16 v2, p1

    move-object/from16 v4, v19

    const/4 v7, 0x2

    aget-object v8, v6, v7

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    const-string v8, "FF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v8

    if-nez v8, :cond_1c

    return-object v17

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    if-nez v8, :cond_1d

    :try_start_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_6

    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move/from16 v16, v8

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move v4, v8

    goto/16 :goto_a

    :cond_1e
    :try_start_11
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v12, v6, v9

    aget-object v13, v6, v9

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v12, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_9

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_7

    :pswitch_7
    move-object/from16 v4, v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "NG_FAIL(UNIMPLEMENTED_CMD)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_9

    :pswitch_8
    move-object/from16 v4, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v7

    if-nez v7, :cond_20

    return-object v17

    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v7

    if-eqz v7, :cond_21

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_9

    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_9

    :pswitch_9
    move-object/from16 v4, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v3

    if-nez v3, :cond_22

    return-object v17

    :cond_22
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/server/DevRootKeyATCmd;->readDrkUID(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto/16 :goto_9

    :cond_23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto/16 :goto_9

    :pswitch_a
    move-object/from16 v4, v19

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lcom/android/server/DevRootKeyATCmd;->checkKeyValidity(I)I

    move-result v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    if-nez v7, :cond_24

    :try_start_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v16, v7

    goto/16 :goto_9

    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    move-object v5, v3

    move/from16 v16, v7

    goto/16 :goto_9

    :pswitch_b
    move-object/from16 v4, v19

    const/4 v7, 0x1

    :try_start_13
    invoke-virtual {v1, v7}, Lcom/android/server/DevRootKeyATCmd;->checkKeyValidity(I)I

    move-result v7
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    if-nez v7, :cond_25

    :try_start_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v16, v7

    goto/16 :goto_9

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    move-object v5, v3

    move/from16 v16, v7

    goto/16 :goto_9

    :pswitch_c
    move-object/from16 v4, v19

    const/4 v7, 0x3

    :try_start_15
    invoke-virtual {v1, v7}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v7
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    if-nez v7, :cond_26

    :try_start_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v16, v7

    goto/16 :goto_9

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    move-object v5, v3

    move/from16 v16, v7

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move v4, v7

    goto/16 :goto_a

    :pswitch_d
    move-object/from16 v4, v19

    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "OK(NOT SUPPORT PMK IN M OS)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_9

    :pswitch_e
    move-object/from16 v4, v19

    const-string/jumbo v7, "factory"

    const-string/jumbo v8, "ro.factory.factory_binary"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Lcom/android/server/DevRootKeyATCmd;->isExistDRK(I)I

    move-result v7
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    if-nez v7, :cond_27

    :try_start_18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v16, v7

    goto/16 :goto_9

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    move-object v5, v3

    move/from16 v16, v7

    goto/16 :goto_9

    :cond_28
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v7

    if-nez v7, :cond_29

    return-object v17

    :cond_29
    iget-object v7, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v7, :cond_2a

    const-string v0, "NG_FAIL(INSTANCE ERROR)"

    return-object v0

    :cond_2a
    iget-object v7, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v7}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v7

    if-nez v7, :cond_2b

    const-string v0, "NG_FAIL(FAILED CONNECTION)"

    return-object v0

    :cond_2b
    iget-object v7, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v7

    if-eqz v7, :cond_2c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_9

    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_9

    :catch_5
    move-exception v0

    :goto_7
    move/from16 v4, v16

    goto :goto_a

    :goto_8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-virtual {v1, v7, v8}, Lcom/android/server/DevRootKeyATCmd;->processTestCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    goto :goto_b

    :catch_6
    move-exception v0

    move/from16 v16, v4

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v16, v4

    :goto_b
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist processTestCmd(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NG_FAIL(UNIMPLEMENTED_CMD)"

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v2, :cond_1

    const-string v2, "NG_FAIL(INSTANCE ERROR)"

    return-object v2

    :cond_1
    const/4 v2, 0x1

    const-string v3, "NG_FAIL"

    const-string v4, "OK"

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v2, "NG_FAIL(INVALID_PARAM)"

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_2

    nop

    goto/16 :goto_1

    :cond_2
    move-object v3, v4

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertWithTlv(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertWithTlv(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v5, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyCertificate(I)[B

    move-result-object v2

    move-object v0, v2

    if-nez v0, :cond_3

    nop

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_1

    :pswitch_4
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v5, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_4

    nop

    goto :goto_1

    :cond_4
    move-object v3, v4

    goto :goto_1

    :pswitch_5
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v5, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v2

    if-nez v2, :cond_5

    nop

    goto :goto_1

    :cond_5
    move-object v3, v4

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v3, v4

    goto :goto_1

    :cond_6
    nop

    goto :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "NG_FAIL(FAILED CONNECTION)"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    goto :goto_1

    :cond_7
    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :goto_0
    move-object v3, v2

    :goto_1
    goto :goto_3

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    return-object v3

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist provisionDeviceID(I)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    nop

    const-string/jumbo v3, "ro.product.first_api_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x21

    if-lt v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    nop

    const-string/jumbo v7, "ro.vendor.build.version.sdk"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    nop

    const-string/jumbo v7, "ro.build.flavor"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a14m"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a14xm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a24"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "a34x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v5

    :goto_3
    if-eqz v3, :cond_5

    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    if-ne p1, v5, :cond_6

    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceIDProvisionManager:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    const/4 v8, 0x6

    invoke-virtual {v5, v8}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->provisionForATCommand(I)I

    move-result v0

    goto :goto_4

    :cond_6
    const/4 v5, 0x4

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceIDProvisionManager:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->provisionForATCommand(I)I

    move-result v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    const-string v5, "DEVROOT#ATCmd(1.0.0)"

    const-string/jumbo v8, "installDeviceID failed"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    return v0
.end method

.method protected blacklist sendSakUidMsgAppletBindingIntent()V
    .locals 9

    const-string v0, "com.samsung.android.ese.test.action.REQUEST"

    const-string v1, "com.samsung.android.ese.test.extra.ID"

    const-string v2, "com.samsung.android.ese.test.extra.CMD"

    const-string v3, "com.sem.factoryapp"

    const-string v4, "com.samsung.permission.ESE_FACTORY"

    const/16 v5, 0x15

    const/16 v6, 0x13

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected native blacklist validateDeviceKey(I)I
.end method

.method protected blacklist validateDeviceKeyFromKeystore(IZ)I
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string/jumbo v3, "gak_rsa_alias"

    const-string v4, "UTF-8"

    const-string v5, "SHA-256"

    const-string/jumbo v6, "gak_ec_alias"

    const-string v7, "AndroidKeyStore"

    const/4 v8, 0x0

    const-string/jumbo v9, "gak_ec_alias"

    const-string/jumbo v10, "gak_ec_challenge"

    const-string/jumbo v11, "gak_rsa_alias"

    const-string/jumbo v12, "gak_rsa_challenge"

    :try_start_0
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v15, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v13, 0xc

    invoke-direct {v15, v6, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v13, 0x100

    invoke-virtual {v15, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v13, "NONE"

    filled-new-array {v5, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string/jumbo v13, "gak_ec_challenge"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_d

    move/from16 v17, v8

    :try_start_1
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_c

    const-string/jumbo v8, "phone"

    if-eqz p2, :cond_4

    :try_start_2
    iget-object v13, v1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v21
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/ProviderException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_c

    move-object/from16 v23, v9

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v13, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v19
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/ProviderException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_7

    move-object/from16 v24, v19

    const/16 v25, 0x0

    :try_start_4
    invoke-virtual {v13, v9}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v26
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v25, v26

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    move-object/from16 v27, v12

    move/from16 v8, v17

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v9, v0

    :try_start_5
    invoke-virtual {v9}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/ProviderException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_7

    :goto_0
    if-eqz v21, :cond_0

    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v9, :cond_0

    move-object/from16 v26, v10

    const/4 v9, 0x1

    :try_start_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v9, v22

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object/from16 v22, v11

    move-object/from16 v27, v12

    move/from16 v8, v17

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v26, v10

    move-object v3, v0

    move-object/from16 v22, v11

    move-object/from16 v27, v12

    move/from16 v8, v17

    goto/16 :goto_9

    :cond_0
    move-object/from16 v26, v10

    move-object/from16 v9, v22

    :goto_1
    if-eqz v24, :cond_1

    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/ProviderException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v10, :cond_1

    move-object/from16 v22, v11

    const/4 v10, 0x2

    :try_start_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v22, v11

    move-object v3, v0

    move-object/from16 v27, v12

    move/from16 v8, v17

    goto/16 :goto_9

    :cond_1
    move-object/from16 v22, v11

    :goto_2
    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/ProviderException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object/from16 v27, v12

    move/from16 v8, v17

    goto/16 :goto_9

    :cond_2
    :goto_3
    :try_start_a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/security/ProviderException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_a} :catch_6

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v27, v12

    :try_start_b
    array-length v12, v10

    if-ge v11, v12, :cond_3

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, v27

    goto :goto_4

    :cond_3
    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v15, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v27, v12

    move-object v3, v0

    move/from16 v8, v17

    goto/16 :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    move-object/from16 v27, v12

    move-object v3, v0

    move/from16 v8, v17

    goto/16 :goto_9

    :cond_4
    move-object/from16 v23, v9

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    move-object/from16 v27, v12

    :goto_5
    const/4 v9, 0x4

    if-ne v2, v9, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v15, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_5
    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v10

    const-string v11, "EC"

    invoke-static {v11, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v11}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    invoke-virtual {v14, v6}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains([Ljava/security/cert/Certificate;)Z

    move-result v12
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/ProviderException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/SignatureException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_b} :catch_b

    if-nez v12, :cond_6

    const/16 v3, -0x2cf6

    return v3

    :cond_6
    const/4 v13, 0x0

    :try_start_c
    aget-object v17, v6, v13

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v13, v17

    const/16 v17, 0x1

    aget-object v21, v6, v17

    check-cast v21, Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v21

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    array-length v9, v6

    const/16 v20, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-virtual {v1, v9, v2}, Lcom/android/server/DevRootKeyATCmd;->isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z

    move-result v9

    const/16 v24, -0x2cf7

    if-nez v9, :cond_7

    return v24

    :cond_7
    new-instance v9, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-object/from16 v25, v6

    const/16 v6, 0xc

    invoke-direct {v9, v3, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    move-object v6, v9

    const/16 v9, 0x800

    invoke-virtual {v6, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v9, "PSS"

    const-string v15, "PKCS1"

    filled-new-array {v9, v15}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v9, "SHA-1"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string/jumbo v5, "gak_rsa_challenge"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    if-eqz p2, :cond_c

    iget-object v4, v1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v15
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/ProviderException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/SignatureException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_c} :catch_a

    const/16 v16, 0x0

    :try_start_d
    invoke-virtual {v4, v9}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v28
    :try_end_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/ProviderException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/SignatureException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_d .. :try_end_d} :catch_a

    move-object/from16 v16, v28

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v9, v0

    :try_start_e
    invoke-virtual {v9}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    :goto_6
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v28, v4

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object/from16 v28, v4

    :goto_7
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    const/4 v9, 0x0

    :goto_8
    move-object/from16 v18, v8

    array-length v8, v4

    if-ge v9, v8, :cond_b

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v4, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, v18

    goto :goto_8

    :cond_b
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_c
    const/4 v4, 0x4

    if-ne v2, v4, :cond_d

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_d
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    const-string v5, "RSA"

    invoke-static {v5, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    invoke-virtual {v14, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains([Ljava/security/cert/Certificate;)Z

    move-result v7
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/ProviderException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/SignatureException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_e} :catch_a

    move v8, v7

    if-nez v8, :cond_e

    const/16 v7, -0x2cf6

    return v7

    :cond_e
    const/4 v7, 0x0

    :try_start_f
    aget-object v9, v3, v7

    check-cast v9, Ljava/security/cert/X509Certificate;

    move-object v7, v9

    const/4 v9, 0x1

    aget-object v10, v3, v9

    check-cast v10, Ljava/security/cert/X509Certificate;

    move-object v9, v10

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    array-length v10, v3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v10, v3, v10

    invoke-virtual {v1, v10, v2}, Lcom/android/server/DevRootKeyATCmd;->isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z

    move-result v10
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/NoSuchProviderException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/KeyStoreException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/ProviderException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/SignatureException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_f} :catch_9

    if-nez v10, :cond_f

    return v24

    :cond_f
    nop

    const/4 v3, 0x0

    return v3

    :catch_9
    move-exception v0

    move-object v3, v0

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v3, v0

    move v8, v12

    goto :goto_9

    :catch_b
    move-exception v0

    move-object v3, v0

    move/from16 v8, v17

    goto :goto_9

    :catch_c
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    move-object/from16 v27, v12

    move-object v3, v0

    move/from16 v8, v17

    goto :goto_9

    :catch_d
    move-exception v0

    move/from16 v17, v8

    move-object/from16 v23, v9

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    move-object/from16 v27, v12

    move-object v3, v0

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, -0x2cf6

    return v4
.end method

.method protected blacklist verifyCertChains(Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "DEVROOT#ATCmd(1.0.0)"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v4, "certification chain size is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    new-instance v6, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v6, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    const-string v7, "Collection"

    invoke-static {v7, v6}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v9, 0x5

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v1, -0x1

    if-ge v10, v11, :cond_1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-string v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v10

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/security/cert/TrustAnchor;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "PKIX"

    invoke-static {v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v12

    new-instance v13, Ljava/security/cert/PKIXParameters;

    invoke-direct {v13, v11}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    invoke-virtual {v13, v7}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    invoke-virtual {v13, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    invoke-virtual {v12, v10, v13}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v14

    check-cast v14, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v14}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "wrong public key returned"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method protected blacklist verifyCertChains([Ljava/security/cert/Certificate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains(Ljava/util/List;)Z

    move-result v3

    return v3
.end method
