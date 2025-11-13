.class public final Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
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
.method private constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V
    .locals 1
    .param p1, "cry"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 334
    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 335
    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    .line 336
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/Signature;[B)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 356
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 357
    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    .line 358
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 362
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 363
    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    .line 364
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;[B)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 368
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 369
    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    .line 370
    return-void
.end method


# virtual methods
.method public blacklist getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFidoRequestData()[B
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public whitelist getFidoResultData()[B
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpId()J
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method blacklist setFidoResultData([B)V
    .locals 0
    .param p1, "fidoResultData"    # [B

    .line 421
    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 422
    return-void
.end method
