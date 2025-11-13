.class abstract Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$PKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private final blacklist mKeymasterPadding:I

.field private blacklist mKeymasterPaddingOverride:I

.field private blacklist mModulusSizeBytes:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "keymasterPadding"    # I

    .line 381
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 382
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 383
    return-void
.end method


# virtual methods
.method protected blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 494
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v0, 0x10000002

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getKeymasterPaddingOverride()I

    move-result v0

    .line 498
    .local v0, "keymasterPadding":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 499
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 501
    :cond_0
    const v2, 0x20000006

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getKeymasterPurposeOverride()I

    move-result v2

    .line 505
    .local v2, "purposeOverride":I
    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_2

    .line 510
    :cond_1
    const v1, 0x20000005

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_2
    return-void
.end method

.method protected blacklist adjustConfigForEncryptingWithPrivateKey()Z
    .locals 1

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method protected final whitelist test-api engineGetBlockSize()I
    .locals 1

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method protected final whitelist test-api engineGetIV()[B
    .locals 1

    .line 530
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist test-api engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .line 535
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getModulusSizeBytes()I

    move-result v0

    return v0
.end method

.method protected final blacklist getKeymasterPaddingOverride()I
    .locals 1

    .line 553
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return v0
.end method

.method protected final blacklist getModulusSizeBytes()I
    .locals 2

    .line 539
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 542
    return v0

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getTransform()Ljava/lang/String;
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSA/ECB/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist initKey(ILjava/security/Key;)V
    .locals 9
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 392
    if-eqz p2, :cond_9

    .line 395
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 400
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_0

    .line 401
    move-object v0, p2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreKey;

    .local v0, "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    goto :goto_0

    .line 402
    .end local v0    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    :cond_0
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_7

    .line 403
    move-object v0, p2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 408
    .restart local v0    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    :goto_0
    instance-of v1, v0, Ljava/security/PrivateKey;

    const-string v2, " and padding "

    if-eqz v1, :cond_2

    .line 410
    packed-switch p1, :pswitch_data_0

    .line 426
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA private keys cannot be used with opmode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :pswitch_0
    goto/16 :goto_1

    .line 417
    :pswitch_1
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->adjustConfigForEncryptingWithPrivateKey()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 418
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RSA private keys cannot be used with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 419
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 421
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only RSA public keys supported for this mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_2
    const-string v1, "RSA public keys cannot be used with "

    packed-switch p1, :pswitch_data_1

    .line 445
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :pswitch_2
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 439
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 441
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only RSA private keys supported for this opmode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 435
    :pswitch_3
    nop

    .line 450
    :goto_1
    const-wide/16 v1, -0x1

    .line 451
    .local v1, "keySizeBits":J
    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 452
    .local v6, "a":Landroid/system/keystore2/Authorization;
    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v8, 0x30000003

    if-ne v7, v8, :cond_3

    .line 453
    invoke-static {v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v1

    .line 451
    .end local v6    # "a":Landroid/system/keystore2/Authorization;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 457
    :cond_4
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    .line 459
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5

    .line 462
    const-wide/16 v3, 0x7

    add-long/2addr v3, v1

    const-wide/16 v5, 0x8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 464
    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 465
    return-void

    .line 460
    :cond_5
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    :cond_6
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Size of key not known"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 405
    .end local v0    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    .end local v1    # "keySizeBits":J
    :cond_7
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_8
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_9
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key: null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .locals 0
    .param p1, "parameters"    # [Landroid/hardware/security/keymint/KeyParameter;

    .line 519
    return-void
.end method

.method protected final blacklist resetAll()V
    .locals 1

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 482
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 483
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 484
    return-void
.end method

.method protected final blacklist resetWhilePreservingInitState()V
    .locals 0

    .line 488
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 489
    return-void
.end method

.method protected final blacklist setKeymasterPaddingOverride(I)V
    .locals 0
    .param p1, "keymasterPadding"    # I

    .line 549
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 550
    return-void
.end method
