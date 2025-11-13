.class public final Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private blacklist mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private final blacklist mFidoRequestData:[B

.field private blacklist mFidoResultData:[B


# direct methods
.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V
    .locals 1
    .param p1, "cry"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 483
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 484
    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    .line 485
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/Signature;[B)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 501
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 502
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    .line 503
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 506
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 507
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    .line 508
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;[B)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 511
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 512
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    .line 513
    return-void
.end method

.method static synthetic blacklist access$2500(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p1, "x1"    # [B

    .line 475
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method private blacklist setFidoResultData([B)V
    .locals 0
    .param p1, "fidoResultData"    # [B

    .line 563
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 564
    return-void
.end method


# virtual methods
.method public blacklist getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFidoRequestData()[B
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public whitelist getFidoResultData()[B
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpId()J
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
