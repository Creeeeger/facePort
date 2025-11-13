.class public Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlgorithm:Ljava/lang/String;

.field public mAlias:Ljava/lang/String;

.field public mBlockModes:[Ljava/lang/String;

.field public mDigests:[Ljava/lang/String;

.field public mEcCurveName:Ljava/lang/String;

.field public mKeyGenParamSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field public mKeyPairGenSpec:Landroid/security/KeyPairGeneratorSpec;

.field public mKeySize:I

.field public mPurpose:I

.field public mSignaturePaddings:[Ljava/lang/String;

.field public mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mPurpose:I

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "sha256WithRSA"

    return-object p0

    :cond_0
    const-string v0, "DSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "sha1WithDSA"

    return-object p0

    :cond_1
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "sha256WithECDSA"

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported key type "

    invoke-static {v1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mPurpose:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mBlockModes:[Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mDigests:[Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_DIGESTS:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSignaturePaddings:[Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mEcCurveName:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "generatedpublickey"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/security/PublicKey;

    if-eqz p0, :cond_4

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generateKeyPair returns null public key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call initialize with an android.security.KeyPairGeneratorSpec or android.security.keystore.KeyGenParameterSpec first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_4

    instance-of p2, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of p2, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mEcCurveName:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    instance-of p2, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mBlockModes:[Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mDigests:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSignaturePaddings:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mPurpose:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of p2, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mEcCurveName:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "params must be of type android.security.KeyPairGeneratorSpecor or android.security.keystore.KeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "must supply params of type android.security.KeyPairGeneratorSpec or android.security.keystore.KeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
