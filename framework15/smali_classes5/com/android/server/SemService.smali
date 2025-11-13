.class public final Lcom/android/server/SemService;
.super Lcom/samsung/android/service/SemService/ISemService$Stub;
.source "SemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SemService$SPITimeoutTask;
    }
.end annotation


# static fields
.field public static final blacklist ERROR:I = -0x1

.field public static final blacklist ERROR_ALREADY_OPENED:I = -0xb

.field public static final blacklist ERROR_CLASS_NOT_FOUND:I = -0x2

.field public static final blacklist ERROR_EXCEPTION:I = -0x5a

.field public static final blacklist ERROR_NOT_OPENED:I = -0xc

.field public static final blacklist ERROR_NOT_SUPPORTED:I = -0xa

.field public static final blacklist ERROR_NO_PERMISSION:I = -0x5b

.field public static final blacklist ERROR_NO_PERMISSION_SIZE:I = 0x0

.field public static final blacklist ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

.field public static final blacklist ERROR_NO_SERVICE:I = -0x5c

.field private static final blacklist ERROR_SPI_ALREADY_OPENED:I = -0xc8

.field public static final blacklist ERROR_UNSAT_LINK:I = -0x3

.field private static final blacklist MAX_GET_ESEA_DATA:I = 0x400

.field private static final blacklist MAX_RETRY_SPI_CHECK:I = 0xf

.field private static final blacklist MAX_TIMEOUT_IN_SECOND:J = 0x1eL

.field public static final blacklist NO_ERROR:I = 0x0

.field public static final blacklist NO_ERROR_SPI:I = 0x0

.field public static final blacklist SSD_NOT_EXIST_APPLET_EXIST:I = 0x5

.field public static final blacklist SSD_NOT_EXIST_APPLET_NOT_EXIST:I = 0x4

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_EXIST:I = 0x2

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_EXIST:I = 0x3

.field public static final blacklist SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final blacklist SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEC_ESE_Service"

.field private static blacklist chipVendor:Ljava/lang/String;

.field private static blacklist cosName:Ljava/lang/String;

.field private static final blacklist mLock:Ljava/lang/Object;


# instance fields
.field blacklist CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist SPITimeout:Ljava/util/Timer;

.field private blacklist bodyData:[B

.field private blacklist bytePublicKeyDataSKMS:[B

.field private blacklist bytePublicKeyDataSecurity:[B

.field private blacklist bytePublicKeySKMSLen:I

.field private blacklist bytePublicKeySecurityLen:I

.field private blacklist connectivityManager:Landroid/net/ConnectivityManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsOpened:Z

.field private blacklist mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

.field private blacklist secureBuffer:Ljava/lang/StringBuffer;

.field private blacklist skuChipName:Ljava/lang/String;

.field private blacklist spiOpenPackageName:Ljava/lang/String;

.field private blacklist supportEsek:Z

.field private blacklist supportReeSpi:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/server/SemService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseSpiUsage(Lcom/android/server/SemService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    const-string v0, "UT8.2U"

    sput-object v0, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v0, "GEMALTO"

    sput-object v0, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "sec_sem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;-><init>()V

    const/16 v0, 0x12c

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    iput-boolean v2, p0, Lcom/android/server/SemService;->supportEsek:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/SemService;->mIsOpened:Z

    iput-object v1, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, p0, Lcom/android/server/SemService;->bodyData:[B

    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start SemService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/SemServiceAccessControl;

    invoke-direct {v1, p1}, Lcom/android/server/SemServiceAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->setAllowedPackages()V

    iput-object p1, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->setGrdmAllowedPackages()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->readSkuProperty()V

    sget-object v1, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    const-string v2, "SKU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->setCosNameProperty()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->setCosNameProperty()V

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private blacklist encData(Ljava/lang/String;)Ljava/lang/String;
    .locals 29

    move-object/from16 v1, p0

    const-string v0, "RSA/ECB/OAEPWITHSHA-256ANDMGF1PADDING"

    const-string v2, "S-ED"

    const-string v3, "SEC_ESE_Service"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x12c

    new-array v4, v2, [B

    new-array v2, v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v11, 0x30

    const/16 v12, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_0
    iget v15, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2a

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-lt v15, v5, :cond_1

    :try_start_1
    iget v15, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v15, v5, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v19, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_5

    :cond_1
    :goto_0
    :try_start_2
    const-string v15, "PK Error"

    invoke-static {v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v15

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v17

    move/from16 v18, v17

    iput v15, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    move/from16 v5, v18

    iput v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    move/from16 v18, v5

    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    iget-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    if-eqz v5, :cond_4

    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_28
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_27

    move-object/from16 v19, v2

    const/4 v2, 0x1

    if-lt v5, v2, :cond_3

    :try_start_3
    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    if-ge v5, v2, :cond_2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto/16 :goto_2

    :cond_2
    const-string v2, "GET DATA"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v2, 0x10

    new-array v5, v2, [B

    const/16 v15, 0x20

    new-array v2, v15, [B

    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v20
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_22
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_21

    move-object/from16 v21, v20

    move-object/from16 v22, v6

    move-object/from16 v15, v21

    move-object/from16 v21, v4

    const/16 v4, 0x10

    :try_start_4
    invoke-virtual {v15, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/security/SecureRandom;->setSeed([B)V

    invoke-virtual {v15, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v4, 0x20

    invoke-virtual {v15, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/security/SecureRandom;->setSeed([B)V

    invoke-virtual {v15, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v4, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1e

    move-object v6, v4

    :try_start_5
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1b

    move-object v7, v4

    :try_start_6
    const-string v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_18

    move-object/from16 v23, v2

    const/4 v2, 0x1

    :try_start_7
    invoke-virtual {v4, v2, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    move-object/from16 v24, v5

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_15

    move-object/from16 v25, v8

    :try_start_8
    iget-object v8, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    invoke-direct {v5, v8}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    move-object/from16 v16, v5

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_12

    move-object/from16 v26, v9

    :try_start_9
    iget-object v9, v1, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    invoke-direct {v5, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    const/16 v1, 0x30

    new-array v1, v1, [B

    move-object/from16 v22, v2

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_f

    move-object/from16 v27, v5

    const/4 v5, 0x0

    move-object/from16 v28, v7

    const/16 v7, 0x10

    :try_start_a
    invoke-static {v2, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_c

    move-object/from16 v18, v6

    const/16 v6, 0x20

    :try_start_b
    invoke-static {v2, v5, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_9

    :try_start_c
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_6

    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    move-object v14, v6

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move-object v13, v7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v7, 0x2

    invoke-static {v13, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_3

    return-object v3

    :catch_3
    move-exception v0

    move-object v8, v2

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v8, v2

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v8, v2

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_5

    :catch_6
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_5

    :catch_9
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_3

    :catch_a
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_4

    :catch_b
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_5

    :catch_c
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_3

    :catch_d
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_4

    :catch_e
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_5

    :catch_f
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_3

    :catch_10
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_4

    :catch_11
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_5

    :catch_12
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    goto/16 :goto_3

    :catch_13
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    goto/16 :goto_4

    :catch_14
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    goto/16 :goto_5

    :catch_15
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    goto/16 :goto_3

    :catch_16
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    goto/16 :goto_4

    :catch_17
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    goto/16 :goto_5

    :catch_18
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_19
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_4

    :catch_1a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_5

    :catch_1b
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_1c
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_4

    :catch_1d
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_5

    :catch_1e
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    goto/16 :goto_3

    :catch_1f
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    goto/16 :goto_4

    :catch_20
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    goto/16 :goto_5

    :catch_21
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_22
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_4

    :catch_23
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto/16 :goto_5

    :cond_3
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto :goto_2

    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    :goto_2
    :try_start_e
    const-string v0, "GET DATA FAIL"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_25
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_24

    const/4 v1, 0x0

    return-object v1

    :catch_24
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto :goto_3

    :catch_25
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_4

    :catch_26
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_5

    :catch_27
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto :goto_3

    :catch_28
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto :goto_4

    :catch_29
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    goto :goto_5

    :catch_2a
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENC Data Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :catch_2b
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENC Data Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :catch_2c
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENC Data NullpointException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getAccessRule()Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_Service"

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    move-object v3, v0

    const/4 v0, 0x5

    new-array v4, v0, [B

    fill-array-data v4, :array_1

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    move-object v5, v0

    const/16 v0, 0x2400

    new-array v6, v0, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-array v13, v0, [B

    const/4 v14, -0x1

    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v15

    move v10, v15

    if-eqz v10, :cond_0

    const-string v0, "S-LOG Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_0
    const/4 v9, 0x1

    array-length v15, v3

    invoke-virtual {v1, v3, v15, v13, v12}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    move v14, v15

    array-length v15, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Select Error"

    const/4 v11, 0x2

    if-ge v15, v11, :cond_1

    :try_start_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    move-object v13, v15

    if-lt v14, v11, :cond_6

    add-int/lit8 v15, v14, -0x2

    aget-byte v15, v13, v15

    const/16 v11, -0x70

    if-ne v15, v11, :cond_6

    add-int/lit8 v15, v14, -0x1

    aget-byte v15, v13, v15

    if-nez v15, :cond_6

    const/4 v15, 0x0

    :goto_0
    const/16 v11, 0x32

    if-ge v15, v11, :cond_6

    const/16 v11, 0x2400

    new-array v12, v11, [B

    if-nez v15, :cond_2

    array-length v13, v4

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v13, v12, v11}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    move v11, v13

    move v14, v11

    goto :goto_1

    :cond_2
    array-length v11, v5

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v11, v12, v13}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v11

    move v14, v11

    :goto_1
    array-length v11, v12

    const/4 v13, 0x2

    if-ge v11, v13, :cond_3

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_3
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    move-object v13, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SEND SW["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v14, -0x2

    aget-byte v12, v13, v12

    invoke-static {v12}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v14, -0x1

    aget-byte v12, v13, v12

    invoke-static {v12}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    if-lt v14, v11, :cond_4

    add-int/lit8 v11, v14, -0x2

    aget-byte v11, v13, v11

    const/16 v12, 0x69

    if-ne v11, v12, :cond_4

    add-int/lit8 v11, v14, -0x1

    aget-byte v11, v13, v11

    const/16 v12, -0x7b

    if-ne v11, v12, :cond_4

    goto :goto_2

    :cond_4
    const/4 v11, 0x2

    if-lt v14, v11, :cond_5

    add-int/lit8 v12, v14, -0x2

    aget-byte v12, v13, v12

    const/16 v11, -0x70

    if-ne v12, v11, :cond_5

    add-int/lit8 v12, v14, -0x1

    aget-byte v12, v13, v12

    if-nez v12, :cond_5

    add-int/lit8 v14, v14, -0x2

    const/4 v12, 0x0

    invoke-static {v13, v12, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v14

    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v0, "Send Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_6
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GET DATA Error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v9, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GET DATA EXCEPTION "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    move v9, v2

    :cond_7
    nop

    :cond_8
    :goto_3
    const/4 v2, 0x0

    return-object v2

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x41t
        0x43t
        0x4ct
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x36t
        -0x1t
        0x40t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x80t
        -0x36t
        -0x1t
        0x60t
        0x0t
    .end array-data
.end method

.method private native blacklist getDPDLog()[B
.end method

.method private blacklist getDate()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd hh:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    return-object v1
.end method

.method private blacklist getEncodedDCKLog()Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_Service"

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    move-object v3, v0

    const/4 v0, 0x5

    new-array v4, v0, [B

    fill-array-data v4, :array_1

    new-array v5, v0, [B

    fill-array-data v5, :array_2

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    move-object v6, v0

    const/4 v7, 0x0

    const/16 v0, 0x2400

    new-array v8, v0, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    new-array v14, v0, [B

    const/4 v15, -0x1

    invoke-virtual {v1, v13}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v16

    move/from16 v11, v16

    if-eqz v11, :cond_0

    const-string v0, "S-LOG DCK Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_0
    const/4 v7, 0x1

    array-length v0, v3

    invoke-virtual {v1, v3, v0, v14, v13}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v0

    array-length v15, v14

    const/4 v12, 0x2

    if-ge v15, v12, :cond_1

    const-string v12, "Select Error"

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v13}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-static {v14, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    move-object v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Select SW : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v0, -0x2

    aget-byte v15, v14, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v0, -0x1

    aget-byte v15, v14, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v12, :cond_9

    add-int/lit8 v13, v0, -0x2

    aget-byte v13, v14, v13

    const/16 v15, -0x70

    if-ne v13, v15, :cond_9

    add-int/lit8 v13, v0, -0x1

    aget-byte v13, v14, v13

    if-nez v13, :cond_9

    const/16 v13, 0x2400

    new-array v15, v13, [B

    move-object v13, v15

    array-length v14, v4

    const/4 v15, 0x0

    invoke-virtual {v1, v4, v14, v13, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v14

    move v0, v14

    array-length v14, v13

    if-ge v14, v12, :cond_2

    const-string v12, "Get Version Error"

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_2
    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    move-object v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DCK Version : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v13}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :goto_0
    const/16 v15, 0x41

    if-ge v14, v15, :cond_8

    const/16 v15, 0x2400

    new-array v12, v15, [B

    if-nez v14, :cond_3

    array-length v13, v5

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v13, v12, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    move v0, v13

    goto :goto_1

    :cond_3
    array-length v13, v6

    const/4 v15, 0x0

    invoke-virtual {v1, v6, v13, v12, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    move v0, v13

    :goto_1
    array-length v13, v12

    const/4 v15, 0x2

    if-ge v13, v15, :cond_4

    const-string v13, "Get Log Error"

    invoke-static {v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_4
    invoke-static {v12, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SEND SW["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "] : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v15, v0, -0x2

    aget-byte v15, v13, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v15, v0, -0x1

    aget-byte v15, v13, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    if-lt v0, v12, :cond_5

    add-int/lit8 v12, v0, -0x2

    aget-byte v12, v13, v12

    const/16 v15, -0x70

    if-ne v12, v15, :cond_6

    add-int/lit8 v12, v0, -0x1

    aget-byte v12, v13, v12

    if-nez v12, :cond_6

    const-string v12, "GET DATA FINISH"

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    sub-int/2addr v0, v12

    const/4 v12, 0x0

    invoke-static {v13, v12, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v0

    goto :goto_2

    :cond_5
    const/16 v15, -0x70

    :cond_6
    const/4 v12, 0x2

    if-lt v0, v12, :cond_7

    add-int/lit8 v12, v0, -0x2

    aget-byte v12, v13, v12

    const/16 v15, 0x63

    if-ne v12, v15, :cond_7

    add-int/lit8 v12, v0, -0x1

    aget-byte v12, v13, v12

    const/16 v15, 0x10

    if-ne v12, v15, :cond_7

    const-string v12, "GET DATA MORE"

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x2

    const/4 v12, 0x0

    invoke-static {v13, v12, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v0

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_7
    const-string v12, "Send Error"

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_8
    :goto_2
    nop

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v7, 0x0

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    move-object v8, v12

    const/4 v12, 0x2

    invoke-static {v8, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SEMSVC[4] : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_9
    const-string v12, "Select Failed"

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v0

    const-string v11, "GET DATA EXCEPTION"

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_a

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    :cond_a
    const/4 v2, 0x0

    return-object v2

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xdt
        -0x60t
        0x0t
        0x0t
        0x8t
        0x9t
        0x43t
        0x43t
        0x43t
        0x44t
        0x4bt
        0x41t
        0x76t
        0x31t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x80t
        -0x36t
        -0x61t
        0x8t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x80t
        -0x8t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private blacklist getSCRSActivationList()Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_Service"

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    move-object v3, v0

    const/16 v0, 0x8

    new-array v4, v0, [B

    fill-array-data v4, :array_1

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    move-object v5, v0

    const/16 v0, 0x2400

    new-array v6, v0, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-array v13, v0, [B

    const/4 v14, -0x1

    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v15

    move v10, v15

    if-eqz v10, :cond_0

    const-string v0, "S-LOG SCRS Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_0
    const/4 v9, 0x1

    array-length v15, v3

    invoke-virtual {v1, v3, v15, v13, v12}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    move v14, v15

    array-length v15, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Select Error"

    const/4 v11, 0x2

    if-ge v15, v11, :cond_1

    :try_start_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    move-object v13, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Select SW : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v15, v14, -0x2

    aget-byte v15, v13, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v15, v14, -0x1

    aget-byte v15, v13, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v14, v11, :cond_7

    add-int/lit8 v12, v14, -0x2

    aget-byte v12, v13, v12

    const/16 v15, -0x70

    if-ne v12, v15, :cond_7

    add-int/lit8 v12, v14, -0x1

    aget-byte v12, v13, v12

    if-nez v12, :cond_7

    const/4 v12, 0x0

    :goto_0
    const/16 v15, 0xa

    if-ge v12, v15, :cond_7

    const/16 v15, 0x2400

    new-array v11, v15, [B

    if-nez v12, :cond_2

    array-length v13, v4

    const/4 v15, 0x0

    invoke-virtual {v1, v4, v13, v11, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    goto :goto_1

    :cond_2
    array-length v13, v5

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v13, v11, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    :goto_1
    array-length v14, v11

    const/4 v15, 0x2

    if-ge v14, v15, :cond_3

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_3
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    move-object v11, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SEND SW["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v13, -0x2

    aget-byte v15, v11, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v13, -0x1

    aget-byte v15, v11, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x2

    if-lt v13, v14, :cond_4

    add-int/lit8 v14, v13, -0x2

    aget-byte v14, v11, v14

    const/16 v15, -0x70

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v13, -0x1

    aget-byte v14, v11, v14

    if-nez v14, :cond_5

    const-string v0, "GET DATA FINISH"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    add-int/lit8 v14, v13, -0x2

    const/4 v13, 0x0

    invoke-static {v11, v13, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v14

    move-object v13, v11

    goto :goto_2

    :cond_4
    const/16 v15, -0x70

    :cond_5
    const/4 v14, 0x2

    if-lt v13, v14, :cond_6

    add-int/lit8 v16, v13, -0x2

    aget-byte v14, v11, v16

    const/16 v15, 0x63

    if-ne v14, v15, :cond_6

    add-int/lit8 v14, v13, -0x1

    aget-byte v14, v11, v14

    const/16 v15, 0x10

    if-ne v14, v15, :cond_6

    const-string v14, "GET DATA MORE"

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v13, -0x2

    const/4 v13, 0x0

    invoke-static {v11, v13, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v14

    add-int/lit8 v12, v12, 0x1

    move-object v13, v11

    const/4 v11, 0x2

    const/16 v15, -0x70

    goto/16 :goto_0

    :cond_6
    const-string v0, "Send Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v2, 0x0

    return-object v2

    :cond_7
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v10, "GET DATA EXCEPTION"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v9, 0x0

    :cond_8
    const/4 v2, 0x0

    return-object v2

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0xet
        0x40t
        0x0t
        0x2t
        0x4ft
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x80t
        -0xet
        0x40t
        0x1t
        0x2t
        0x4ft
        0x0t
        0x0t
    .end array-data
.end method

.method private blacklist isGRDMSupported()Z
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist isShutdownRequested()Z
    .locals 5

    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v1, "sys.shutdown.requested"

    :try_start_0
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Not supported to get ESEA during shutdown process"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to get prop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isValidPackageForSpi()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_0

    const-string v0, "SPI is currently not in use"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package name currently using SPI does not match, opened : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requested : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist parseScript([BI)Z
    .locals 18

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v0, ","

    const/high16 v3, 0x200000

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "SEC_ESE_Service"

    if-nez v1, :cond_0

    :try_start_0
    const-string v0, "data is null"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v15, 0x0

    return v15

    :catch_0
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v4, p0

    goto/16 :goto_4

    :cond_0
    move/from16 v16, v3

    const/high16 v3, 0x200000

    if-gt v2, v3, :cond_16

    if-gez v2, :cond_1

    move/from16 v17, v4

    move-object/from16 v4, p0

    goto/16 :goto_3

    :cond_1
    :try_start_1
    array-length v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-ge v3, v2, :cond_2

    :try_start_2
    const-string v0, "data overflow"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x0

    return v3

    :catch_1
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v4, p0

    goto/16 :goto_4

    :cond_2
    :try_start_3
    aget-byte v3, v1, v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v17, v4

    const/16 v4, -0x20

    if-ne v3, v4, :cond_15

    add-int/lit8 v3, v14, 0x1

    :try_start_4
    invoke-static {v1, v3}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v3

    move v5, v3

    if-gtz v5, :cond_3

    const-string/jumbo v0, "not supported tag e0"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_3
    add-int/lit8 v3, v14, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-ge v3, v4, :cond_4

    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v14, 0x1

    aget-byte v3, v1, v3

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_5

    add-int/lit8 v14, v14, 0x3

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v14, 0x1

    aget-byte v3, v1, v3

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_6

    add-int/lit8 v14, v14, 0x4

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v14, 0x1

    aget-byte v3, v1, v3

    const/16 v4, -0x7d

    if-ne v3, v4, :cond_7

    add-int/lit8 v14, v14, 0x5

    :cond_7
    :goto_0
    add-int v11, v5, v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v11, 0x2

    add-int/lit8 v0, v0, 0x40

    if-eq v0, v2, :cond_8

    const-string v0, "data is inconsistency"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_8
    aget-byte v0, v1, v14

    const/16 v3, 0x3f

    if-ne v0, v3, :cond_14

    add-int/lit8 v0, v14, 0x1

    aget-byte v0, v1, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v3, 0x31

    if-ne v0, v3, :cond_14

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v3, v14, 0x1

    :try_start_5
    invoke-static {v1, v14}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v0

    move v10, v0

    add-int v0, v3, v10

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v12, v0

    add-int v14, v3, v10

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v0, v1, v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const/16 v3, -0x1f

    if-ne v0, v3, :cond_13

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v3, v14, 0x1

    :try_start_7
    invoke-static {v1, v14}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v0

    move v6, v0

    aget-byte v0, v1, v3

    move v9, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TC : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    add-int v14, v3, v6

    :try_start_8
    aget-byte v0, v1, v14

    const/16 v3, -0x1e

    if-ne v0, v3, :cond_12

    add-int/lit8 v0, v14, 0x1

    invoke-static {v1, v0}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v0

    move v7, v0

    if-gtz v7, :cond_9

    const-string/jumbo v0, "not supported tag e2"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_9
    add-int/lit8 v0, v14, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x80

    if-ge v0, v3, :cond_a

    add-int/lit8 v14, v14, 0x2

    goto :goto_1

    :cond_a
    add-int/lit8 v0, v14, 0x1

    aget-byte v0, v1, v0

    const/16 v3, -0x7f

    if-ne v0, v3, :cond_b

    add-int/lit8 v14, v14, 0x3

    goto :goto_1

    :cond_b
    add-int/lit8 v0, v14, 0x1

    aget-byte v0, v1, v0

    const/16 v3, -0x7e

    if-ne v0, v3, :cond_c

    add-int/lit8 v14, v14, 0x4

    goto :goto_1

    :cond_c
    add-int/lit8 v0, v14, 0x1

    aget-byte v0, v1, v0

    const/16 v3, -0x7d

    if-ne v0, v3, :cond_d

    add-int/lit8 v14, v14, 0x5

    :cond_d
    :goto_1
    add-int v0, v14, v7

    invoke-static {v1, v14, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v4, p0

    :try_start_9
    iput-object v0, v4, Lcom/android/server/SemService;->bodyData:[B

    add-int/2addr v14, v7

    aget-byte v0, v1, v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const/16 v3, -0x16

    if-ne v0, v3, :cond_11

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v3, v14, 0x1

    :try_start_a
    invoke-static {v1, v14}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v0

    move v8, v0

    if-gtz v8, :cond_e

    const-string/jumbo v0, "not supported tag ea"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_e
    add-int v0, v3, v8

    if-eq v2, v0, :cond_f

    const-string/jumbo v0, "wrong length!"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_f
    add-int v0, v3, v8

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v1, v14, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/server/SemServiceTools;->ccmVerify([B[B)Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x1

    return v14

    :cond_10
    const-string v14, "Invalid signature!"

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    const/4 v14, 0x0

    return v14

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_11
    :try_start_b
    const-string v0, "Invalid script: No signature"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_12
    move-object/from16 v4, p0

    const-string v0, "Tag \'E2\' read error"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_13
    move-object/from16 v4, p0

    const-string v0, "Tag \'E1\' read error"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :catch_3
    move-exception v0

    move-object/from16 v4, p0

    :goto_2
    move v14, v3

    goto :goto_4

    :cond_14
    move-object/from16 v4, p0

    const-string v0, "Tag \'3F31\' read error"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :catch_4
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_4

    :cond_15
    move-object/from16 v4, p0

    const-string/jumbo v0, "unknown tag"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :catch_5
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v4, p0

    goto :goto_4

    :cond_16
    move/from16 v17, v4

    move-object/from16 v4, p0

    :goto_3
    const-string/jumbo v0, "invalid data lenth"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const/4 v3, 0x0

    return v3

    :catch_6
    move-exception v0

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCCM script Exception : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private blacklist readSkuProperty()V
    .locals 4

    const-string/jumbo v0, "ro.boot.hardware.sku"

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to get sysProp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEC_ESE_Service"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist releaseSpiUsage()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_0

    const-string v0, "SPI is currently not in use"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPI is released by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private blacklist requestSpiUsage()Z
    .locals 5

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPI is opened by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 v1, 0x1

    return v1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "SEC_ESE_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPI is currently in use by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wait for 0.5 sec. Retry count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in sleep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    const-string v0, "SEC_ESE_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPI is currently in use by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setCosNameProperty()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    const-string v2, "MULTI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SEC_ESE_Service"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "s3fwrn5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UT5.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_01000012"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "sn110t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "JCOP5.3T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_00353145"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "sn220t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "JCOP6.2T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_00354A4A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported skuChipName, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP5.1F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "_00354C52"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP6.2F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "_0035544B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP6.2P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_00505644"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_0051414C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP7.0P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "_004D4838"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "UT8.2P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "_0B010001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    :try_start_0
    const-string/jumbo v1, "ro.security.ese.cosname"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "failed to set sysProp: cosname"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_8
    return-void
.end method

.method private blacklist startSPITimer()V
    .locals 5

    const-string v0, "SEC_ESE_Service"

    :try_start_0
    const-string/jumbo v1, "startSPITimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    new-instance v2, Lcom/android/server/SemService$SPITimeoutTask;

    invoke-direct {v2, p0}, Lcom/android/server/SemService$SPITimeoutTask;-><init>(Lcom/android/server/SemService;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_0
    const-string v1, "Timer\'s already been started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in startSPITimer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    :goto_1
    return-void
.end method

.method private blacklist stopSPITimer()V
    .locals 5

    const-string v0, "SEC_ESE_Service"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "stopSPITimer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    goto :goto_0

    :cond_0
    const-string v2, "Timer\'s already been stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopSPITimer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist DCKLog()Ljava/lang/String;
    .locals 8

    const-string v0, "Close Fail "

    const-string v1, "DP :DK"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->getEncodedDCKLog()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/data/log/sse4"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "chmod a+r -R /data/log/sse4"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    goto :goto_4

    :catch_2
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_3
    throw v4

    :cond_1
    :goto_4
    return-object v1
.end method

.method public blacklist ICD()I
    .locals 5

    const/16 v0, -0x5a

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const-string v2, "SEC_ESE_Service"

    if-nez v1, :cond_0

    const-string v1, "ICD Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5b

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniICD()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    return v0
.end method

.method public blacklist agent_SLOG(Ljava/lang/String;)V
    .locals 10

    const-string v0, "ASLog Ex "

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const-string v2, "SEC_ESE_Service"

    if-nez v1, :cond_0

    const-string v0, "Agent_SLOG Permission Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12c

    :try_start_0
    new-array v5, v4, [B

    new-array v4, v4, [B

    invoke-virtual {p0, v5}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v6

    invoke-virtual {p0, v4}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v7

    iput v6, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    iput v7, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    iget v8, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    iget v8, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get SL Key ex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v4, "/data/log/sse5"

    const-string v5, "/data/log/sse6"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/SemService;->getSLogPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object p1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v3, v7

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v7

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_1
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :catchall_0
    move-exception v7

    goto :goto_7

    :catch_2
    move-exception v7

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ASLog ex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    const/4 v3, 0x0

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_5

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_3
    :goto_5
    nop

    :goto_6
    return-void

    :goto_7
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    const/4 v3, 0x0

    goto :goto_8

    :catch_4
    move-exception v8

    goto :goto_9

    :cond_4
    :goto_8
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_a

    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_5
    :goto_a
    nop

    :goto_b
    throw v7
.end method

.method public blacklist appCheckLog()Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "SW : "

    const-string v2, "SEC_ESE_Service"

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x2400

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    new-array v11, v8, [B

    const/4 v12, -0x1

    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v13

    move v7, v13

    if-eqz v7, :cond_0

    const-string v0, "S-LOG Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    const/4 v6, 0x1

    array-length v13, v3

    invoke-virtual {v1, v3, v13, v11, v10}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    move v12, v13

    array-length v13, v11

    const/4 v14, 0x2

    if-ge v13, v14, :cond_1

    const-string v0, "Select Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->close_Spi(I)I

    return-object v9

    :cond_1
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    move-object v11, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v12, -0x2

    aget-byte v15, v11, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v12, -0x1

    aget-byte v15, v11, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, -0x70

    if-lt v12, v14, :cond_2

    add-int/lit8 v15, v12, -0x2

    aget-byte v15, v11, v15

    if-ne v15, v13, :cond_2

    add-int/lit8 v15, v12, -0x1

    aget-byte v15, v11, v15

    if-nez v15, :cond_2

    const-string/jumbo v15, "get mDL"

    invoke-static {v2, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v15, "Select Response Error"

    invoke-static {v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-array v8, v8, [B

    const-string v15, ""

    array-length v9, v4

    invoke-virtual {v1, v4, v9, v8, v10}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v9

    array-length v12, v8

    if-ge v12, v14, :cond_3

    const-string v0, "M Select Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fail"

    goto :goto_2

    :cond_3
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    move-object v8, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v12, v9, -0x2

    aget-byte v12, v8, v12

    invoke-static {v12}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v12, v9, -0x1

    aget-byte v12, v8, v12

    invoke-static {v12}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v9, v14, :cond_4

    add-int/lit8 v0, v9, -0x2

    aget-byte v0, v8, v0

    if-ne v0, v13, :cond_4

    add-int/lit8 v0, v9, -0x1

    aget-byte v0, v8, v0

    if-nez v0, :cond_4

    const-string v0, "M Select Success"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "M Select Response Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v8}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->close_Spi(I)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mDL : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nMSG : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET DATA Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET DATA EXCEPTION "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_3
    if-eqz v6, :cond_5

    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->close_Spi(I)I

    const/4 v6, 0x0

    :cond_5
    const/4 v2, 0x0

    return-object v2

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x10t
        -0x60t
        0x0t
        0x0t
        0x2t
        0x20t
        0x20t
        0x3t
        0x1t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xct
        -0x60t
        0x0t
        0x0t
        0x8t
        0x70t
        -0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
    .end array-data
.end method

.method public native blacklist checkSeStatus([B[B)I
.end method

.method public blacklist check_Network(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    const-string v3, "SEC_ESE_Service"

    if-nez v2, :cond_1

    const-string v2, "ICCC Device Status Error"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    :try_start_0
    const-string v2, "F-R-NC"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/SemService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SemService$1;-><init>(Lcom/android/server/SemService;)V

    iput-object v2, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    const-string v2, "F-UR-NC"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    nop

    :goto_3
    return-void
.end method

.method public blacklist check_SeState([B[B)I
    .locals 5

    const/4 v0, -0x1

    const-string v1, "Start checkSeState"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v3, -0x5b

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->checkSeStatus([B[B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist closeDriverSpi()I
.end method

.method public native blacklist closeSpi(I)I
.end method

.method public blacklist closeSpiDriver()I
    .locals 5

    const-string v0, "closeSpiDriver"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    const-string v2, "closeSpiDriver Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->closeDriverSpi()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist close_Spi(I)I
    .locals 5

    const-string v0, "Start close_Spi"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_0

    const/16 v1, -0xa

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "close_Spi Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5b

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v1, -0xc8

    return v1

    :cond_2
    if-nez p1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SemService;->stopSPITimer()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->synchronizedCloseSpi(I)I

    move-result v2

    move v0, v2

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public native blacklist coldReset()I
.end method

.method public blacklist continue_attestation(Ljava/lang/String;I[B)I
    .locals 5

    const-string v0, "continue_atteestation"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SemService;->continueattestation(Ljava/lang/String;I[B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public native blacklist continueattestation(Ljava/lang/String;I[B)I
.end method

.method public native blacklist deactivateCards(I[[B[II)I
.end method

.method public native blacklist deactivateCardsAID(II[[B[II[[B[II[[B[II)I
.end method

.method public blacklist deactivate_Cards(I[Ljava/lang/String;[II)I
    .locals 9

    const-string v0, "Start deactivate_Cards"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v2, p4, [[B

    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    const/16 v4, -0x5b

    if-nez v3, :cond_0

    const-string v3, "deactivate_Cards Permission Error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v3}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ICCC Device Status Error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v4

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p4, :cond_4

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    aput-object v6, v2, v3

    aget-object v6, v2, v3

    aget-object v7, v2, v3

    array-length v7, v7

    const/4 v8, 0x2

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/server/SemService;->deactivateCards(I[[B[II)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsatisfield deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoClassDef deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist deactivate_CardsAID(II[Ljava/lang/String;[II)I
    .locals 26

    move-object/from16 v13, p0

    move/from16 v14, p5

    const-string v1, "#"

    const-string v0, "Start deactivate_Cards"

    const-string v15, "SEC_ESE_Service"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    new-array v12, v14, [[B

    new-array v11, v14, [[B

    new-array v10, v14, [[B

    new-array v9, v14, [I

    new-array v8, v14, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v13, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v6, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v5, v6}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v5

    const/16 v6, -0x5b

    if-nez v5, :cond_0

    const-string v1, "deactivate_CardsAID Permission Error"

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v5, v13, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v5}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v6

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    :goto_0
    if-ge v5, v14, :cond_8

    const/4 v2, 0x0

    :try_start_0
    aget-object v0, p3, v5

    move-object v2, v0

    if-nez v2, :cond_4

    const-string v0, "element is null"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v0, :cond_5

    :try_start_1
    const-string v0, "[*]"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v11, v18

    aget-object v0, v11, v18

    if-eqz v0, :cond_7

    aget-object v0, v11, v18

    array-length v0, v0

    aput v0, v9, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v10, v19

    aget-object v0, v10, v19

    if-eqz v0, :cond_7

    aget-object v0, v10, v19

    array-length v0, v0

    aput v0, v8, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v12, v17

    aget-object v0, v12, v17

    if-eqz v0, :cond_7

    aget-object v0, v12, v17

    array-length v0, v0

    aput v0, p4, v17
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDA Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v2

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDA Null Point Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    move-object/from16 v20, v2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    :try_start_2
    const-string v0, "DDA Start "

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move/from16 v6, v17

    move-object v7, v11

    move-object/from16 v21, v8

    move-object v8, v9

    move-object/from16 v22, v9

    move/from16 v9, v18

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v21

    move-object/from16 v25, v12

    move/from16 v12, v19

    :try_start_3
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/SemService;->deactivateCardsAID(II[[B[II[[B[II[[B[II)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v16, v0

    :goto_3
    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deactivate_Cards, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_6
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoClassDef deactivate_Cards, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsatisfield deactivate_Cards, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v16
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, ""

    const-string v3, "SEC_ESE_Service"

    const-string v4, "\n"

    :try_start_0
    const-string/jumbo v5, "ro.security.ese.cosname"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "not support eSE device: can\'t dump"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "DUMP MANAGER LOG START"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Permission Denial: can\'t dump"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v2, :cond_2

    const-string/jumbo v0, "invalid parameters dump"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v3

    goto/16 :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\n***SemService EDS***"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\n[SCRS LIST]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v6}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v7, v6, v5, v8}, Lcom/android/server/SemServiceAccessControl;->addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V

    iget-object v7, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v7, v6, v5, v8}, Lcom/android/server/SemServiceAccessControl;->addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->getSCRSActivationList()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->getAccessRule()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->appCheckLog()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->get_ESEA()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->get_DPDLog()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->DCKLog()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v5

    iget-boolean v5, v1, Lcom/android/server/SemService;->supportEsek:Z

    if-eqz v5, :cond_3

    const-string v5, "/efs/sec_efs/esek/esek_cert.dat"

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    new-array v15, v14, [Ljava/lang/String;

    invoke-static {v5, v15}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SemServiceTools;->readFileBytes(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "/efs/sec_efs/esek/scp11_cert.dat"

    new-array v14, v14, [Ljava/lang/String;

    invoke-static {v15, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/SemServiceTools;->readFileBytes(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    move-object v14, v5

    goto :goto_0

    :cond_3
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->start_SLOG()V

    invoke-direct {v1, v7}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v8}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    invoke-direct {v1, v10}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v19, v17

    invoke-direct {v1, v9}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v17

    invoke-direct {v1, v11}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v21, v17

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v8

    iget-boolean v8, v1, Lcom/android/server/SemService;->supportEsek:Z

    if-eqz v8, :cond_6

    if-eqz v14, :cond_4

    invoke-direct {v1, v14}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v8

    :cond_4
    if-eqz v15, :cond_5

    invoke-direct {v1, v15}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v22, v8

    :cond_5
    move-object/from16 v8, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v22

    goto :goto_1

    :cond_6
    move-object/from16 v8, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v22

    :goto_1
    move-object/from16 v22, v15

    iget-object v15, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v24, v3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v7

    move-object/from16 v7, v18

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->stop_SLOG()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v15, v20

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v19, v5

    move-object/from16 v5, v21

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string v5, "\nDPD : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v13, :cond_7

    const-string v3, "\nSEMSVC[4]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-boolean v3, v1, Lcom/android/server/SemService;->supportEsek:Z

    if-eqz v3, :cond_9

    if-eqz v8, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nESEK_Cert : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    if-eqz v14, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nSCP11 Cert : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v3, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/SemServiceAccessControl;->removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V

    iget-object v3, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/SemServiceAccessControl;->removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->printEnhancedDump()V

    const-string v0, "DUMP MANAGER LOG END"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v3, v24

    :try_start_2
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v3, v24

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, v24

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUMP MANAGER ERROR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUMP MANAGER EXCEPTION "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    nop

    :goto_6
    return-void
.end method

.method public native blacklist eSEAidFactoryReset([BI)I
.end method

.method public native blacklist eSEFactoryReset()I
.end method

.method public native blacklist eSEFullFactoryReset()I
.end method

.method public native blacklist eSELowFactoryReset()I
.end method

.method public blacklist eSE_AidFactoryReset([BI)I
    .locals 5

    const/16 v0, -0x5a

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->eSEAidFactoryReset([BI)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist eSE_FactoryReset()I
    .locals 5

    const/16 v0, -0x5a

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSEFactoryReset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist eSE_FullFactoryReset()I
    .locals 5

    const/16 v0, -0x5a

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSEFullFactoryReset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist eSE_LowFactoryReset()I
    .locals 5

    const/16 v0, -0x5a

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSELowFactoryReset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist esekCertificateCheck()I
.end method

.method public blacklist esek_certificate_check()I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Start esek_certificate_check"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v3, -0x5b

    if-nez v1, :cond_0

    const-string v1, "esek_certificate_check Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->esekCertificateCheck()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist getAtr()I
.end method

.method public blacklist getAtr_Spi()I
    .locals 5

    const-string v0, "Start getAtr"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "getAtr Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5b

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->getAtr()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getAtr_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef getAtr_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield getAtr_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return v0
.end method

.method public native blacklist getCPLC14mode([B)I
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .locals 6

    const-string v0, "Start GetCPLC14mode"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "getCPLC14mode Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/SemService;->getCPLC14mode([B)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetCPLC14mode Len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    if-gtz v2, :cond_2

    const-string/jumbo v4, "no data to be returned"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const/16 v4, 0x3e8

    if-ge v2, v4, :cond_3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v0, v4

    invoke-static {v0}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const-string v4, "data overflow"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getCPLC14mode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v3
.end method

.method public native blacklist getESEA([B)I
.end method

.method public native blacklist getHQMMemory([B)I
.end method

.method public blacklist getSLogPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const v0, 0x19000

    move-object v1, p1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x19000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move-object v1, p2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    move-object v1, p1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v1, p2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    move-object v1, p1

    :goto_1
    return-object v1
.end method

.method public blacklist get_DPDLog()Ljava/lang/String;
    .locals 5

    const-string v0, "Start get_DPDLog"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "get_DPDLog Permission Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SemService;->getDPDLog()[B

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDPDLog Len "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    invoke-static {v0}, Lcom/android/server/SemServiceTools;->getHexString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getESEA, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v2
.end method

.method public blacklist get_ESEA()Ljava/lang/String;
    .locals 8

    const-string v0, "Start get_ESEA"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x400

    new-array v2, v0, [B

    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "get_ESEA Permission Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v4

    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->getESEA([B)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getESEA Len "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    if-gtz v3, :cond_3

    const-string/jumbo v0, "no data to be returned"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    if-ge v3, v0, :cond_6

    new-array v0, v3, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-byte v6, v2, v5

    aput-byte v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getESEA Return0 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_5
    return-object v4

    :cond_6
    const-string v0, "data overflow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getESEA, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v4
.end method

.method public blacklist get_HQMMemory([B)I
    .locals 5

    const-string v0, "Start get_HQMMemory"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MHWParamPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "get_HQMMemory Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    const/16 v1, -0x5b

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->getHQMMemory([B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist getpkSKMS([B)I
.end method

.method public native blacklist getpkSecurity([B)I
.end method

.method public native blacklist grdmCheckRestrictedMode([B)I
.end method

.method public native blacklist grdmCheckStatusInfo()I
.end method

.method public native blacklist grdmGetAttesCert(I[B)I
.end method

.method public native blacklist grdmGetSession()I
.end method

.method public native blacklist grdmReleaseSession()I
.end method

.method public native blacklist grdmRequestKey(I[B)I
.end method

.method public declared-synchronized blacklist grdm_Check_Status()I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_Check_Status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const/16 v1, -0xa

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmCheckStatusInfo()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, -0x2

    nop

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_check_restricted_mode()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start grdm_check_restricted_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v0, [B

    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->grdmCheckRestrictedMode([B)I

    move-result v3

    if-gtz v3, :cond_1

    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v4, "no data to be returned"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    if-ge v3, v0, :cond_2

    :try_start_2
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "SEC_ESE_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "grdm_check_restricted_mode Return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_3
    const-string v0, "SEC_ESE_Service"

    const-string v4, "data overflow"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_check_restricted_mode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_check_restricted_mode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_check_restricted_mode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_3
    :goto_1
    :try_start_5
    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_get_attes_cert(I[B)I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_get_attes_cert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const/16 v1, -0xa

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->grdmGetAttesCert(I[B)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, -0x2

    nop

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist grdm_get_session()I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_get_session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const/16 v1, -0xa

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmGetSession()I

    move-result v1

    move v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/16 v0, -0xb

    :cond_3
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start_request_grdm, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield start_request_grdm, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef start_request_grdm, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_release_session()I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_release_session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const/16 v1, -0xa

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmReleaseSession()I

    move-result v1

    move v0, v1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/16 v0, -0xc

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_release_session, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_release_session, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_release_session, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_request_key(I[B)I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_request_key"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const/16 v1, -0xa

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->grdmRequestKey(I[B)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_request_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_request_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_request_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, -0x2

    nop

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native blacklist handleCCM([BI)[Ljava/lang/String;
.end method

.method public native blacklist handleCCMCB([BI[BI)[Ljava/lang/String;
.end method

.method public native blacklist handleCCMScp11c([BI)I
.end method

.method public blacklist handle_CCM([BI)[Ljava/lang/String;
    .locals 5

    const-string v0, "Start handle_CCM"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "handle_CCM Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v3

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->handleCCM([BI)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v0
.end method

.method public blacklist handle_CCMCB([BI[BI)[Ljava/lang/String;
    .locals 5

    const-string v0, "Start handle_CCM"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "handle_CCM Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v3

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->handleCCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v0
.end method

.method public blacklist handle_CCMScp11c([BI)I
    .locals 5

    const-string v0, "Start handle_CCM11c"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "handle_CCMScp11c Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5b

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/SemService;->parseScript([BI)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CCM script error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/SemService;->bodyData:[B

    if-nez v2, :cond_3

    const-string v2, "CCM data error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0xa

    return v1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BD Len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SemService;->bodyData:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SemService;->bodyData:[B

    iget-object v3, p0, Lcom/android/server/SemService;->bodyData:[B

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SemService;->handleCCMScp11c([BI)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist isLccmSwp()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_0

    const-string/jumbo v1, "isLccmSwp Permission Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniIsLccmSwp()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist jniICD()I
.end method

.method public native blacklist jniIsLccmSwp()I
.end method

.method public native blacklist openDriverSpi()I
.end method

.method public native blacklist openSpi(I)I
.end method

.method public blacklist openSpiDriver()I
    .locals 5

    const-string/jumbo v0, "openSpiDriver"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    const-string/jumbo v2, "openSpiDriver Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->openDriverSpi()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist open_Spi(I)I
    .locals 5

    const-string v0, "Start open_Spi"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_0

    const/16 v1, -0xa

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "open_Spi Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5b

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v1, -0xc8

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->openSpi(I)I

    move-result v2

    move v0, v2

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/server/SemService;->startSPITimer()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    :cond_4
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public native blacklist printEnhancedDump()V
.end method

.method public blacklist resetForCOSU()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SEC_ESE_Service"

    const-string/jumbo v2, "resetForCOSU Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5b

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SemService;->coldReset()I

    move-result v0

    return v0
.end method

.method public native blacklist scp11CertificateCheck()I
.end method

.method public blacklist scp11_certificate_check()I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Start scp11_certificate_check"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v3, -0x5b

    if-nez v1, :cond_0

    const-string/jumbo v1, "scp11_certificate_check Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ICCC Device Status Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, -0xa

    return v1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->scp11CertificateCheck()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist secureLog(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_0

    const-string v0, "SecureLog Permission Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/SemService;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S-LOG Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S-LOG Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public native blacklist semFactory()V
.end method

.method public blacklist sem_factory()V
    .locals 4

    const-string/jumbo v0, "sem_factory"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->semFactory()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsatisfield sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDef sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-void
.end method

.method public native blacklist sendData([BI[BI)I
.end method

.method public blacklist send_Data([BI[BI)I
    .locals 5

    const-string v0, "Start send_Data"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_0

    const/16 v1, -0xa

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "send_Data Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5b

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v1, -0xc8

    return v1

    :cond_2
    if-nez p4, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SemService;->stopSPITimer()V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->sendData([BI[BI)I

    move-result v2

    move v0, v2

    if-nez p4, :cond_4

    invoke-direct {p0}, Lcom/android/server/SemService;->startSPITimer()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    :cond_4
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public native blacklist startRequestCredentials([B[BLjava/lang/String;[B)I
.end method

.method public native blacklist startRequestCredentialsList([B[BLjava/lang/String;[B[B[B)I
.end method

.method public blacklist start_SLOG()V
    .locals 8

    const-string v0, "Start_SLOG"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x12c

    new-array v4, v3, [B

    new-array v3, v3, [B

    iget-object v5, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v6, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v5, v6}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Start_SLOG Permission Error"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v5

    move v0, v5

    invoke-virtual {p0, v3}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v5

    move v2, v5

    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    iput v2, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    iget v5, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    iget v5, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist start_attestation([BI[BI)I
    .locals 5

    const-string/jumbo v0, "start_attestation"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, -0xc8

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->startattestation([BI[BI)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist start_request_credentials([B[BLjava/lang/String;[B)I
    .locals 13

    move-object v8, p0

    const/4 v9, -0x1

    const-string v0, "Start start_request_credentials"

    const-string v10, "SEC_ESE_Service"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v1, -0x5b

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, -0xc8

    return v0

    :cond_1
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v1

    :cond_2
    :try_start_0
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmDAFileSupport()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmTeeSigData()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v11, v0

    :try_start_2
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmTeeListData()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v12, v0

    if-eqz v11, :cond_4

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, p4

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SemService;->startRequestCredentialsList([B[BLjava/lang/String;[B[B[B)I

    move-result v0

    move v9, v0

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v9

    :cond_4
    :goto_0
    const-string v0, "Data Error"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v11

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v1, v11

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v1, v11

    goto :goto_3

    :catch_6
    move-exception v0

    :goto_1
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get tList Ex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_7
    move-exception v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get tList Unsatisfield "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_4

    :catch_8
    move-exception v0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get tList NoClassDef "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/SemService;->startRequestCredentials([B[BLjava/lang/String;[B)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_5

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start_request_credentials, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5a

    move v0, v1

    goto :goto_6

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsatisfield start_request_credentials, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_5

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoClassDef start_request_credentials, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_5
    nop

    :goto_6
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist startattestation([BI[BI)I
.end method

.method public native blacklist stopRequestCredentials()V
.end method

.method public blacklist stop_SLOG()V
    .locals 14

    const-string v0, "Close Exception "

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const-string v3, "SEC_ESE_Service"

    if-nez v2, :cond_0

    const-string v0, "Stop_SLOG Permission Error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "/data/log/sse1"

    const-string v4, "/data/log/sse2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/android/server/SemService;->getSLogPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    invoke-direct {p0, v8}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DP : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v10, v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v7, v10

    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v7, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v6, v10

    if-eqz v8, :cond_1

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_1
    const-string v10, "\n"

    invoke-virtual {v6, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    const/4 v6, 0x0

    const-string v10, "chmod a+r -R /data/log/sse1"

    const-string v11, "chmod a+r -R /data/log/sse2"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    move-object v9, v13

    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v12, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    move-object v9, v13

    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :catch_0
    move-exception v10

    goto :goto_2

    :cond_2
    const-string v10, "LD Null Error"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v9, :cond_4

    :goto_1
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    :goto_2
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Save Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v11

    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Close Fail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    :goto_4
    :try_start_4
    const-string v10, "Buffer Init"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    iget-object v11, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    const/4 v7, 0x0

    goto :goto_5

    :catch_2
    move-exception v10

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_d

    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    :catchall_1
    move-exception v10

    goto :goto_f

    :catch_3
    move-exception v10

    :try_start_6
    const-string v11, "Buffer Error"

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_6

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    const/4 v7, 0x0

    goto :goto_7

    :catch_4
    move-exception v10

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_a

    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    :catch_5
    move-exception v10

    :try_start_8
    const-string v11, "Buffer Exception"

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    const/4 v7, 0x0

    goto :goto_9

    :catch_6
    move-exception v10

    goto :goto_b

    :cond_7
    :goto_9
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_a
    const/4 v6, 0x0

    goto :goto_d

    :goto_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_8
    :goto_d
    nop

    :goto_e
    return-void

    :goto_f
    if-eqz v7, :cond_9

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    const/4 v7, 0x0

    goto :goto_10

    :catch_7
    move-exception v11

    goto :goto_11

    :cond_9
    :goto_10
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_12

    :goto_11
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_a
    :goto_12
    nop

    :goto_13
    throw v10

    :goto_14
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    :cond_b
    throw v0
.end method

.method public blacklist stop_request_credentials()V
    .locals 4

    const-string v0, "Start stop_request_credentials"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->stopRequestCredentials()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsatisfield stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDef stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-void
.end method

.method public declared-synchronized blacklist synchronizedCloseSpi(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->closeSpi(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
