.class public Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAlgorithm:Ljava/lang/String;

.field public mAlias:Ljava/lang/String;

.field public mIsRandomizedEncryptionRequired:Z

.field public mKeySize:I

.field public mPurposes:I

.field public mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;

    const-string v0, "UcmKeyGenerator"

    sput-object v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mSource:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mSource:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mIsRandomizedEncryptionRequired:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mPurposes:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlgorithm:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mKeySize:I

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "booleanresponse"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSecretKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineInit(Ljava/security/SecureRandom;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of p2, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mKeySize:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mPurposes:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mIsRandomizedEncryptionRequired:Z

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo p1, "params must be of type android.security.keystore.KeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
