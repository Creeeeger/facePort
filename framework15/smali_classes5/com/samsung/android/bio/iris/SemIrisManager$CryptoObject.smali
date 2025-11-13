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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/Signature;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/Mac;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method


# virtual methods
.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getFidoRequestData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public blacklist getFidoResultData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getOpId()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist setFidoRequestData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public blacklist setFidoResultData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    return-void
.end method
