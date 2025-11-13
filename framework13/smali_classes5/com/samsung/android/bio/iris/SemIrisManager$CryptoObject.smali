.class public final Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private final blacklist mCrypto:Ljava/lang/Object;

.field private blacklist mFidoRequestData:[B

.field private blacklist mFidoResultData:[B


# direct methods
.method public constructor whitelist <init>(Ljava/security/Signature;)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;

    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1233
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1235
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/Signature;[B)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1181
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1183
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 1185
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1247
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1249
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1199
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1201
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 1203
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1261
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1263
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/Mac;[B)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1217
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1219
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 1221
    return-void
.end method


# virtual methods
.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Cipher;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getFidoRequestData()[B
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public blacklist getFidoResultData()[B
    .locals 1

    .line 1373
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Mac;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getOpId()J
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .locals 2

    .line 1275
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljava/security/Signature;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/security/Signature;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist setFidoRequestData([B)V
    .locals 0
    .param p1, "requestData"    # [B

    .line 1355
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 1357
    return-void
.end method

.method public blacklist setFidoResultData([B)V
    .locals 0
    .param p1, "fidoResultData"    # [B

    .line 1386
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1388
    return-void
.end method
