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
.field private blacklist SPITimeout:Ljava/util/Timer;

.field private blacklist bytePublicKeyDataSKMS:[B

.field private blacklist bytePublicKeyDataSecurity:[B

.field private blacklist bytePublicKeySKMSLen:I

.field private blacklist bytePublicKeySecurityLen:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsOpened:Z

.field private blacklist mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

.field private blacklist secureBuffer:Ljava/lang/StringBuffer;

.field private blacklist skuChipName:Ljava/lang/String;

.field private blacklist spiOpenPackageName:Ljava/lang/String;

.field private blacklist supportReeSpi:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreleaseSpiUsage(Lcom/android/server/SemService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    .line 87
    const-string v0, "UT6.0U"

    sput-object v0, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    .line 88
    const-string v0, "GEMALTO"

    sput-object v0, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "sec_sem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;-><init>()V

    .line 80
    const/16 v0, 0x12c

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    .line 81
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    .line 83
    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    .line 91
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    .line 162
    iput-boolean v0, p0, Lcom/android/server/SemService;->mIsOpened:Z

    .line 174
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start SemService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v1, Lcom/android/server/SemServiceAccessControl;

    invoke-direct {v1, p1}, Lcom/android/server/SemServiceAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    .line 176
    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->setAllowedPackages()V

    .line 177
    iput-object p1, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    .line 178
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->setGrdmAllowedPackages()V

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->readSkuProperty()V

    .line 184
    sget-object v1, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    const-string v2, "SKU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-boolean v1, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-eqz v1, :cond_3

    .line 187
    iput-boolean v0, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->setCosNameProperty()V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->setCosNameProperty()V

    .line 197
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    .line 198
    return-void
.end method

.method private blacklist encData(Ljava/lang/String;)Ljava/lang/String;
    .locals 29
    .param p1, "msg"    # Ljava/lang/String;

    .line 1147
    move-object/from16 v1, p0

    const-string v0, "RSA/ECB/OAEPWITHSHA-256ANDMGF1PADDING"

    const-string v2, "SEC_ESE_Service"

    const-string v3, "S-ED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/16 v3, 0x12c

    new-array v4, v3, [B

    .line 1150
    .local v4, "getPKDataSecurity":[B
    new-array v3, v3, [B

    .line 1153
    .local v3, "getPKDataSKMS":[B
    const/4 v5, 0x0

    .line 1154
    .local v5, "cipherAES":Ljavax/crypto/Cipher;
    const/4 v6, 0x0

    .line 1155
    .local v6, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v7, 0x0

    .line 1156
    .local v7, "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x0

    .line 1157
    .local v8, "encKeyDataSKMS":[B
    const/4 v9, 0x0

    .line 1159
    .local v9, "encKeyDataSecurity":[B
    const/16 v10, 0x10

    .line 1160
    .local v10, "ivKeySize":I
    const/16 v11, 0x30

    .line 1161
    .local v11, "IVAESKeySize":I
    const/16 v12, 0x20

    .line 1163
    .local v12, "AESKeySize":I
    const/4 v13, 0x0

    .line 1164
    .local v13, "byteLogbuffer":[B
    const/4 v14, 0x0

    .line 1167
    .local v14, "byteEncBuffer":[B
    :try_start_0
    iget v15, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2a

    move-object/from16 v16, v5

    .end local v5    # "cipherAES":Ljavax/crypto/Cipher;
    .local v16, "cipherAES":Ljavax/crypto/Cipher;
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
    move-object/from16 v19, v3

    goto :goto_1

    .line 1238
    :catch_0
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_3

    .line 1235
    :catch_1
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_4

    .line 1232
    :catch_2
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_5

    .line 1168
    :cond_1
    :goto_0
    :try_start_2
    const-string v15, "PK Error"

    invoke-static {v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {v1, v4}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v15

    .line 1171
    .local v15, "pkResultSecurity":I
    invoke-virtual {v1, v3}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v17

    move/from16 v18, v17

    .line 1173
    .local v18, "pkResultSKMS":I
    iput v15, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    .line 1174
    move/from16 v5, v18

    .end local v18    # "pkResultSKMS":I
    .local v5, "pkResultSKMS":I
    iput v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    .line 1175
    move/from16 v18, v5

    .end local v5    # "pkResultSKMS":I
    .restart local v18    # "pkResultSKMS":I
    invoke-static {v4, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    .line 1176
    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    .line 1178
    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    if-eqz v5, :cond_4

    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_28
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_27

    move-object/from16 v19, v3

    const/4 v3, 0x1

    .end local v3    # "getPKDataSKMS":[B
    .local v19, "getPKDataSKMS":[B
    if-lt v5, v3, :cond_3

    :try_start_3
    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    if-ge v5, v3, :cond_2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto/16 :goto_2

    .line 1182
    :cond_2
    const-string v3, "GET DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    .end local v15    # "pkResultSecurity":I
    .end local v18    # "pkResultSKMS":I
    :goto_1
    const/16 v3, 0x10

    new-array v5, v3, [B

    .line 1187
    .local v5, "bIv":[B
    const/16 v15, 0x20

    new-array v3, v15, [B

    .line 1188
    .local v3, "bEnc":[B
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v20
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_22
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_21

    move-object/from16 v21, v20

    .line 1189
    .local v21, "random":Ljava/security/SecureRandom;
    move-object/from16 v22, v6

    move-object/from16 v15, v21

    move-object/from16 v21, v4

    const/16 v4, 0x10

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .local v15, "random":Ljava/security/SecureRandom;
    .local v21, "getPKDataSecurity":[B
    .local v22, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_4
    invoke-virtual {v15, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 1190
    invoke-virtual {v15, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1191
    const/16 v4, 0x20

    invoke-virtual {v15, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 1192
    invoke-virtual {v15, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1195
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v4, v3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1e

    move-object v6, v4

    .line 1196
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_5
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1b

    move-object v7, v4

    .line 1197
    :try_start_6
    const-string v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_18

    .line 1198
    .end local v16    # "cipherAES":Ljavax/crypto/Cipher;
    .local v4, "cipherAES":Ljavax/crypto/Cipher;
    move-object/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "bEnc":[B
    .local v23, "bEnc":[B
    :try_start_7
    invoke-virtual {v4, v3, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1201
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 1203
    .local v3, "fac":Ljava/security/KeyFactory;
    move-object/from16 v24, v5

    .end local v5    # "bIv":[B
    .local v24, "bIv":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_15

    move-object/from16 v25, v8

    .end local v8    # "encKeyDataSKMS":[B
    .local v25, "encKeyDataSKMS":[B
    :try_start_8
    iget-object v8, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    invoke-direct {v5, v8}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1204
    .local v5, "publicKeySpecSecurity":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v3, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    .line 1206
    .local v8, "publicKeySecurity":Ljava/security/PublicKey;
    move-object/from16 v16, v5

    .end local v5    # "publicKeySpecSecurity":Ljava/security/spec/X509EncodedKeySpec;
    .local v16, "publicKeySpecSecurity":Ljava/security/spec/X509EncodedKeySpec;
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_12

    move-object/from16 v26, v9

    .end local v9    # "encKeyDataSecurity":[B
    .local v26, "encKeyDataSecurity":[B
    :try_start_9
    iget-object v9, v1, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    invoke-direct {v5, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1207
    .local v5, "publicKeySpecSKMS":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v3, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    .line 1209
    .local v9, "publicKeySKMS":Ljava/security/PublicKey;
    const/16 v1, 0x30

    new-array v1, v1, [B

    .line 1210
    .local v1, "AESIVKeyValue":[B
    move-object/from16 v22, v3

    .end local v3    # "fac":Ljava/security/KeyFactory;
    .local v22, "fac":Ljava/security/KeyFactory;
    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_f

    move-object/from16 v27, v5

    .end local v5    # "publicKeySpecSKMS":Ljava/security/spec/X509EncodedKeySpec;
    .local v27, "publicKeySpecSKMS":Ljava/security/spec/X509EncodedKeySpec;
    const/4 v5, 0x0

    move-object/from16 v28, v7

    const/16 v7, 0x10

    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .local v28, "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_a
    invoke-static {v3, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    invoke-virtual {v6}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_c

    move-object/from16 v18, v6

    const/16 v6, 0x20

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .local v18, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_b
    invoke-static {v3, v5, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1213
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 1214
    .local v3, "cipherRSA":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1215
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_9

    .line 1217
    .end local v26    # "encKeyDataSecurity":[B
    .local v5, "encKeyDataSecurity":[B
    :try_start_c
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1218
    .end local v3    # "cipherRSA":Ljavax/crypto/Cipher;
    .local v0, "cipherRSA":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1219
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_6

    .line 1221
    .end local v25    # "encKeyDataSKMS":[B
    .local v3, "encKeyDataSKMS":[B
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    move-object v14, v6

    .line 1223
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1224
    .local v6, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1225
    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1226
    invoke-virtual {v6, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1228
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move-object v13, v7

    .line 1229
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1231
    const/4 v7, 0x2

    invoke-static {v13, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_3

    return-object v2

    .line 1238
    .end local v0    # "cipherRSA":Ljavax/crypto/Cipher;
    .end local v1    # "AESIVKeyValue":[B
    .end local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "publicKeySecurity":Ljava/security/PublicKey;
    .end local v9    # "publicKeySKMS":Ljava/security/PublicKey;
    .end local v15    # "random":Ljava/security/SecureRandom;
    .end local v16    # "publicKeySpecSecurity":Ljava/security/spec/X509EncodedKeySpec;
    .end local v22    # "fac":Ljava/security/KeyFactory;
    .end local v23    # "bEnc":[B
    .end local v24    # "bIv":[B
    .end local v27    # "publicKeySpecSKMS":Ljava/security/spec/X509EncodedKeySpec;
    :catch_3
    move-exception v0

    move-object v8, v3

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_3

    .line 1235
    :catch_4
    move-exception v0

    move-object v8, v3

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_4

    .line 1232
    :catch_5
    move-exception v0

    move-object v8, v3

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_5

    .line 1238
    .end local v3    # "encKeyDataSKMS":[B
    .restart local v25    # "encKeyDataSKMS":[B
    :catch_6
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_3

    .line 1235
    :catch_7
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_4

    .line 1232
    :catch_8
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_5

    .line 1238
    .end local v5    # "encKeyDataSecurity":[B
    .restart local v26    # "encKeyDataSecurity":[B
    :catch_9
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_3

    .line 1235
    :catch_a
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_4

    .line 1232
    :catch_b
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_5

    .line 1238
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .local v6, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_c
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_3

    .line 1235
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_d
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_4

    .line 1232
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_e
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_5

    .line 1238
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    :catch_f
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_3

    .line 1235
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    :catch_10
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_4

    .line 1232
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    :catch_11
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_5

    .line 1238
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .local v9, "encKeyDataSecurity":[B
    :catch_12
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_3

    .line 1235
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_13
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_4

    .line 1232
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_14
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_5

    .line 1238
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .local v8, "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_15
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_3

    .line 1235
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_16
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_4

    .line 1232
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_17
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_5

    .line 1238
    .end local v4    # "cipherAES":Ljavax/crypto/Cipher;
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    .local v16, "cipherAES":Ljavax/crypto/Cipher;
    :catch_18
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_3

    .line 1235
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_19
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_4

    .line 1232
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_1a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_5

    .line 1238
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_1b
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_3

    .line 1235
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_1c
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_4

    .line 1232
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_1d
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_5

    .line 1238
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    .local v22, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1e
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_3

    .line 1235
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_1f
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_4

    .line 1232
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_20
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_5

    .line 1238
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .local v4, "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_21
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_3

    .line 1235
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_22
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_4

    .line 1232
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_23
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_5

    .line 1178
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    .local v15, "pkResultSecurity":I
    .local v18, "pkResultSKMS":I
    :cond_3
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto :goto_2

    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .local v3, "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 1179
    .end local v3    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    :goto_2
    :try_start_e
    const-string v0, "GET DATA FAIL"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_25
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_24

    .line 1180
    const/4 v1, 0x0

    return-object v1

    .line 1238
    .end local v15    # "pkResultSecurity":I
    .end local v18    # "pkResultSKMS":I
    :catch_24
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto :goto_3

    .line 1235
    :catch_25
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_4

    .line 1232
    :catch_26
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_5

    .line 1238
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v3    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_27
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v3    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto :goto_3

    .line 1235
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v3    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_28
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v3    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto :goto_4

    .line 1232
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v3    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_29
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v3    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto :goto_5

    .line 1238
    .end local v16    # "cipherAES":Ljavax/crypto/Cipher;
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v3    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .local v5, "cipherAES":Ljavax/crypto/Cipher;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_2a
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 1239
    .end local v3    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .local v0, "e":Ljava/lang/Error;
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENC Data Error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v1, 0x0

    return-object v1

    .line 1235
    .end local v0    # "e":Ljava/lang/Error;
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .restart local v3    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    :catch_2b
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 1236
    .end local v3    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENC Data Exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v1, 0x0

    return-object v1

    .line 1232
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .restart local v3    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    :catch_2c
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 1233
    .end local v3    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENC Data NullpointException "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getAccessRule()Ljava/lang/String;
    .locals 16

    .line 1348
    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_Service"

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    move-object v3, v0

    .line 1352
    .local v3, "APDU_ARAM_SELECT":[B
    const/4 v0, 0x5

    new-array v4, v0, [B

    fill-array-data v4, :array_1

    .line 1355
    .local v4, "APDU_GETRULE_FIRST":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    move-object v5, v0

    .line 1357
    .local v5, "APDU_GETRULE_REMAINED":[B
    const/16 v0, 0x2400

    new-array v6, v0, [B

    .line 1358
    .local v6, "ListByteData":[B
    const/4 v7, 0x0

    .line 1360
    .local v7, "ListByteDataLen":I
    const/4 v8, 0x0

    .line 1362
    .local v8, "resultList":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1365
    .local v9, "isOpenCheck":Z
    const/4 v10, -0x1

    .line 1366
    .local v10, "ret":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-array v13, v0, [B

    .line 1367
    .local v13, "res":[B
    const/4 v14, -0x1

    .line 1369
    .local v14, "resLen":I
    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v15

    move v10, v15

    .line 1371
    if-eqz v10, :cond_0

    .line 1372
    const-string v0, "S-LOG Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return-object v11

    .line 1375
    :cond_0
    const/4 v9, 0x1

    .line 1378
    array-length v15, v3

    invoke-virtual {v1, v3, v15, v13, v12}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    move v14, v15

    .line 1380
    array-length v15, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Select Error"

    const/4 v11, 0x2

    if-ge v15, v11, :cond_1

    .line 1381
    :try_start_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1383
    const/4 v2, 0x0

    return-object v2

    .line 1385
    :cond_1
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    move-object v13, v15

    .line 1387
    if-lt v14, v11, :cond_6

    add-int/lit8 v15, v14, -0x2

    aget-byte v15, v13, v15

    const/16 v11, -0x70

    if-ne v15, v11, :cond_6

    add-int/lit8 v15, v14, -0x1

    aget-byte v15, v13, v15

    if-nez v15, :cond_6

    .line 1389
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v11, 0x32

    if-ge v15, v11, :cond_6

    .line 1390
    const/16 v11, 0x2400

    new-array v12, v11, [B

    .line 1391
    .end local v13    # "res":[B
    .local v12, "res":[B
    if-nez v15, :cond_2

    .line 1392
    array-length v13, v4

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v13, v12, v11}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    move v11, v13

    move v14, v11

    .end local v14    # "resLen":I
    .local v11, "resLen":I
    goto :goto_1

    .line 1394
    .end local v11    # "resLen":I
    .restart local v14    # "resLen":I
    :cond_2
    array-length v11, v5

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v11, v12, v13}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v11

    move v14, v11

    .line 1396
    :goto_1
    array-length v11, v12

    const/4 v13, 0x2

    if-ge v11, v13, :cond_3

    .line 1397
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1399
    const/4 v2, 0x0

    return-object v2

    .line 1401
    :cond_3
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    move-object v13, v11

    .line 1403
    .end local v12    # "res":[B
    .restart local v13    # "res":[B
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

    .line 1404
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

    .line 1405
    goto :goto_2

    .line 1406
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

    .line 1407
    add-int/lit8 v14, v14, -0x2

    .line 1408
    const/4 v12, 0x0

    invoke-static {v13, v12, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1409
    add-int/2addr v7, v14

    .line 1389
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1411
    :cond_5
    const-string v0, "Send Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1413
    const/4 v2, 0x0

    return-object v2

    .line 1417
    .end local v15    # "i":I
    :cond_6
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1419
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move-object v6, v0

    .line 1420
    invoke-static {v6}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ARA LIST : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 1423
    return-object v8

    .line 1431
    .end local v10    # "ret":I
    .end local v13    # "res":[B
    .end local v14    # "resLen":I
    :catch_0
    move-exception v0

    .line 1432
    .local v0, "e":Ljava/lang/Error;
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

    .line 1434
    if-eqz v9, :cond_8

    .line 1435
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1436
    const/4 v9, 0x0

    goto :goto_3

    .line 1424
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/Exception;
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

    .line 1427
    if-eqz v9, :cond_7

    .line 1428
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1429
    const/4 v2, 0x0

    move v9, v2

    .line 1438
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    nop

    .line 1440
    :cond_8
    :goto_3
    const/4 v2, 0x0

    return-object v2

    nop

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

.method private blacklist getDate()Ljava/lang/String;
    .locals 3

    .line 1757
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

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method private blacklist getSCRSActivationList()Ljava/lang/String;
    .locals 17

    .line 1247
    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_Service"

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    move-object v3, v0

    .line 1251
    .local v3, "APDU_SCRS_SELECT":[B
    const/16 v0, 0x8

    new-array v4, v0, [B

    fill-array-data v4, :array_1

    .line 1255
    .local v4, "APDU_GETSTATUS_FIRST":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    move-object v5, v0

    .line 1258
    .local v5, "APDU_GETSTATUS_REMAINED":[B
    const/16 v0, 0x2400

    new-array v6, v0, [B

    .line 1259
    .local v6, "ListByteData":[B
    const/4 v7, 0x0

    .line 1261
    .local v7, "ListByteDataLen":I
    const/4 v8, 0x0

    .line 1263
    .local v8, "resultList":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1266
    .local v9, "isOpenCheck":Z
    const/4 v10, -0x1

    .line 1267
    .local v10, "ret":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-array v13, v0, [B

    .line 1268
    .local v13, "res":[B
    const/4 v14, -0x1

    .line 1270
    .local v14, "resLen":I
    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v15

    move v10, v15

    .line 1272
    if-eqz v10, :cond_0

    .line 1273
    const-string v0, "S-LOG SCRS Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-object v11

    .line 1276
    :cond_0
    const/4 v9, 0x1

    .line 1279
    array-length v15, v3

    invoke-virtual {v1, v3, v15, v13, v12}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    move v14, v15

    .line 1281
    array-length v15, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Select Error"

    const/4 v11, 0x2

    if-ge v15, v11, :cond_1

    .line 1282
    :try_start_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1284
    const/4 v2, 0x0

    return-object v2

    .line 1286
    :cond_1
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    move-object v13, v15

    .line 1288
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

    .line 1289
    if-lt v14, v11, :cond_7

    add-int/lit8 v12, v14, -0x2

    aget-byte v12, v13, v12

    const/16 v15, -0x70

    if-ne v12, v15, :cond_7

    add-int/lit8 v12, v14, -0x1

    aget-byte v12, v13, v12

    if-nez v12, :cond_7

    .line 1291
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v15, 0xa

    if-ge v12, v15, :cond_7

    .line 1292
    const/16 v15, 0x2400

    new-array v11, v15, [B

    .line 1293
    .end local v13    # "res":[B
    .local v11, "res":[B
    if-nez v12, :cond_2

    .line 1294
    array-length v13, v4

    const/4 v15, 0x0

    invoke-virtual {v1, v4, v13, v11, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    .end local v14    # "resLen":I
    .local v13, "resLen":I
    goto :goto_1

    .line 1296
    .end local v13    # "resLen":I
    .restart local v14    # "resLen":I
    :cond_2
    array-length v13, v5

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v13, v11, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    .line 1298
    .end local v14    # "resLen":I
    .restart local v13    # "resLen":I
    :goto_1
    array-length v14, v11

    const/4 v15, 0x2

    if-ge v14, v15, :cond_3

    .line 1299
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1301
    const/4 v2, 0x0

    return-object v2

    .line 1303
    :cond_3
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    move-object v11, v14

    .line 1305
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

    .line 1306
    const/4 v14, 0x2

    if-lt v13, v14, :cond_4

    add-int/lit8 v14, v13, -0x2

    aget-byte v14, v11, v14

    const/16 v15, -0x70

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v13, -0x1

    aget-byte v14, v11, v14

    if-nez v14, :cond_5

    .line 1307
    const-string v0, "GET DATA FINISH"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/4 v0, 0x2

    add-int/lit8 v14, v13, -0x2

    .line 1310
    .end local v13    # "resLen":I
    .restart local v14    # "resLen":I
    const/4 v13, 0x0

    invoke-static {v11, v13, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1311
    add-int/2addr v7, v14

    .line 1313
    move-object v13, v11

    goto :goto_2

    .line 1306
    .end local v14    # "resLen":I
    .restart local v13    # "resLen":I
    :cond_4
    const/16 v15, -0x70

    .line 1314
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

    .line 1315
    const-string v14, "GET DATA MORE"

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    add-int/lit8 v14, v13, -0x2

    .line 1318
    .end local v13    # "resLen":I
    .restart local v14    # "resLen":I
    const/4 v13, 0x0

    invoke-static {v11, v13, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1319
    add-int/2addr v7, v14

    .line 1291
    add-int/lit8 v12, v12, 0x1

    move-object v13, v11

    const/4 v11, 0x2

    const/16 v15, -0x70

    goto/16 :goto_0

    .line 1321
    .end local v14    # "resLen":I
    .restart local v13    # "resLen":I
    :cond_6
    const-string v0, "Send Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1323
    const/4 v2, 0x0

    return-object v2

    .line 1327
    .end local v11    # "res":[B
    .end local v12    # "i":I
    .local v13, "res":[B
    .restart local v14    # "resLen":I
    :cond_7
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1329
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move-object v6, v0

    .line 1330
    invoke-static {v6}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SCRS LIST : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1333
    return-object v8

    .line 1334
    .end local v10    # "ret":I
    .end local v13    # "res":[B
    .end local v14    # "resLen":I
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "GET DATA EXCEPTION"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    if-eqz v9, :cond_8

    .line 1338
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1339
    const/4 v9, 0x0

    .line 1343
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v2, 0x0

    return-object v2

    nop

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

    .line 2033
    const-string v0, ""

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist isShutdownRequested()Z
    .locals 5

    .line 210
    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v1, "sys.shutdown.requested"

    .line 212
    .local v1, "sysShutDownRequestedProp":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "sysShutDownRequested":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    const-string v3, "Not supported to get ESEA during shutdown process"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v0, 0x1

    return v0

    .line 219
    .end local v2    # "sysShutDownRequested":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get prop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isValidPackageForSpi()Z
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_0

    .line 271
    const-string v0, "SPI is currently not in use"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    const/4 v1, 0x1

    return v1

    .line 278
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

    .line 280
    return v1
.end method

.method private blacklist readSkuProperty()V
    .locals 4

    .line 201
    const-string/jumbo v0, "ro.boot.hardware.sku"

    .line 203
    .local v0, "skuProp":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get sysProp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEC_ESE_Service"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist releaseSpiUsage()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_0

    .line 309
    const-string v0, "SPI is currently not in use"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
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

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    .line 314
    :goto_0
    return-void
.end method

.method private blacklist requestSpiUsage()Z
    .locals 5

    .line 286
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 287
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    .line 290
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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 293
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
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

    .line 298
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    goto :goto_1

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
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

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 303
    .end local v0    # "i":I
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

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setCosNameProperty()V
    .locals 5

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, "propCosName":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    const-string v2, "MULTI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SEC_ESE_Service"

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "s3fwrn5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "UT5.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, "_01000012"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "sn110t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string v1, "JCOP5.3T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "_00353145"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "sn220t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    const-string v1, "JCOP6.2T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, "_00354A4A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 239
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

    .line 240
    return-void

    .line 243
    :cond_3
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP5.1F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    const-string v1, "_00354C52"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    :cond_4
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP6.2F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    const-string v1, "_0035544B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    :cond_5
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP6.2P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 249
    const-string v1, "_00505644"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "_0051414C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 251
    :cond_6
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "UT6.0U"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "_0100000E"

    if-eqz v1, :cond_7

    .line 252
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    :cond_7
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v4, "UT6.0T"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 254
    const-string v1, "_0100000F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :goto_0
    :try_start_0
    const-string/jumbo v1, "ro.security.ese.cosname"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_1

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "failed to set sysProp: cosname"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 257
    :cond_8
    return-void
.end method

.method private blacklist startSPITimer()V
    .locals 5

    .line 330
    const-string v0, "SEC_ESE_Service"

    :try_start_0
    const-string/jumbo v1, "startSPITimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 332
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    .line 333
    new-instance v2, Lcom/android/server/SemService$SPITimeoutTask;

    invoke-direct {v2, p0}, Lcom/android/server/SemService$SPITimeoutTask;-><init>(Lcom/android/server/SemService;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 335
    :cond_0
    const-string v1, "Timer\'s already been started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    goto :goto_1

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
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

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist stopSPITimer()V
    .locals 5

    .line 345
    const-string v0, "SEC_ESE_Service"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "stopSPITimer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 348
    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    goto :goto_0

    .line 350
    :cond_0
    const-string v2, "Timer\'s already been stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    goto :goto_1

    .line 352
    :catch_0
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/Exception;
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

    .line 354
    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    .line 356
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist ICD()I
    .locals 5

    .line 1047
    const/16 v0, -0x5a

    .line 1049
    .local v0, "icdResult":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const-string v2, "SEC_ESE_Service"

    if-nez v1, :cond_0

    .line 1050
    const-string v1, "ICD Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/16 v1, -0x5b

    return v1

    .line 1055
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniICD()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1065
    :goto_0
    goto :goto_1

    .line 1062
    :catch_0
    move-exception v1

    .line 1063
    .local v1, "e":Ljava/lang/Exception;
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

    .line 1064
    const/16 v0, -0x5a

    goto :goto_1

    .line 1059
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1060
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 1061
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1056
    :catch_2
    move-exception v1

    .line 1057
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 1058
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1068
    :goto_1
    return v0
.end method

.method public native blacklist checkSeStatus([B[B)I
.end method

.method public blacklist check_SeState([B[B)I
    .locals 5
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B

    .line 1939
    const/4 v0, -0x1

    .line 1941
    .local v0, "ret":I
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start checkSeState"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 1944
    return v3

    .line 1947
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1948
    const/16 v1, -0xc8

    return v1

    .line 1951
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1952
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1954
    return v3

    .line 1958
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->checkSeStatus([B[B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1968
    :goto_0
    goto :goto_1

    .line 1965
    :catch_0
    move-exception v2

    .line 1966
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const/16 v0, -0x5a

    goto :goto_1

    .line 1962
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1963
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/4 v0, -0x3

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1959
    :catch_2
    move-exception v2

    .line 1960
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1970
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1972
    return v0
.end method

.method public native blacklist closeDriverSpi()I
.end method

.method public native blacklist closeSpi(I)I
.end method

.method public blacklist closeSpiDriver()I
    .locals 5

    .line 2265
    const-string v0, "SEC_ESE_Service"

    const-string v1, "closeSpiDriver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/16 v1, -0x5a

    .line 2268
    .local v1, "closeResult":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 2269
    const-string v2, "closeSpiDriver Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    return v3

    .line 2273
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2274
    const/16 v0, -0xc8

    return v0

    .line 2277
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2278
    const-string v2, "ICCC Device Status Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2280
    return v3

    .line 2284
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->closeDriverSpi()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2294
    .end local v1    # "closeResult":I
    .local v0, "closeResult":I
    :goto_0
    goto :goto_1

    .line 2291
    .end local v0    # "closeResult":I
    .restart local v1    # "closeResult":I
    :catch_0
    move-exception v2

    .line 2292
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const/16 v0, -0x5a

    .end local v1    # "closeResult":I
    .restart local v0    # "closeResult":I
    goto :goto_1

    .line 2288
    .end local v0    # "closeResult":I
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "closeResult":I
    :catch_1
    move-exception v2

    .line 2289
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    const/4 v0, -0x3

    .end local v1    # "closeResult":I
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "closeResult":I
    goto :goto_0

    .line 2285
    .end local v0    # "closeResult":I
    .restart local v1    # "closeResult":I
    :catch_2
    move-exception v2

    .line 2286
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v0, -0x2

    .end local v1    # "closeResult":I
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v0    # "closeResult":I
    goto :goto_0

    .line 2296
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2299
    return v0
.end method

.method public blacklist close_Spi(I)I
    .locals 5
    .param p1, "flag"    # I

    .line 1857
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start close_Spi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const/4 v1, 0x0

    .line 1861
    .local v1, "ret":I
    if-nez p1, :cond_0

    .line 1862
    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_0

    .line 1863
    const/16 v0, -0xa

    return v0

    .line 1867
    :cond_0
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1868
    const-string v2, "close_Spi Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/16 v0, -0x5b

    return v0

    .line 1872
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1873
    const/16 v0, -0xc8

    return v0

    .line 1877
    :cond_2
    if-nez p1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SemService;->stopSPITimer()V

    .line 1878
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->synchronizedCloseSpi(I)I

    move-result v2

    move v1, v2

    .line 1879
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1886
    :catch_0
    move-exception v2

    .line 1887
    .local v2, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const/16 v1, -0x5a

    goto :goto_1

    .line 1883
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1884
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const/4 v1, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1880
    :catch_2
    move-exception v2

    .line 1881
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const/4 v1, -0x3

    .line 1889
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 1891
    :goto_1
    return v1
.end method

.method public native blacklist coldReset()I
.end method

.method public blacklist continue_attestation(Ljava/lang/String;I[B)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "rspData"    # [B

    .line 1109
    const-string v0, "SEC_ESE_Service"

    const-string v1, "continue_atteestation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/4 v1, -0x1

    .line 1112
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 1113
    return v3

    .line 1116
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1117
    const/16 v0, -0xc8

    return v0

    .line 1120
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1121
    const-string v2, "ICCC Device Status Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1123
    return v3

    .line 1127
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SemService;->continueattestation(Ljava/lang/String;I[B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1137
    :goto_0
    goto :goto_1

    .line 1134
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/16 v1, -0x5a

    goto :goto_1

    .line 1131
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1132
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/16 v1, -0x5c

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1128
    :catch_2
    move-exception v2

    .line 1129
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/16 v1, -0x5c

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1139
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v1
.end method

.method public native blacklist continueattestation(Ljava/lang/String;I[B)I
.end method

.method public native blacklist deactivateCards(I[[B[II)I
.end method

.method public native blacklist deactivateCardsAID(II[[B[II[[B[II[[B[II)I
.end method

.method public blacklist deactivate_Cards(I[Ljava/lang/String;[II)I
    .locals 9
    .param p1, "RequestType"    # I
    .param p2, "package_name_list"    # [Ljava/lang/String;
    .param p3, "package_len"    # [I
    .param p4, "arrayLen"    # I

    .line 774
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start deactivate_Cards"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v1, 0x0

    .line 776
    .local v1, "ret":I
    new-array v2, p4, [[B

    .line 778
    .local v2, "package_name":[[B
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    const/16 v4, -0x5b

    if-nez v3, :cond_0

    .line 779
    const-string v3, "deactivate_Cards Permission Error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return v4

    .line 783
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 784
    const/16 v0, -0xc8

    return v0

    .line 787
    :cond_1
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v3}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v3

    if-nez v3, :cond_2

    .line 788
    const-string v3, "ICCC Device Status Error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 790
    return v4

    .line 793
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 794
    const/16 v0, -0xa

    return v0

    .line 797
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_4

    .line 799
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 800
    .local v4, "OutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 801
    .local v5, "DataOut":Ljava/io/DataOutputStream;
    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    aput-object v6, v2, v3

    .line 803
    aget-object v6, v2, v3

    const/4 v7, 0x2

    aget-object v8, v2, v3

    array-length v8, v8

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v4    # "OutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "DataOut":Ljava/io/DataOutputStream;
    goto :goto_1

    .line 804
    :catch_0
    move-exception v4

    .line 805
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v4    # "e":Ljava/lang/Exception;
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

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 812
    .end local v3    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/server/SemService;->deactivateCards(I[[B[II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    .line 819
    :goto_2
    goto :goto_3

    .line 817
    :catch_1
    move-exception v3

    .line 818
    .local v3, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 815
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 816
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_2

    .line 813
    :catch_3
    move-exception v3

    .line 814
    .local v3, "e":Ljava/lang/NoClassDefFoundError;
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_2

    .line 821
    :goto_3
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 823
    return v1
.end method

.method public blacklist deactivate_CardsAID(II[Ljava/lang/String;[II)I
    .locals 26
    .param p1, "RequestType"    # I
    .param p2, "bean"    # I
    .param p3, "package_aid"    # [Ljava/lang/String;
    .param p4, "package_len"    # [I
    .param p5, "arrayLen"    # I

    .line 827
    move-object/from16 v13, p0

    move/from16 v14, p5

    const-string v1, "#"

    const-string v15, "SEC_ESE_Service"

    const-string v0, "Start deactivate_Cards"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/16 v16, 0x0

    .line 829
    .local v16, "ret":I
    new-array v12, v14, [[B

    .line 830
    .local v12, "package_name":[[B
    new-array v11, v14, [[B

    .line 831
    .local v11, "package_name_Star":[[B
    new-array v10, v14, [[B

    .line 832
    .local v10, "package_name_Sharp":[[B
    new-array v9, v14, [I

    .line 833
    .local v9, "package_len_Star":[I
    new-array v8, v14, [I

    .line 834
    .local v8, "package_len_Sharp":[I
    const/4 v0, 0x0

    .local v0, "name_cnt":I
    const/4 v2, 0x0

    .local v2, "star_cnt":I
    const/4 v3, 0x0

    .line 835
    .local v3, "sharp_cnt":I
    const/4 v4, 0x0

    .line 837
    .local v4, "element":Ljava/lang/String;
    iget-object v5, v13, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v6, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v5, v6}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v5

    const/16 v6, -0x5b

    if-nez v5, :cond_0

    .line 838
    const-string v1, "deactivate_CardsAID Permission Error"

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return v6

    .line 842
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v5

    if-nez v5, :cond_1

    .line 843
    const/16 v1, -0xc8

    return v1

    .line 846
    :cond_1
    iget-object v5, v13, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v5}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v5

    if-nez v5, :cond_2

    .line 847
    const-string v1, "ICCC Device Status Error"

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 849
    return v6

    .line 852
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 853
    const/16 v1, -0xa

    return v1

    .line 856
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

    .line 857
    const/4 v5, 0x0

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v0    # "name_cnt":I
    .end local v2    # "star_cnt":I
    .end local v3    # "sharp_cnt":I
    .end local v4    # "element":Ljava/lang/String;
    .local v5, "i":I
    .local v17, "name_cnt":I
    .local v18, "star_cnt":I
    .local v19, "sharp_cnt":I
    .local v20, "element":Ljava/lang/String;
    :goto_0
    if-ge v5, v14, :cond_8

    .line 859
    const/4 v2, 0x0

    .line 860
    .end local v20    # "element":Ljava/lang/String;
    .local v2, "element":Ljava/lang/String;
    :try_start_0
    aget-object v0, p3, v5

    move-object v2, v0

    .line 862
    if-nez v2, :cond_4

    .line 863
    const-string v0, "element is null"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 864
    :cond_4
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v0, :cond_5

    .line 865
    :try_start_1
    const-string v0, "[*]"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 866
    if-eqz v2, :cond_7

    .line 867
    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v11, v18

    .line 868
    aget-object v0, v11, v18

    if-eqz v0, :cond_7

    .line 869
    aget-object v0, v11, v18

    array-length v0, v0

    aput v0, v9, v18

    .line 870
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 873
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 874
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 875
    if-eqz v2, :cond_7

    .line 876
    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v10, v19

    .line 877
    aget-object v0, v10, v19

    if-eqz v0, :cond_7

    .line 878
    aget-object v0, v10, v19

    array-length v0, v0

    aput v0, v8, v19

    .line 879
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 883
    :cond_6
    if-eqz v2, :cond_7

    .line 884
    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v12, v17

    .line 885
    aget-object v0, v12, v17

    if-eqz v0, :cond_7

    .line 886
    aget-object v0, v12, v17

    array-length v0, v0

    aput v0, p4, v17
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 887
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/Exception;
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

    .line 891
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/NullPointerException;
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

    .line 895
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_7
    :goto_1
    move-object/from16 v20, v2

    .line 857
    .end local v2    # "element":Ljava/lang/String;
    .restart local v20    # "element":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 899
    .end local v5    # "i":I
    :cond_8
    :try_start_2
    const-string v0, "DDA Start "

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 900
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move/from16 v6, v17

    move-object v7, v11

    move-object/from16 v21, v8

    .end local v8    # "package_len_Sharp":[I
    .local v21, "package_len_Sharp":[I
    move-object v8, v9

    move-object/from16 v22, v9

    .end local v9    # "package_len_Star":[I
    .local v22, "package_len_Star":[I
    move/from16 v9, v18

    move-object/from16 v23, v10

    .end local v10    # "package_name_Sharp":[[B
    .local v23, "package_name_Sharp":[[B
    move-object/from16 v24, v11

    .end local v11    # "package_name_Star":[[B
    .local v24, "package_name_Star":[[B
    move-object/from16 v11, v21

    move-object/from16 v25, v12

    .end local v12    # "package_name":[[B
    .local v25, "package_name":[[B
    move/from16 v12, v19

    :try_start_3
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/SemService;->deactivateCardsAID(II[[B[II[[B[II[[B[II)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v16, v0

    .line 909
    :goto_3
    goto/16 :goto_7

    .line 907
    :catch_2
    move-exception v0

    goto :goto_4

    .line 905
    :catch_3
    move-exception v0

    goto :goto_5

    .line 903
    :catch_4
    move-exception v0

    goto :goto_6

    .line 907
    .end local v21    # "package_len_Sharp":[I
    .end local v22    # "package_len_Star":[I
    .end local v23    # "package_name_Sharp":[[B
    .end local v24    # "package_name_Star":[[B
    .end local v25    # "package_name":[[B
    .restart local v8    # "package_len_Sharp":[I
    .restart local v9    # "package_len_Star":[I
    .restart local v10    # "package_name_Sharp":[[B
    .restart local v11    # "package_name_Star":[[B
    .restart local v12    # "package_name":[[B
    :catch_5
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 908
    .end local v8    # "package_len_Sharp":[I
    .end local v9    # "package_len_Star":[I
    .end local v10    # "package_name_Sharp":[[B
    .end local v11    # "package_name_Star":[[B
    .end local v12    # "package_name":[[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "package_len_Sharp":[I
    .restart local v22    # "package_len_Star":[I
    .restart local v23    # "package_name_Sharp":[[B
    .restart local v24    # "package_name_Star":[[B
    .restart local v25    # "package_name":[[B
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

    .line 905
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v21    # "package_len_Sharp":[I
    .end local v22    # "package_len_Star":[I
    .end local v23    # "package_name_Sharp":[[B
    .end local v24    # "package_name_Star":[[B
    .end local v25    # "package_name":[[B
    .restart local v8    # "package_len_Sharp":[I
    .restart local v9    # "package_len_Star":[I
    .restart local v10    # "package_name_Sharp":[[B
    .restart local v11    # "package_name_Star":[[B
    .restart local v12    # "package_name":[[B
    :catch_6
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 906
    .end local v8    # "package_len_Sharp":[I
    .end local v9    # "package_len_Star":[I
    .end local v10    # "package_name_Sharp":[[B
    .end local v11    # "package_name_Star":[[B
    .end local v12    # "package_name":[[B
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    .restart local v21    # "package_len_Sharp":[I
    .restart local v22    # "package_len_Star":[I
    .restart local v23    # "package_name_Sharp":[[B
    .restart local v24    # "package_name_Star":[[B
    .restart local v25    # "package_name":[[B
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

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_3

    .line 903
    .end local v21    # "package_len_Sharp":[I
    .end local v22    # "package_len_Star":[I
    .end local v23    # "package_name_Sharp":[[B
    .end local v24    # "package_name_Star":[[B
    .end local v25    # "package_name":[[B
    .restart local v8    # "package_len_Sharp":[I
    .restart local v9    # "package_len_Star":[I
    .restart local v10    # "package_name_Sharp":[[B
    .restart local v11    # "package_name_Star":[[B
    .restart local v12    # "package_name":[[B
    :catch_7
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 904
    .end local v8    # "package_len_Sharp":[I
    .end local v9    # "package_len_Star":[I
    .end local v10    # "package_name_Sharp":[[B
    .end local v11    # "package_name_Star":[[B
    .end local v12    # "package_name":[[B
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v21    # "package_len_Sharp":[I
    .restart local v22    # "package_len_Star":[I
    .restart local v23    # "package_name_Sharp":[[B
    .restart local v24    # "package_name_Star":[[B
    .restart local v25    # "package_name":[[B
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

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_3

    .line 911
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 913
    return v16
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1690
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

    .line 1691
    const-string v0, "not support eSE device: can\'t dump"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    return-void

    .line 1694
    :cond_0
    const-string v0, "DUMP MANAGER LOG START"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object v0, v1, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1696
    const-string v0, "Permission Denial: can\'t dump"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    return-void

    .line 1699
    :cond_1
    if-nez v2, :cond_2

    .line 1700
    const-string v0, "invalid parameters dump"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1702
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1703
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v5, "\n***SemService EDS***"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1704
    const-string v5, "\n[SCRS LIST]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1707
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1708
    .local v5, "uid":I
    iget-object v6, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v6}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1710
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v7, v6, v5, v8}, Lcom/android/server/SemServiceAccessControl;->addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V

    .line 1711
    iget-object v7, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v7, v6, v5, v8}, Lcom/android/server/SemServiceAccessControl;->addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V

    .line 1712
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->getSCRSActivationList()Ljava/lang/String;

    move-result-object v7

    .line 1713
    .local v7, "SCRSInfo":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->getAccessRule()Ljava/lang/String;

    move-result-object v8

    .line 1714
    .local v8, "ARAInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object v9

    .line 1715
    .local v9, "CPLCInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->mDLlog()Ljava/lang/String;

    move-result-object v10

    .line 1716
    .local v10, "mDLInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->get_ESEA()Ljava/lang/String;

    move-result-object v11

    .line 1718
    .local v11, "ACdumpInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->start_SLOG()V

    .line 1720
    invoke-direct {v1, v7}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1721
    .local v12, "encSCRSInfo":Ljava/lang/String;
    invoke-direct {v1, v8}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1722
    .local v13, "encARAInfo":Ljava/lang/String;
    invoke-direct {v1, v10}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1723
    .local v14, "encmDLInfo":Ljava/lang/String;
    invoke-direct {v1, v9}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1724
    .local v15, "encCPLCInfo":Ljava/lang/String;
    invoke-direct {v1, v11}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1726
    .local v17, "encACdumpInfo":Ljava/lang/String;
    move/from16 v16, v5

    .end local v5    # "uid":I
    .local v16, "uid":I
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v18, v8

    .end local v8    # "ARAInfo":Ljava/lang/String;
    .local v18, "ARAInfo":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1727
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1728
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1729
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1730
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1732
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->stop_SLOG()V

    .line 1734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1735
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v17

    .end local v17    # "encACdumpInfo":Ljava/lang/String;
    .local v5, "encACdumpInfo":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1740
    iget-object v4, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/SemServiceAccessControl;->removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V

    .line 1741
    iget-object v4, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/SemServiceAccessControl;->removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V

    .line 1743
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1746
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "encACdumpInfo":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "SCRSInfo":Ljava/lang/String;
    .end local v9    # "CPLCInfo":Ljava/lang/String;
    .end local v10    # "mDLInfo":Ljava/lang/String;
    .end local v11    # "ACdumpInfo":Ljava/lang/String;
    .end local v12    # "encSCRSInfo":Ljava/lang/String;
    .end local v13    # "encARAInfo":Ljava/lang/String;
    .end local v14    # "encmDLInfo":Ljava/lang/String;
    .end local v15    # "encCPLCInfo":Ljava/lang/String;
    .end local v16    # "uid":I
    .end local v18    # "ARAInfo":Ljava/lang/String;
    :goto_0
    const-string v0, "DUMP MANAGER LOG END"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1750
    :catch_0
    move-exception v0

    .line 1751
    .local v0, "e":Ljava/lang/Error;
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

    goto :goto_2

    .line 1748
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1749
    .local v0, "e":Ljava/lang/Exception;
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

    .line 1752
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 1753
    :goto_2
    return-void
.end method

.method public native blacklist eSEFactoryReset()I
.end method

.method public native blacklist eSEFullFactoryReset()I
.end method

.method public native blacklist eSELowFactoryReset()I
.end method

.method public blacklist eSE_FactoryReset()I
    .locals 5

    .line 918
    const/16 v0, -0x5a

    .line 920
    .local v0, "factoryResetResult":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_0

    .line 921
    return v2

    .line 924
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 925
    const/16 v1, -0xc8

    return v1

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2

    .line 929
    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 931
    return v2

    .line 934
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 935
    const/16 v1, -0xa

    return v1

    .line 939
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

    .line 952
    :goto_0
    goto :goto_1

    .line 949
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Ljava/lang/Error;
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

    .line 951
    const/16 v0, -0x5a

    goto :goto_1

    .line 946
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 947
    .local v1, "e":Ljava/lang/Exception;
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

    .line 948
    const/16 v0, -0x5a

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 943
    :catch_2
    move-exception v1

    .line 944
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 945
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 940
    :catch_3
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 942
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 954
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 956
    return v0
.end method

.method public blacklist eSE_FullFactoryReset()I
    .locals 5

    .line 1002
    const/16 v0, -0x5a

    .line 1004
    .local v0, "factoryResetResult":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_0

    .line 1005
    return v2

    .line 1008
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1009
    const/16 v1, -0xc8

    return v1

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2

    .line 1013
    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1015
    return v2

    .line 1018
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1019
    const/16 v1, -0xa

    return v1

    .line 1023
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

    .line 1036
    :goto_0
    goto :goto_1

    .line 1033
    :catch_0
    move-exception v1

    .line 1034
    .local v1, "e":Ljava/lang/Error;
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

    .line 1035
    const/16 v0, -0x5a

    goto :goto_1

    .line 1030
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/lang/Exception;
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

    .line 1032
    const/16 v0, -0x5a

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1027
    :catch_2
    move-exception v1

    .line 1028
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 1029
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1024
    :catch_3
    move-exception v1

    .line 1025
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 1026
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1038
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1040
    return v0
.end method

.method public blacklist eSE_LowFactoryReset()I
    .locals 5

    .line 960
    const/16 v0, -0x5a

    .line 962
    .local v0, "factoryResetResult":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_0

    .line 963
    return v2

    .line 966
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 967
    const/16 v1, -0xc8

    return v1

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2

    .line 971
    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 973
    return v2

    .line 976
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 977
    const/16 v1, -0xa

    return v1

    .line 981
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

    .line 994
    :goto_0
    goto :goto_1

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, "e":Ljava/lang/Error;
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

    .line 993
    const/16 v0, -0x5a

    goto :goto_1

    .line 988
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 989
    .local v1, "e":Ljava/lang/Exception;
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

    .line 990
    const/16 v0, -0x5a

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 985
    :catch_2
    move-exception v1

    .line 986
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 987
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 982
    :catch_3
    move-exception v1

    .line 983
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 984
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 996
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 998
    return v0
.end method

.method public native blacklist esekCertificateCheck()I
.end method

.method public blacklist esek_certificate_check()I
    .locals 5

    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "ret":I
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start esek_certificate_check"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 462
    const-string v2, "esek_certificate_check Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v3

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    const/16 v1, -0xc8

    return v1

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 471
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 473
    return v3

    .line 476
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 477
    const/16 v1, -0xa

    return v1

    .line 481
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->esekCertificateCheck()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 491
    :goto_0
    goto :goto_1

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/Exception;
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

    .line 490
    const/16 v0, -0x5a

    goto :goto_1

    .line 485
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 487
    const/4 v0, -0x3

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 482
    :catch_2
    move-exception v2

    .line 483
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 484
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 493
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 495
    return v0
.end method

.method public native blacklist getAtr()I
.end method

.method public blacklist getAtr_Spi()I
    .locals 5

    .line 1766
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start getAtr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/4 v1, 0x0

    .line 1769
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1770
    const-string v2, "getAtr Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/16 v0, -0x5b

    return v0

    .line 1774
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1775
    const/16 v0, -0xc8

    return v0

    .line 1779
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->getAtr()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1786
    :goto_0
    goto :goto_1

    .line 1784
    :catch_0
    move-exception v2

    .line 1785
    .local v2, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1782
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1783
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1780
    :catch_2
    move-exception v2

    .line 1781
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1788
    :goto_1
    return v1
.end method

.method public native blacklist getCPLC14mode([B)I
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .locals 6

    .line 360
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start GetCPLC14mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v1, 0x64

    new-array v1, v1, [B

    .line 363
    .local v1, "get_cplc_data":[B
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    const-string v2, "getCPLC14mode Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object v0

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 369
    return-object v3

    .line 373
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/SemService;->getCPLC14mode([B)I

    move-result v2

    .line 374
    .local v2, "dataLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetCPLC14mode Len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 376
    if-gtz v2, :cond_2

    .line 377
    const-string v4, "no data to be returned"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-object v3

    .line 379
    :cond_2
    const/16 v4, 0x3e8

    if-ge v2, v4, :cond_3

    .line 380
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v1, v4

    .line 381
    invoke-static {v1}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_3
    const-string v4, "data overflow"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    return-object v3

    .line 386
    .end local v2    # "dataLen":I
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 390
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v3
.end method

.method public native blacklist getESEA([B)I
.end method

.method public native blacklist getHQMMemory([B)I
.end method

.method public blacklist get_ESEA()Ljava/lang/String;
    .locals 7

    .line 394
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start get_ESEA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 397
    .local v2, "getESEAData":[B
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    const-string v1, "get_ESEA Permission Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object v0

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 403
    return-object v4

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    return-object v4

    .line 411
    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->getESEA([B)I

    move-result v3

    .line 412
    .local v3, "dataLen":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getESEA Len "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 414
    if-gtz v3, :cond_3

    .line 415
    const-string v1, "no data to be returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-object v4

    .line 417
    :cond_3
    if-ge v3, v1, :cond_4

    .line 418
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    move-object v2, v1

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getESEA Return0 : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v1, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 422
    :cond_4
    const-string v1, "data overflow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    return-object v4

    .line 425
    .end local v3    # "dataLen":I
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getESEA, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 429
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public blacklist get_HQMMemory([B)I
    .locals 5
    .param p1, "hw_memory_data"    # [B

    .line 734
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start get_HQMMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v1, 0x0

    .line 737
    .local v1, "dataLen":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MHWParamPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    const-string v2, "get_HQMMemory Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v0, 0x0

    return v0

    .line 742
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 743
    const/16 v0, -0xc8

    return v0

    .line 746
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 747
    const-string v2, "ICCC Device Status Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 749
    const/16 v0, -0x5b

    return v0

    .line 752
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 753
    const/16 v0, -0xa

    return v0

    .line 757
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->getHQMMemory([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 764
    :goto_0
    goto :goto_1

    .line 762
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 760
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 761
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 758
    :catch_2
    move-exception v2

    .line 759
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 766
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 768
    return v1
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

    .line 2198
    const/4 v0, 0x0

    .line 2199
    .local v0, "ret":I
    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_Check_Status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2202
    const/16 v1, -0xa

    monitor-exit p0

    return v1

    .line 2205
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 2206
    const/16 v1, -0x5b

    monitor-exit p0

    return v1

    .line 2210
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

    .line 2220
    goto :goto_0

    .line 2217
    .end local p0    # "this":Lcom/android/server/SemService;
    :catch_0
    move-exception v1

    .line 2218
    .local v1, "e":Ljava/lang/Exception;
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

    .line 2219
    const/16 v0, -0x5a

    goto :goto_0

    .line 2214
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2215
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 2216
    const/4 v0, -0x3

    .line 2220
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 2211
    :catch_2
    move-exception v1

    .line 2212
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 2213
    const/4 v0, -0x2

    .line 2220
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 2222
    :goto_0
    monitor-exit p0

    return v0

    .line 2197
    .end local v0    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_check_restricted_mode()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 2165
    :try_start_0
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start grdm_check_restricted_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
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

    .line 2172
    :cond_0
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v0, [B

    .line 2173
    .local v2, "dataBuf":[B
    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->grdmCheckRestrictedMode([B)I

    move-result v3

    .line 2174
    .local v3, "dataLen":I
    if-gtz v3, :cond_1

    .line 2175
    const-string v0, "SEC_ESE_Service"

    const-string v4, "no data to be returned"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2176
    monitor-exit p0

    return-object v1

    .line 2177
    .end local p0    # "this":Lcom/android/server/SemService;
    :cond_1
    if-ge v3, v0, :cond_2

    .line 2178
    :try_start_2
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 2179
    .end local v2    # "dataBuf":[B
    .local v0, "dataBuf":[B
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2180
    .local v2, "data":Ljava/lang/String;
    const-string v4, "SEC_ESE_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "grdm_check_restricted_mode Return : "

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

    .line 2181
    monitor-exit p0

    return-object v2

    .line 2183
    .end local v0    # "dataBuf":[B
    .local v2, "dataBuf":[B
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

    .line 2184
    monitor-exit p0

    return-object v1

    .line 2190
    .end local v2    # "dataBuf":[B
    .end local v3    # "dataLen":I
    :catch_0
    move-exception v0

    .line 2191
    .local v0, "e":Ljava/lang/Exception;
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

    .line 2188
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2189
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 2192
    nop

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 2186
    :catch_2
    move-exception v0

    .line 2187
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 2192
    nop

    .line 2194
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 2168
    :cond_3
    :goto_1
    :try_start_5
    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_get_attes_cert(I[B)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "rspData"    # [B

    monitor-enter p0

    .line 2136
    const/4 v0, 0x0

    .line 2138
    .local v0, "ret":I
    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_get_attes_cert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2141
    const/16 v1, -0xa

    monitor-exit p0

    return v1

    .line 2144
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 2145
    const/16 v1, -0x5b

    monitor-exit p0

    return v1

    .line 2149
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

    .line 2159
    goto :goto_0

    .line 2156
    .end local p0    # "this":Lcom/android/server/SemService;
    :catch_0
    move-exception v1

    .line 2157
    .local v1, "e":Ljava/lang/Exception;
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

    .line 2158
    const/16 v0, -0x5a

    goto :goto_0

    .line 2153
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2154
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 2155
    const/4 v0, -0x3

    .line 2159
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 2150
    :catch_2
    move-exception v1

    .line 2151
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 2152
    const/4 v0, -0x2

    .line 2159
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 2161
    :goto_0
    monitor-exit p0

    return v0

    .line 2135
    .end local v0    # "ret":I
    .end local p1    # "index":I
    .end local p2    # "rspData":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist grdm_get_session()I
    .locals 5

    monitor-enter p0

    .line 2037
    const/4 v0, 0x0

    .line 2039
    .local v0, "ret":I
    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_get_session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2042
    const/16 v1, -0xa

    monitor-exit p0

    return v1

    .line 2045
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 2046
    const/16 v1, -0x5b

    monitor-exit p0

    return v1

    .line 2050
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z

    if-nez v1, :cond_2

    .line 2051
    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmGetSession()I

    move-result v1

    move v0, v1

    .line 2052
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2053
    iput-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2056
    .end local p0    # "this":Lcom/android/server/SemService;
    :cond_2
    const/16 v0, -0xb

    .line 2067
    :cond_3
    :goto_0
    goto :goto_1

    .line 2064
    :catch_0
    move-exception v1

    .line 2065
    .local v1, "e":Ljava/lang/Exception;
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

    .line 2066
    const/16 v0, -0x5a

    goto :goto_1

    .line 2061
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2062
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 2063
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 2058
    :catch_2
    move-exception v1

    .line 2059
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 2060
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 2069
    :goto_1
    monitor-exit p0

    return v0

    .line 2036
    .end local v0    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_release_session()I
    .locals 5

    monitor-enter p0

    .line 2102
    const/4 v0, 0x0

    .line 2104
    .local v0, "ret":I
    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_release_session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2107
    const/16 v1, -0xa

    monitor-exit p0

    return v1

    .line 2110
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 2111
    const/16 v1, -0x5b

    monitor-exit p0

    return v1

    .line 2115
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z

    if-eqz v1, :cond_2

    .line 2116
    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmReleaseSession()I

    move-result v1

    move v0, v1

    .line 2117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2119
    .end local p0    # "this":Lcom/android/server/SemService;
    :cond_2
    const/16 v0, -0xc

    .line 2130
    :goto_0
    goto :goto_1

    .line 2127
    :catch_0
    move-exception v1

    .line 2128
    .local v1, "e":Ljava/lang/Exception;
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

    .line 2129
    const/16 v0, -0x5a

    goto :goto_1

    .line 2124
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2125
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 2126
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 2121
    :catch_2
    move-exception v1

    .line 2122
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 2123
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 2132
    :goto_1
    monitor-exit p0

    return v0

    .line 2101
    .end local v0    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_request_key(I[B)I
    .locals 5
    .param p1, "domainIndex"    # I
    .param p2, "key_blob"    # [B

    monitor-enter p0

    .line 2073
    const/4 v0, 0x0

    .line 2075
    .local v0, "ret":I
    :try_start_0
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_request_key"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2078
    const/16 v1, -0xa

    monitor-exit p0

    return v1

    .line 2081
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 2082
    const/16 v1, -0x5b

    monitor-exit p0

    return v1

    .line 2086
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

    .line 2096
    goto :goto_0

    .line 2093
    .end local p0    # "this":Lcom/android/server/SemService;
    :catch_0
    move-exception v1

    .line 2094
    .local v1, "e":Ljava/lang/Exception;
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

    .line 2095
    const/16 v0, -0x5a

    goto :goto_0

    .line 2090
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2091
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 2092
    const/4 v0, -0x3

    .line 2096
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 2087
    :catch_2
    move-exception v1

    .line 2088
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 2089
    const/4 v0, -0x2

    .line 2096
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 2098
    :goto_0
    monitor-exit p0

    return v0

    .line 2072
    .end local v0    # "ret":I
    .end local p1    # "domainIndex":I
    .end local p2    # "key_blob":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native blacklist handleCCM([BI)[Ljava/lang/String;
.end method

.method public native blacklist handleCCMCB([BI[BI)[Ljava/lang/String;
.end method

.method public blacklist handle_CCM([BI)[Ljava/lang/String;
    .locals 5
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I

    .line 627
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start handle_CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v1, 0x0

    .line 630
    .local v1, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 631
    const-string v2, "handle_CCM Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-object v3

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 636
    return-object v3

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 640
    const-string v2, "ICCC Device Status Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 642
    return-object v3

    .line 646
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->handleCCM([BI)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 653
    :goto_0
    goto :goto_1

    .line 651
    :catch_0
    move-exception v2

    .line 652
    .local v2, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 649
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 650
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 647
    :catch_2
    move-exception v2

    .line 648
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 655
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 657
    return-object v1
.end method

.method public blacklist handle_CCMCB([BI[BI)[Ljava/lang/String;
    .locals 5
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I
    .param p3, "respData"    # [B
    .param p4, "respLen"    # I

    .line 661
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start handle_CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v1, 0x0

    .line 664
    .local v1, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 665
    const-string v2, "handle_CCM Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-object v3

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 670
    return-object v3

    .line 673
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 674
    const-string v2, "ICCC Device Status Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 676
    return-object v3

    .line 680
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->handleCCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 687
    :goto_0
    goto :goto_1

    .line 685
    :catch_0
    move-exception v2

    .line 686
    .local v2, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 683
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 684
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 681
    :catch_2
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 689
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 691
    return-object v1
.end method

.method public native blacklist injectEsesmKeyset()I
.end method

.method public blacklist inject_esesm_keyset()I
    .locals 5

    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, "ret":I
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start inject_esesm_keyset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 546
    const-string v2, "inject_esesm_keyset Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return v3

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 551
    const/16 v1, -0xc8

    return v1

    .line 554
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 555
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 557
    return v3

    .line 560
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 561
    const/16 v1, -0xa

    return v1

    .line 565
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->injectEsesmKeyset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 575
    :goto_0
    goto :goto_1

    .line 572
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Ljava/lang/Exception;
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

    .line 574
    const/16 v0, -0x5a

    goto :goto_1

    .line 569
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 570
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 571
    const/4 v0, -0x3

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 566
    :catch_2
    move-exception v2

    .line 567
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 568
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 577
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 579
    return v0
.end method

.method public blacklist isLccmSwp()I
    .locals 5

    .line 696
    const/4 v0, 0x0

    .line 698
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_0

    .line 699
    const-string v1, "isLccmSwp Permission Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return v2

    .line 703
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 704
    const/16 v1, -0xc8

    return v1

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 708
    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 710
    return v2

    .line 714
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniIsLccmSwp()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 724
    :goto_0
    goto :goto_1

    .line 721
    :catch_0
    move-exception v1

    .line 722
    .local v1, "e":Ljava/lang/Exception;
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

    .line 723
    const/16 v0, -0x5a

    goto :goto_1

    .line 718
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 719
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 720
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 715
    :catch_2
    move-exception v1

    .line 716
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 717
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 726
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 728
    return v0
.end method

.method public native blacklist jniICD()I
.end method

.method public native blacklist jniIsLccmSwp()I
.end method

.method public blacklist mDLlog()Ljava/lang/String;
    .locals 14

    .line 1445
    const-string v0, "SEC_ESE_Service"

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1449
    .local v1, "APDU_mDLDB_SELECT":[B
    const/16 v2, 0x2400

    new-array v3, v2, [B

    .line 1450
    .local v3, "ListByteData":[B
    const/4 v4, 0x0

    .line 1452
    .local v4, "ListByteDataLen":I
    const/4 v5, 0x0

    .line 1454
    .local v5, "resultList":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1457
    .local v6, "isOpenCheck":Z
    const/4 v7, -0x1

    .line 1458
    .local v7, "ret":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-array v2, v2, [B

    .line 1459
    .local v2, "res":[B
    const/4 v10, -0x1

    .line 1461
    .local v10, "resLen":I
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v11

    move v7, v11

    .line 1463
    if-eqz v7, :cond_0

    .line 1464
    const-string v11, "S-LOG Open Fail"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    return-object v8

    .line 1467
    :cond_0
    const/4 v6, 0x1

    .line 1470
    array-length v11, v1

    invoke-virtual {p0, v1, v11, v2, v9}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v11

    move v10, v11

    .line 1472
    array-length v11, v2

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    .line 1473
    const-string v11, "Select Error"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1475
    return-object v8

    .line 1477
    :cond_1
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    move-object v2, v11

    .line 1479
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SW : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v13, v10, -0x2

    aget-byte v13, v2, v13

    invoke-static {v13}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v13, v10, -0x1

    aget-byte v13, v2, v13

    invoke-static {v13}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    if-lt v10, v12, :cond_2

    add-int/lit8 v11, v10, -0x2

    aget-byte v11, v2, v11

    const/16 v12, -0x70

    if-ne v11, v12, :cond_2

    add-int/lit8 v11, v10, -0x1

    aget-byte v11, v2, v11

    if-nez v11, :cond_2

    .line 1481
    const-string v11, "get mDL"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1483
    :cond_2
    const-string v11, "Select Response Error"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1487
    invoke-static {v2}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 1488
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDL Result : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    return-object v5

    .line 1498
    .end local v2    # "res":[B
    .end local v7    # "ret":I
    .end local v10    # "resLen":I
    :catch_0
    move-exception v2

    .line 1499
    .local v2, "e":Ljava/lang/Error;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GET DATA Error "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    if-eqz v6, :cond_4

    .line 1502
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1503
    const/4 v6, 0x0

    goto :goto_1

    .line 1491
    .end local v2    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v2

    .line 1492
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GET DATA EXCEPTION "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    if-eqz v6, :cond_3

    .line 1495
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1496
    const/4 v0, 0x0

    move v6, v0

    .line 1505
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    nop

    .line 1507
    :cond_4
    :goto_1
    return-object v8

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
.end method

.method public native blacklist openDriverSpi()I
.end method

.method public native blacklist openSpi(I)I
.end method

.method public blacklist openSpiDriver()I
    .locals 5

    .line 2227
    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v1, "openSpiDriver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/16 v1, -0x5a

    .line 2230
    .local v1, "openResult":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 2231
    const-string/jumbo v2, "openSpiDriver Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    return v3

    .line 2235
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2236
    const/16 v0, -0xc8

    return v0

    .line 2239
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2240
    const-string v2, "ICCC Device Status Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2242
    return v3

    .line 2246
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->openDriverSpi()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    .end local v1    # "openResult":I
    .local v0, "openResult":I
    :goto_0
    goto :goto_1

    .line 2253
    .end local v0    # "openResult":I
    .restart local v1    # "openResult":I
    :catch_0
    move-exception v2

    .line 2254
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const/16 v0, -0x5a

    .end local v1    # "openResult":I
    .restart local v0    # "openResult":I
    goto :goto_1

    .line 2250
    .end local v0    # "openResult":I
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "openResult":I
    :catch_1
    move-exception v2

    .line 2251
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    const/4 v0, -0x3

    .end local v1    # "openResult":I
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "openResult":I
    goto :goto_0

    .line 2247
    .end local v0    # "openResult":I
    .restart local v1    # "openResult":I
    :catch_2
    move-exception v2

    .line 2248
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const/4 v0, -0x2

    .end local v1    # "openResult":I
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v0    # "openResult":I
    goto :goto_0

    .line 2258
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2261
    return v0
.end method

.method public blacklist open_Spi(I)I
    .locals 5
    .param p1, "flag"    # I

    .line 1816
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start open_Spi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const/4 v1, 0x0

    .line 1820
    .local v1, "ret":I
    if-nez p1, :cond_0

    .line 1821
    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_0

    .line 1822
    const/16 v0, -0xa

    return v0

    .line 1826
    :cond_0
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1827
    const-string/jumbo v2, "open_Spi Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const/16 v0, -0x5b

    return v0

    .line 1831
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1832
    const/16 v0, -0xc8

    return v0

    .line 1836
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->openSpi(I)I

    move-result v2

    move v1, v2

    .line 1837
    if-eqz v1, :cond_3

    .line 1838
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    goto :goto_0

    .line 1840
    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/server/SemService;->startSPITimer()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1848
    :catch_0
    move-exception v2

    .line 1849
    .local v2, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/16 v1, -0x5a

    goto :goto_1

    .line 1845
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1846
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/4 v1, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1842
    :catch_2
    move-exception v2

    .line 1843
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v1, -0x3

    .line 1851
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_4
    :goto_0
    nop

    .line 1853
    :goto_1
    return v1
.end method

.method public blacklist resetForCOSU()I
    .locals 3

    .line 1792
    const/4 v0, -0x1

    .line 1794
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1795
    const-string v1, "SEC_ESE_Service"

    const-string/jumbo v2, "resetForCOSU Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/16 v1, -0x5b

    return v1

    .line 1799
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1800
    const/16 v1, -0xc8

    return v1

    .line 1808
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SemService;->coldReset()I

    move-result v0

    .line 1810
    return v0
.end method

.method public native blacklist scp11CertificateCheck()I
.end method

.method public blacklist scp11_certificate_check()I
    .locals 5

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "ret":I
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start scp11_certificate_check"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 504
    const-string/jumbo v2, "scp11_certificate_check Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v3

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 509
    const/16 v1, -0xc8

    return v1

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 513
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 515
    return v3

    .line 518
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    const/16 v1, -0xa

    return v1

    .line 523
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->scp11CertificateCheck()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 533
    :goto_0
    goto :goto_1

    .line 530
    :catch_0
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/Exception;
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

    .line 532
    const/16 v0, -0x5a

    goto :goto_1

    .line 527
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 529
    const/4 v0, -0x3

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 524
    :catch_2
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 526
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 535
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 537
    return v0
.end method

.method public blacklist secureLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 1513
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_0

    .line 1514
    const-string v0, "SecureLog Permission Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void

    .line 1519
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

    .line 1526
    nop

    .line 1527
    return-void

    .line 1523
    :catch_0
    move-exception v0

    .line 1524
    .local v0, "e":Ljava/lang/Error;
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

    .line 1525
    return-void

    .line 1520
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1521
    .local v0, "e":Ljava/lang/Exception;
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

    .line 1522
    return-void
.end method

.method public native blacklist semFactory()V
.end method

.method public blacklist sem_factory()V
    .locals 4

    .line 433
    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v1, "sem_factory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    return-void

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    return-void

    .line 444
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->semFactory()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    goto :goto_1

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 447
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsatisfield sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 445
    :catch_2
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDef sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 453
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 454
    return-void
.end method

.method public native blacklist sendData([BI[BI)I
.end method

.method public blacklist send_Data([BI[BI)I
    .locals 5
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B
    .param p4, "flag"    # I

    .line 1899
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start send_Data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v1, 0x0

    .line 1903
    .local v1, "ret":I
    if-nez p4, :cond_0

    .line 1904
    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_0

    .line 1905
    const/16 v0, -0xa

    return v0

    .line 1909
    :cond_0
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1910
    const-string/jumbo v2, "send_Data Permission Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const/16 v0, -0x5b

    return v0

    .line 1914
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1915
    const/16 v0, -0xc8

    return v0

    .line 1919
    :cond_2
    if-nez p4, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SemService;->stopSPITimer()V

    .line 1920
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->sendData([BI[BI)I

    move-result v2

    move v1, v2

    .line 1921
    if-nez p4, :cond_4

    invoke-direct {p0}, Lcom/android/server/SemService;->startSPITimer()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1928
    :catch_0
    move-exception v2

    .line 1929
    .local v2, "e":Ljava/lang/Exception;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    const/16 v1, -0x5a

    goto :goto_1

    .line 1925
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1926
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const/4 v1, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1922
    :catch_2
    move-exception v2

    .line 1923
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const/4 v1, -0x3

    .line 1931
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_4
    :goto_0
    nop

    .line 1933
    :goto_1
    return v1
.end method

.method public native blacklist startRequestCredentials([B[BLjava/lang/String;[B)I
.end method

.method public blacklist start_SLOG()V
    .locals 8

    .line 1530
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start_SLOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v1, -0x1

    .line 1532
    .local v1, "resultSecurity":I
    const/4 v2, -0x1

    .line 1533
    .local v2, "resultSKMS":I
    const/16 v3, 0x12c

    new-array v4, v3, [B

    .line 1534
    .local v4, "getPKDataSecurity":[B
    new-array v3, v3, [B

    .line 1536
    .local v3, "getPKDataSKMS":[B
    iget-object v5, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v6, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v5, v6}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1537
    const-string v5, "Start_SLOG Permission Error"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    return-void

    .line 1542
    :cond_0
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v5

    move v1, v5

    .line 1543
    invoke-virtual {p0, v3}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v5

    move v2, v5

    .line 1545
    iput v1, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    .line 1546
    iput v2, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    .line 1548
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    .line 1549
    iget v5, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    nop

    .line 1563
    return-void

    .line 1559
    :catch_0
    move-exception v5

    .line 1560
    .local v5, "e":Ljava/lang/Error;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return-void

    .line 1556
    .end local v5    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v5

    .line 1557
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return-void

    .line 1553
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 1554
    .local v5, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return-void

    .line 1550
    .end local v5    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v5

    .line 1551
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-void
.end method

.method public blacklist start_attestation([BI[BI)I
    .locals 5
    .param p1, "drRsp"    # [B
    .param p2, "drLen"    # I
    .param p3, "svRsp"    # [B
    .param p4, "svLen"    # I

    .line 1072
    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v1, "start_attestation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v1, -0x1

    .line 1075
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 1076
    return v3

    .line 1079
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1080
    const/16 v0, -0xc8

    return v0

    .line 1083
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1084
    const-string v2, "ICCC Device Status Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1086
    return v3

    .line 1090
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->startattestation([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    .end local v1    # "result":I
    .local v0, "result":I
    :goto_0
    goto :goto_1

    .line 1097
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v2

    .line 1098
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/16 v0, -0x5a

    .end local v1    # "result":I
    .restart local v0    # "result":I
    goto :goto_1

    .line 1094
    .end local v0    # "result":I
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":I
    :catch_1
    move-exception v2

    .line 1095
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/16 v0, -0x5c

    .end local v1    # "result":I
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "result":I
    goto :goto_0

    .line 1091
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :catch_2
    move-exception v2

    .line 1092
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/16 v0, -0x5c

    .end local v1    # "result":I
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v0    # "result":I
    goto :goto_0

    .line 1102
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1105
    return v0
.end method

.method public blacklist start_request_credentials([B[BLjava/lang/String;[B)I
    .locals 5
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "key_blob"    # [B

    .line 1976
    const/4 v0, -0x1

    .line 1978
    .local v0, "ret":I
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start start_request_credentials"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 1981
    return v3

    .line 1984
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1985
    const/16 v1, -0xc8

    return v1

    .line 1988
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1989
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1991
    return v3

    .line 1995
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->startRequestCredentials([B[BLjava/lang/String;[B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2005
    :goto_0
    goto :goto_1

    .line 2002
    :catch_0
    move-exception v2

    .line 2003
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start_request_credentials, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const/16 v0, -0x5a

    goto :goto_1

    .line 1999
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 2000
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield start_request_credentials, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const/4 v0, -0x3

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1996
    :catch_2
    move-exception v2

    .line 1997
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef start_request_credentials, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 2007
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2009
    return v0
.end method

.method public native blacklist startattestation([BI[BI)I
.end method

.method public native blacklist stopRequestCredentials()V
.end method

.method public blacklist stop_SLOG()V
    .locals 21

    .line 1566
    move-object/from16 v1, p0

    const-string v2, "Close Exception "

    const/16 v3, 0x64

    .line 1568
    .local v3, "fileMaxSize":I
    iget-object v0, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const-string v4, "SEC_ESE_Service"

    if-nez v0, :cond_0

    .line 1569
    const-string v0, "Stop_SLOG Permission Error"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    return-void

    .line 1573
    :cond_0
    const-string v5, "/data/log/sse1"

    .line 1574
    .local v5, "dirPath1":Ljava/lang/String;
    const-string v6, "/data/log/sse2"

    .line 1575
    .local v6, "dirPath2":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1576
    .local v7, "dirPath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1577
    .local v8, "bw":Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .line 1579
    .local v9, "fos":Ljava/io/FileOutputStream;
    iget-object v0, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1582
    .local v10, "logStr":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 1583
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v0, "file1":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v11, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    const-wide/16 v13, 0x64

    const-wide/16 v15, 0x400

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1587
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_1

    .line 1588
    move-object v7, v6

    goto/16 :goto_0

    .line 1590
    :cond_1
    move-object v7, v5

    goto/16 :goto_0

    .line 1592
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1593
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_3

    .line 1594
    move-object v7, v5

    goto :goto_0

    .line 1596
    :cond_3
    move-object v7, v6

    goto :goto_0

    .line 1598
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1599
    move-object v7, v5

    goto :goto_0

    .line 1601
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    cmp-long v12, v17, v19

    if-lez v12, :cond_7

    .line 1602
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_6

    .line 1603
    move-object v7, v6

    .line 1604
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_9

    .line 1605
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1608
    :cond_6
    move-object v7, v5

    goto :goto_0

    .line 1611
    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_8

    .line 1612
    move-object v7, v5

    .line 1613
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_9

    .line 1614
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1617
    :cond_8
    move-object v7, v6

    .line 1622
    :cond_9
    :goto_0
    invoke-direct {v1, v10}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 1624
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DP : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v12, v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v9, v12

    .line 1626
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v9, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v8, v12

    .line 1627
    if-eqz v10, :cond_a

    .line 1628
    invoke-virtual {v8, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1630
    :cond_a
    const-string v12, "\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1632
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 1633
    const/4 v8, 0x0

    .line 1635
    const-string v12, "chmod a+r -R /data/log/sse1"

    .line 1636
    .local v12, "cmd1":Ljava/lang/String;
    const-string v13, "chmod a+r -R /data/log/sse2"

    .line 1637
    .local v13, "cmd2":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    .line 1638
    .local v14, "rt":Ljava/lang/Runtime;
    invoke-virtual {v14, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v15

    .line 1639
    .local v15, "prc":Ljava/lang/Process;
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I

    .line 1640
    invoke-virtual {v14, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    move-object/from16 v15, v16

    .line 1641
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I

    .line 1642
    nop

    .end local v0    # "file1":Ljava/io/File;
    .end local v11    # "file2":Ljava/io/File;
    .end local v12    # "cmd1":Ljava/lang/String;
    .end local v13    # "cmd2":Ljava/lang/String;
    .end local v14    # "rt":Ljava/lang/Runtime;
    .end local v15    # "prc":Ljava/lang/Process;
    goto :goto_1

    .line 1645
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1643
    :cond_b
    const-string v0, "LD Null Error"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    :goto_1
    goto :goto_3

    .line 1645
    :goto_2
    move-object v11, v0

    .line 1646
    .local v11, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Save Exception "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    if-eqz v8, :cond_c

    .line 1649
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1653
    goto :goto_3

    .line 1650
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1652
    .local v0, "e1":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Close Fail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    .end local v0    # "e1":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_3
    :try_start_2
    const-string v0, "Buffer Init"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v0, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1660
    iget-object v0, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1669
    if-eqz v9, :cond_d

    .line 1670
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1671
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1672
    const/4 v9, 0x0

    goto :goto_4

    .line 1679
    :catch_2
    move-exception v0

    goto :goto_5

    .line 1674
    :cond_d
    :goto_4
    if-eqz v8, :cond_10

    .line 1675
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1676
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1677
    const/4 v0, 0x0

    move-object v8, v0

    .end local v8    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    goto :goto_c

    .line 1681
    .local v0, "e1":Ljava/io/IOException;
    .restart local v8    # "bw":Ljava/io/BufferedWriter;
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b

    .line 1668
    .end local v0    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object v11, v0

    goto :goto_e

    .line 1663
    :catch_3
    move-exception v0

    .line 1664
    .local v0, "e":Ljava/lang/Error;
    :try_start_4
    const-string v11, "Buffer Error"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1669
    .end local v0    # "e":Ljava/lang/Error;
    if-eqz v9, :cond_e

    .line 1670
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1671
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1672
    const/4 v9, 0x0

    goto :goto_6

    .line 1679
    :catch_4
    move-exception v0

    goto :goto_7

    .line 1674
    :cond_e
    :goto_6
    if-eqz v8, :cond_10

    .line 1675
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1676
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 1681
    .local v0, "e1":Ljava/io/IOException;
    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b

    .line 1661
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 1662
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v11, "Buffer Exception"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1669
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_f

    .line 1670
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1671
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1672
    const/4 v9, 0x0

    goto :goto_8

    .line 1679
    :catch_6
    move-exception v0

    goto :goto_a

    .line 1674
    :cond_f
    :goto_8
    if-eqz v8, :cond_10

    .line 1675
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1676
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1677
    :goto_9
    const/4 v8, 0x0

    goto :goto_c

    .line 1681
    .local v0, "e1":Ljava/io/IOException;
    :goto_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_d

    .line 1682
    :cond_10
    :goto_c
    nop

    .line 1684
    :goto_d
    return-void

    .line 1669
    :goto_e
    if-eqz v9, :cond_11

    .line 1670
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1671
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1672
    const/4 v9, 0x0

    goto :goto_f

    .line 1679
    :catch_7
    move-exception v0

    goto :goto_10

    .line 1674
    :cond_11
    :goto_f
    if-eqz v8, :cond_12

    .line 1675
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1676
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1677
    const/4 v0, 0x0

    move-object v8, v0

    .end local v8    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    goto :goto_11

    .line 1681
    .local v0, "e1":Ljava/io/IOException;
    .restart local v8    # "bw":Ljava/io/BufferedWriter;
    :goto_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1682
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_12
    :goto_11
    nop

    .line 1683
    :goto_12
    throw v11
.end method

.method public blacklist stop_request_credentials()V
    .locals 4

    .line 2013
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start stop_request_credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2016
    return-void

    .line 2020
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->stopRequestCredentials()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    :goto_0
    goto :goto_1

    .line 2025
    :catch_0
    move-exception v1

    .line 2026
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2023
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2024
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsatisfield stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 2021
    :catch_2
    move-exception v1

    .line 2022
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDef stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 2028
    :goto_1
    return-void
.end method

.method public declared-synchronized blacklist synchronizedCloseSpi(I)I
    .locals 1
    .param p1, "flag"    # I

    monitor-enter p0

    .line 1895
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->closeSpi(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1895
    .end local p0    # "this":Lcom/android/server/SemService;
    .end local p1    # "flag":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native blacklist verifyEsesmKeyset()I
.end method

.method public blacklist verify_esesm_keyset()I
    .locals 5

    .line 583
    const/4 v0, 0x0

    .line 585
    .local v0, "ret":I
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start verify_esesm_keyset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    .line 588
    const-string/jumbo v2, "verify_esesm_keyset Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return v3

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 593
    const/16 v1, -0xc8

    return v1

    .line 596
    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 597
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 599
    return v3

    .line 602
    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    const/16 v1, -0xa

    return v1

    .line 607
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->verifyEsesmKeyset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 617
    :goto_0
    goto :goto_1

    .line 614
    :catch_0
    move-exception v2

    .line 615
    .local v2, "e":Ljava/lang/Exception;
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

    .line 616
    const/16 v0, -0x5a

    goto :goto_1

    .line 611
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 612
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
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

    .line 613
    const/4 v0, -0x3

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 608
    :catch_2
    move-exception v2

    .line 609
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    .line 610
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 619
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 621
    return v0
.end method
