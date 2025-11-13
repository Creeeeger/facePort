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
.method static bridge synthetic blacklist -$$Nest$msetFidoResultData(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V
    .locals 1
    .param p1, "cry"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 392
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 393
    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    .line 394
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/Signature;[B)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 410
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 411
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    .line 412
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 415
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 416
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    .line 417
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;[B)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 420
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 421
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    .line 422
    return-void
.end method

.method private blacklist setFidoResultData([B)V
    .locals 0
    .param p1, "fidoResultData"    # [B

    .line 475
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    .line 476
    return-void
.end method


# virtual methods
.method public blacklist getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFidoRequestData()[B
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public whitelist getFidoResultData()[B
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpId()J
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
