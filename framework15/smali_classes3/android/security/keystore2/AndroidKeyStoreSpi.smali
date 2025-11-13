.class public Landroid/security/keystore2/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;
    }
.end annotation


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "AndroidKeyStore"

.field public static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreSpi"


# instance fields
.field private blacklist mKeyStore:Landroid/security/KeyStore2;

.field private blacklist mNamespace:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAliasesBatch(Landroid/security/keystore2/AndroidKeyStoreSpi;Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getAliasesBatch(Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    return-void
.end method

.method private static blacklist assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    iget-object v1, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v1, p1, :cond_1

    iget v1, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v1, v0, :cond_0

    iget-wide v1, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only replace keys with same alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in the same target domain: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in the same target namespace: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getAliasesBatch(Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/security/KeyStore2;->listBatch(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to list keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/system/keystore2/KeyDescriptor;

    return-object v1
.end method

.method private blacklist getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;
    .locals 4

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const-string v2, "AndroidKeyStoreSpi"

    const-string v3, "Could not get key metadata from Keystore."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getKeymasterEcCurve(Ljava/security/PrivateKey;)I
    .locals 3

    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore2/KeymasterUtils;->getKeymasterEcCurve(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/XECKey;

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/XECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/XECPrivateKey;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    sget-object v2, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-interface {v0, v2}, Ljava/security/spec/AlgorithmParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XDH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    instance-of v0, p1, Ljava/security/interfaces/EdECKey;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/EdECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/EdECPrivateKey;->getParams()Ljava/security/spec/NamedParameterSpec;

    move-result-object v0

    sget-object v2, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-interface {v0, v2}, Ljava/security/spec/AlgorithmParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/PrivateKey;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    const-string v3, "NONE"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_0

    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xf

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v8, "SHA-384"

    const-string v9, "SHA-512"

    const-string v3, "NONE"

    const-string v4, "MD5"

    const-string v5, "SHA-1"

    const-string v6, "SHA-224"

    const-string v7, "SHA-256"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    const-string v3, "PKCS1Padding"

    const-string v4, "OAEPPadding"

    const-string v5, "NoPadding"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    const-string v3, "PKCS1"

    const-string v4, "PSS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getMgf1DigestSetterFlag()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/security/Flags;->mgf1DigestSetterV2()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AndroidKeyStore"

    const-string v2, "Cannot read MGF1 Digest setter flag value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getTargetDomain()I
    .locals 2

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private blacklist isKeyEntry(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$setPrivateKeyEntry$0(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v0

    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$setSecretKeyEntry$1(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v0

    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 3

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    return-object v0
.end method

.method private blacklist setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "SHA-1"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v7

    move v12, v6

    move-object v13, v7

    goto :goto_0

    :cond_0
    instance-of v7, v4, Landroid/security/KeyStoreParameter;

    if-eqz v7, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Landroid/security/KeyStoreParameter;

    move v12, v6

    move-object v13, v7

    goto :goto_0

    :cond_1
    instance-of v7, v4, Landroid/security/keystore/KeyProtection;

    if-eqz v7, :cond_21

    move-object v7, v4

    check-cast v7, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v8

    if-eqz v8, :cond_2

    or-int/lit8 v6, v6, 0x1

    :cond_2
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x2

    move v12, v6

    move-object v13, v7

    goto :goto_0

    :cond_3
    move v12, v6

    move-object v13, v7

    :goto_0
    if-eqz v3, :cond_20

    array-length v6, v3

    if-eqz v6, :cond_20

    array-length v6, v3

    new-array v14, v6, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_6

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "X.509"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Certificates must be in X.509 format: invalid cert #"

    if-eqz v7, :cond_5

    aget-object v7, v3, v6

    instance-of v7, v7, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_4

    aget-object v7, v3, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    aput-object v7, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v6, 0x0

    :try_start_0
    aget-object v7, v14, v6

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_9

    move-object v15, v7

    nop

    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_9

    array-length v7, v14

    sub-int/2addr v7, v8

    new-array v7, v7, [[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    array-length v11, v7

    if-ge v10, v11, :cond_7

    add-int/lit8 v11, v10, 0x1

    :try_start_1
    aget-object v11, v14, v11

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v11

    aput-object v11, v7, v10

    aget-object v11, v7, v10

    array-length v11, v11
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v9, v11

    nop

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to encode certificate #"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_7
    new-array v10, v9, [B

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_3
    array-length v6, v7

    if-ge v8, v6, :cond_8

    aget-object v6, v7, v8

    array-length v6, v6

    aget-object v3, v7, v8

    const/4 v4, 0x0

    invoke-static {v3, v4, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v6

    const/4 v3, 0x0

    aput-object v3, v7, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v4, p4

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    move-object v3, v10

    goto :goto_4

    :cond_9
    move v4, v6

    const/4 v10, 0x0

    move-object v3, v10

    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v11

    instance-of v6, v2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const-string v10, "Failed to store certificate and certificate chain"

    if-eqz v6, :cond_a

    move-object v4, v2

    check-cast v4, Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v4}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    iget v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v9, p1

    invoke-static {v9, v11, v0, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    move-object v7, v2

    check-cast v7, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-virtual {v7}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v7

    invoke-virtual {v0, v7, v15, v3}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_2
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    return-void

    :catch_1
    move-exception v0

    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_a
    move-object/from16 v9, p1

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1f

    const-string v6, "PKCS#8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v17

    if-eqz v17, :cond_1e

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v6

    nop

    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v6

    const v4, 0x10000002

    invoke-static {v4, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v4

    new-instance v6, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;

    invoke-direct {v6, v7}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v4, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v4, :cond_b

    :try_start_4
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v18, v8

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_c

    :try_start_5
    aget-object v19, v4, v8

    nop

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v6

    const v6, 0x20000005

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    nop

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v20

    move/from16 v6, v21

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v18, v8

    move-object v4, v7

    move/from16 v16, v11

    move-object/from16 v26, v18

    goto/16 :goto_f

    :cond_b
    move-object/from16 v18, v8

    :cond_c
    :try_start_6
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_d

    :try_start_7
    aget-object v19, v4, v8

    nop

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v6

    const v6, 0x20000004

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3

    nop

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v20

    move/from16 v6, v21

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v4, v7

    move/from16 v16, v11

    move-object/from16 v26, v18

    goto/16 :goto_f

    :cond_d
    nop

    :try_start_8
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v6
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_f

    :try_start_9
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    if-eqz v6, :cond_f

    array-length v6, v4

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_f

    aget v16, v4, v8

    nop

    invoke-static/range {v16 .. v16}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v19

    if-eqz v19, :cond_e

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". See KeyProtection documentation."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_f
    :try_start_a
    array-length v6, v4
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_7

    const/4 v8, 0x0

    :goto_8
    const v9, 0x20000006

    if-ge v8, v6, :cond_17

    :try_start_b
    aget v16, v4, v8

    move/from16 v19, v16

    move-object/from16 v16, v4

    move/from16 v4, v19

    invoke-static {v9, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    if-ne v4, v9, :cond_16

    invoke-static {v5}, Landroid/security/keystore2/KeymasterUtils;->isKeyMintDevice(I)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isMgf1DigestsSpecified()Z

    move-result v9

    move/from16 v19, v4

    if-eqz v9, :cond_11

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMgf1Digests()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    nop

    invoke-static/range {v20 .. v20}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v6

    const v6, 0x200000cb

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v6, v22

    goto :goto_9

    :cond_10
    move/from16 v22, v6

    move-object/from16 v20, v0

    goto/16 :goto_c

    :cond_11
    move/from16 v22, v6

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    const v6, 0x200000cb

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getMgf1DigestSetterFlag()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    move-object/from16 v20, v0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v9, :cond_13

    aget-object v23, v6, v0

    invoke-static/range {v23 .. v23}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v24

    move/from16 v25, v24

    move-object/from16 v24, v6

    move/from16 v6, v25

    if-eq v6, v4, :cond_12

    move/from16 v25, v4

    move/from16 v21, v9

    const v4, 0x200000cb

    invoke-static {v4, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_b

    :cond_12
    move/from16 v25, v4

    move/from16 v21, v9

    const v4, 0x200000cb

    :goto_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v21

    move-object/from16 v6, v24

    move/from16 v4, v25

    goto :goto_a

    :cond_13
    move/from16 v25, v4

    goto :goto_c

    :cond_14
    move-object/from16 v20, v0

    goto :goto_c

    :cond_15
    move-object/from16 v20, v0

    move/from16 v19, v4

    move/from16 v22, v6

    goto :goto_c

    :cond_16
    move-object/from16 v20, v0

    move/from16 v19, v4

    move/from16 v22, v6

    :goto_c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, p1

    move-object/from16 v4, v16

    move-object/from16 v0, v20

    move/from16 v6, v22

    goto/16 :goto_8

    :cond_17
    move-object/from16 v16, v4

    :try_start_c
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v4, :cond_18

    :try_start_d
    aget-object v8, v0, v6

    nop

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v19, v0

    const v0, 0x20000006

    invoke-static {v0, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3

    nop

    add-int/lit8 v6, v6, 0x1

    move v9, v0

    move-object/from16 v0, v19

    goto :goto_d

    :cond_18
    :try_start_e
    invoke-static {v7, v13}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_7

    if-eqz v0, :cond_19

    nop

    :try_start_f
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    const v4, 0x60000190

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_3

    :cond_19
    :try_start_10
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_7

    if-eqz v0, :cond_1a

    nop

    :try_start_11
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    const v4, 0x60000191

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_3

    :cond_1a
    :try_start_12
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_7

    if-eqz v0, :cond_1b

    nop

    :try_start_13
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    const v4, 0x60000192

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_3

    :cond_1b
    :try_start_14
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_7

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1c

    nop

    :try_start_15
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    const v4, 0x30000195

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_3

    :cond_1c
    nop

    :try_start_16
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_7

    const/4 v4, 0x3

    if-ne v4, v0, :cond_1d

    nop

    :try_start_17
    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeymasterEcCurve(Ljava/security/PrivateKey;)I

    move-result v0

    const v4, 0x1000000a

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_3

    :cond_1d
    nop

    :try_start_18
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v5}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0
    :try_end_18
    .catch Landroid/security/KeyStoreException; {:try_start_18 .. :try_end_18} :catch_6

    move-object v4, v7

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v9, v18

    move-object/from16 v26, v9

    move-object v9, v4

    move-object/from16 v27, v10

    move v10, v12

    move/from16 v16, v11

    move-object/from16 v11, v17

    :try_start_19
    invoke-virtual/range {v6 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0
    :try_end_19
    .catch Landroid/security/KeyStoreException; {:try_start_19 .. :try_end_19} :catch_5

    move-object v8, v0

    :try_start_1a
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v9, v8, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v0, v9, v15, v3}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_1a
    .catch Landroid/security/KeyStoreException; {:try_start_1a .. :try_end_1a} :catch_4

    nop

    nop

    return-void

    :catch_4
    move-exception v0

    :try_start_1b
    iget-object v9, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v10, v8, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v9, v10}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    new-instance v9, Ljava/security/KeyStoreException;

    move-object/from16 v10, v27

    invoke-direct {v9, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_1b
    .catch Landroid/security/KeyStoreException; {:try_start_1b .. :try_end_1b} :catch_5

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    move-object v4, v7

    move/from16 v16, v11

    move-object/from16 v26, v18

    :goto_e
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "Failed to store private key"

    invoke-direct {v6, v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_7
    move-exception v0

    move-object v4, v7

    move/from16 v16, v11

    move-object/from16 v26, v18

    goto :goto_f

    :catch_8
    move-exception v0

    move-object v4, v7

    move-object/from16 v26, v8

    move/from16 v16, v11

    :goto_f
    new-instance v6, Ljava/security/KeyStoreException;

    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_1e
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v4, "Private key did not export any key material"

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-object/from16 v26, v8

    move/from16 v16, v11

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported private key export format: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v26

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ". Only private keys which export their key material in PKCS#8 format are supported."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_9
    move-exception v0

    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "Failed to encode certificate #0"

    invoke-direct {v3, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_20
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported protection parameter class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/KeyStoreParameter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_1

    instance-of v0, v3, Landroid/security/keystore/KeyProtection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protection parameter class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move-object v4, v3

    check-cast v4, Landroid/security/keystore/KeyProtection;

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v5

    instance-of v0, v2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_3

    move-object v0, v2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    move-object v6, v2

    check-cast v6, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {v6}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    iget v7, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v8, p1

    invoke-static {v8, v5, v7, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    if-nez v4, :cond_2

    return-void

    :cond_2
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v9, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v7, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    move-object/from16 v8, p1

    if-eqz v4, :cond_1d

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    const-string v0, "RAW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    if-eqz v7, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    nop

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v0

    const v9, 0x10000002

    invoke-static {v9, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x80

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v0, v9, :cond_8

    nop

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_7

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v16

    if-eqz v16, :cond_5

    nop

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v10, v17

    array-length v11, v10

    if-ne v11, v14, :cond_4

    aget v11, v10, v13

    if-ne v11, v9, :cond_4

    goto :goto_1

    :cond_4
    new-instance v11, Ljava/security/KeyStoreException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported digests specification: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Only "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " supported for HMAC key algorithm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    :goto_1
    invoke-static {v9}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v10

    if-eq v10, v12, :cond_6

    const v11, 0x20000005

    invoke-static {v11, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v11, 0x30000008

    invoke-static {v11, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_3

    :cond_6
    new-instance v11, Ljava/security/ProviderException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7
    new-instance v10, Ljava/security/ProviderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_8
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_9

    aget-object v13, v9, v11

    nop

    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v12

    const v14, 0x20000005

    invoke-static {v14, v12}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v11, v11, 0x1

    const/4 v12, -0x1

    const/4 v14, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v9

    new-instance v10, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;

    invoke-direct {v10, v15}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {v9, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v10

    const/4 v11, 0x1

    and-int/2addr v10, v11

    if-eqz v10, :cond_b

    move-object v10, v3

    check-cast v10, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v10}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v9, 0x1

    goto :goto_4

    :cond_a
    const v10, 0x70000007

    invoke-static {v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_10

    aget-object v14, v10, v13

    invoke-static {v14}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v17

    move/from16 v18, v17

    if-eqz v9, :cond_d

    invoke-static/range {v18 .. v18}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v17

    if-eqz v17, :cond_c

    goto :goto_6

    :cond_c
    new-instance v10, Ljava/security/KeyStoreException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". See KeyProtection documentation."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_d
    :goto_6
    const/16 v11, 0x20

    if-ne v0, v11, :cond_f

    move/from16 v19, v0

    move/from16 v0, v18

    if-ne v0, v11, :cond_e

    const/16 v11, 0x60

    const v2, 0x30000008

    invoke-static {v2, v11}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const v2, 0x30000008

    goto :goto_7

    :cond_f
    move/from16 v19, v0

    move/from16 v0, v18

    const v2, 0x30000008

    :goto_7
    const v11, 0x20000004

    invoke-static {v11, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move/from16 v0, v19

    const/4 v11, 0x1

    goto :goto_5

    :cond_10
    move/from16 v19, v0

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_19

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v2, :cond_11

    aget-object v10, v0, v13

    nop

    invoke-static {v10}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v11

    const v12, 0x20000006

    invoke-static {v12, v11}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_11
    invoke-static {v15, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_12

    nop

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    const v2, 0x60000190

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_13

    nop

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    const v2, 0x60000191

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_14

    nop

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    const v2, 0x60000192

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    nop

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    const v2, 0x30000195

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isRollbackResistant()Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7000012f

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_16
    nop

    const/4 v0, 0x0

    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v2

    if-eqz v2, :cond_17

    or-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_9

    :cond_17
    move v2, v0

    :goto_9
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v14, 0x2

    goto :goto_a

    :cond_18
    const/4 v14, 0x1

    :goto_a
    nop

    :try_start_1
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v14}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v10
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x0

    move-object v12, v15

    move v13, v2

    move/from16 v16, v14

    move-object v14, v7

    :try_start_2
    invoke-virtual/range {v9 .. v14}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    :try_end_2
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move/from16 v16, v14

    :goto_b
    new-instance v9, Ljava/security/KeyStoreException;

    const-string v10, "Failed to import secret key."

    invoke-direct {v9, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_19
    :try_start_3
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Signature paddings not supported for symmetric keys"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported secret key material export format: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Only secret keys that export their key material are supported"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Failed to import wrapped key. Keystore error code: "

    if-nez p3, :cond_c

    const/16 v0, 0x20

    new-array v3, v0, [B

    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getTransformation()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    const/4 v0, 0x0

    aget-object v13, v4, v0

    const-string v5, "RSA"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x10000002

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v5, v4

    if-le v5, v6, :cond_0

    aget-object v5, v4, v6

    nop

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v7

    const v8, 0x20000004

    invoke-static {v8, v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    array-length v5, v4

    const/4 v7, 0x2

    if-le v5, v7, :cond_1

    aget-object v5, v4, v7

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1

    const v8, 0x20000006

    invoke-static {v8, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v5

    if-eqz v5, :cond_2

    nop

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const v8, 0x20000005

    invoke-static {v8, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappingKeyAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v15

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    iget-object v8, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v8, v15}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v8
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v11, v8

    nop

    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v16

    new-instance v5, Landroid/security/KeyStoreSecurityLevel;

    iget-object v8, v11, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v5, v8}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v8

    const-class v9, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v8, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v8

    new-instance v8, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct {v8}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    iput v6, v8, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    iput-wide v0, v8, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v0, v10

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-wide v6, v10, v1

    new-instance v21, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct/range {v21 .. v21}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    move-object/from16 v22, v21

    move/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v22, v3

    const/4 v3, 0x2

    iput v3, v0, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    iput-wide v6, v0, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move v7, v3

    move/from16 v0, v21

    move-object/from16 v3, v22

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v22, v3

    move v3, v7

    array-length v0, v4

    if-le v0, v3, :cond_a

    iget-object v0, v11, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget v0, v0, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    if-ne v0, v3, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    move v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStrongBoxBacked : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isQcom : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/security/keystore2/KeymasterUtils;->isQCDevice()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AndroidKeyStoreSpi"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    aget-object v3, v4, v1

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_9

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/security/keystore2/KeymasterUtils;->isQCDevice()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_5
    iget-object v1, v11, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v1, :cond_8

    iget-object v1, v11, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    if-eqz v1, :cond_8

    iget-object v1, v11, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    array-length v6, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_7

    move/from16 v19, v0

    aget-object v0, v1, v7

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v1, v1, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    move-object/from16 v21, v0

    const v0, 0x200000cb

    if-ne v1, v0, :cond_6

    nop

    const-string v1, "SHA-1"

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v20

    goto :goto_2

    :cond_7
    move/from16 v19, v0

    move-object/from16 v20, v1

    goto :goto_3

    :cond_8
    move/from16 v19, v0

    goto :goto_3

    :cond_9
    move/from16 v19, v0

    :cond_a
    :goto_3
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappedKeyBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/system/keystore2/AuthenticatorSpec;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/system/keystore2/AuthenticatorSpec;
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v18, v8

    move-object v8, v0

    move-object/from16 v19, v9

    move-object v9, v3

    move-object v3, v10

    move-object v10, v12

    move-object/from16 v20, v11

    move-object v11, v1

    :try_start_2
    invoke-virtual/range {v5 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    :try_end_2
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object v3, v10

    move-object/from16 v20, v11

    :goto_4
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    new-instance v1, Landroid/security/keystore/SecureKeyImportUnavailableException;

    const-string v2, "Could not import wrapped key"

    invoke-direct {v1, v2}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    move-object/from16 v22, v3

    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Algorithm \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not supported for wrapping. Only RSA wrapping keys are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters are specified inside wrapped keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 3

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist toCertificates([B)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;-><init>(Landroid/security/keystore2/AndroidKeyStoreSpi;Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator-IA;)V

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v3, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v3, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v1
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AndroidKeyStoreSpi"

    if-nez v1, :cond_1

    const-string v1, "In engineGetCertificateAlias: only X.509 certificates are supported."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v4

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/security/KeyStore2;->list(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to get list of keystore entries."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v5, v0, v4

    iget-object v6, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v7, :cond_5

    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v3, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    return-object v3

    :cond_5
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v7, :cond_6

    if-nez v2, :cond_6

    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v2, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    return-object v2

    :catch_1
    move-exception v1

    const-string v3, "While trying to get the alias for a certificate."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 9

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v5, v3

    new-array v3, v5, [Ljava/security/cert/Certificate;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    aput-object v8, v3, v6

    move v6, v7

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    new-array v3, v3, [Ljava/security/cert/Certificate;

    :goto_1
    const/4 v4, 0x0

    aput-object v2, v3, v4

    return-object v3

    :cond_4
    :goto_2
    return-object v1
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v2, v2, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/Date;

    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v2, v2, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    invoke-static {v0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0
    :try_end_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Landroid/security/KeyStoreException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/security/KeyStoreException;

    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->getNamespace()I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    return-void
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Couldn\'t insert certificate."

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Entry exists and is not a trusted certificate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p2, :cond_4

    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    return-void

    :cond_0
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/security/keystore/WrappedKeyEntry;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/security/keystore/WrappedKeyEntry;

    invoke-direct {p0, p1, v0, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    nop

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry must be a PrivateKeyEntry, SecretKeyEntry, WrappedKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entry == null"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p3, :cond_1

    array-length v0, p3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, v0, p4, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSize()I
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/security/KeyStore2;->getNumberOfEntries(IJ)I

    move-result v0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to get the number of keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist initForTesting(Landroid/security/KeyStore2;)V
    .locals 1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    return-void
.end method
