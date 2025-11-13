.class public final Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private final blacklist mCrypto:Ljava/lang/Object;

.field private final blacklist mFidoRequestData:[B

.field private blacklist mFidoResultData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetFidoResultData(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/Signature;[B)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 552
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 553
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 554
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 563
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 564
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 565
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/Mac;[B)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 574
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 575
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 576
    return-void
.end method

.method private blacklist setFidoResultData([B)V
    .locals 0
    .param p1, "fidoResultData"    # [B

    .line 631
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 632
    return-void
.end method


# virtual methods
.method public blacklist getCipher()Ljavax/crypto/Cipher;
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

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

    .line 617
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public blacklist getFidoResultData()[B
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public blacklist getMac()Ljavax/crypto/Mac;
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

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

    .line 607
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public blacklist getSignature()Ljava/security/Signature;
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljava/security/Signature;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/security/Signature;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
