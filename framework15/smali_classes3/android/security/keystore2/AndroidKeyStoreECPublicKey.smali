.class public Landroid/security/keystore2/AndroidKeyStoreECPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# instance fields
.field private final blacklist mParams:Ljava/security/spec/ECParameterSpec;

.field private final blacklist mW:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/ECPublicKey;)V
    .locals 7

    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLandroid/security/KeyStoreSecurityLevel;Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V

    const-string v0, "X.509"

    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key export format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLandroid/security/KeyStoreSecurityLevel;Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V
    .locals 6

    const-string v4, "EC"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    iput-object p6, p0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .locals 12

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    :try_start_0
    iget-object v5, v4, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v5, v5, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v6, 0x1000000a

    if-ne v5, v6, :cond_0

    iget-object v1, v4, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v1, v1, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v1

    invoke-static {v1}, Landroid/security/keystore2/KeymasterUtils;->getEcCurveFromKeymaster(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore2/KeymasterUtils;->getCurveSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse EC curve "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_1
    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreECPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    iget-wide v7, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v9

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v10

    move-object v5, v1

    move-object v11, v0

    invoke-direct/range {v5 .. v11}, Landroid/security/keystore2/AndroidKeyStoreECPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Landroid/security/KeyStoreSecurityLevel;Ljava/security/spec/ECParameterSpec;)V

    return-object v1
.end method

.method public whitelist test-api getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    return-object v0
.end method
