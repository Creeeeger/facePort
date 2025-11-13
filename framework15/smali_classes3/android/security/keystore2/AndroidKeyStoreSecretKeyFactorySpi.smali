.class public Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method

.method private static blacklist getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to get GateKeeper secure user ID"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;
    .locals 57

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9

    move/from16 v24, v1

    :try_start_1
    array-length v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8

    move/from16 v25, v2

    move-wide/from16 v50, v16

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    :try_start_2
    aget-object v16, v0, v2

    move-object/from16 v17, v16

    move-object/from16 v28, v0

    move/from16 v27, v1

    move-object/from16 v1, v17

    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7

    const-wide/32 v16, 0x7fffffff

    sparse-switch v0, :sswitch_data_0

    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    goto/16 :goto_3

    :sswitch_0
    const/4 v0, 0x1

    move/from16 v20, v0

    goto/16 :goto_4

    :sswitch_1
    :try_start_3
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0

    move/from16 v22, v0

    goto/16 :goto_4

    :sswitch_2
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0

    move/from16 v21, v0

    goto/16 :goto_4

    :sswitch_3
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0

    move/from16 v19, v0

    goto/16 :goto_4

    :sswitch_4
    const/4 v0, 0x0

    move/from16 v18, v0

    goto/16 :goto_4

    :sswitch_5
    nop

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v0

    move-object v15, v0

    goto/16 :goto_4

    :sswitch_6
    nop

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v0

    move-object v14, v0

    goto/16 :goto_4

    :sswitch_7
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v13, v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v1, v24

    move/from16 v2, v25

    move-wide/from16 v16, v50

    goto/16 :goto_8

    :sswitch_8
    nop

    :try_start_4
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v29
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7

    move-wide/from16 v31, v29

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    move-wide/from16 v14, v31

    cmp-long v0, v14, v16

    if-gtz v0, :cond_0

    move-wide/from16 v50, v14

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    goto/16 :goto_4

    :cond_0
    :try_start_5
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v54, v13

    :try_start_6
    const-string v13, "User authentication timeout validity too long: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " seconds"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move-wide/from16 v16, v14

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move-wide/from16 v16, v14

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    goto/16 :goto_8

    :sswitch_9
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    :try_start_7
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v13

    cmp-long v0, v13, v16

    if-gtz v0, :cond_1

    long-to-int v0, v13

    move/from16 v23, v0

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Usage count of limited use key too long: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_a
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v13

    cmp-long v0, v13, v16

    if-gtz v0, :cond_2

    long-to-int v0, v13

    move v4, v0

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto/16 :goto_4

    :cond_2
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Key too large: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " bits"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getPaddingMode()I

    move-result v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6

    move v13, v0

    const/4 v0, 0x5

    if-eq v13, v0, :cond_4

    const/4 v0, 0x3

    if-ne v13, v0, :cond_3

    goto :goto_1

    :cond_3
    nop

    :try_start_8
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    nop

    invoke-static {v13}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3

    nop

    :goto_2
    goto/16 :goto_3

    :catch_3
    move-exception v0

    :try_start_9
    new-instance v2, Ljava/security/ProviderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported padding: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_c
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_d
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlockMode()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_e
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->fromKeymaster(I)I

    move-result v0

    or-int/2addr v0, v5

    move v5, v0

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto/16 :goto_4

    :sswitch_f
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6

    move v13, v0

    :try_start_a
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_5

    move v14, v0

    :try_start_b
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getOrigin()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4

    move v3, v0

    move/from16 v25, v13

    move/from16 v24, v14

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move v2, v13

    move v1, v14

    move-wide/from16 v16, v50

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto/16 :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move v2, v13

    move/from16 v1, v24

    move-wide/from16 v16, v50

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto/16 :goto_8

    :sswitch_10
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    :try_start_c
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getHardwareAuthenticatorType()I

    move-result v0

    iget v13, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-static {v13}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v13

    if-eqz v13, :cond_5

    move v9, v0

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto :goto_4

    :cond_5
    move v8, v0

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto :goto_4

    :sswitch_11
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v1, v24

    move/from16 v2, v25

    move-wide/from16 v16, v50

    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    goto/16 :goto_8

    :goto_3
    move-object/from16 v15, v52

    move-object/from16 v14, v53

    move-object/from16 v13, v54

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v27

    move-object/from16 v0, v28

    goto/16 :goto_0

    :catch_7
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v1, v24

    move/from16 v2, v25

    move-wide/from16 v16, v50

    goto/16 :goto_8

    :cond_6
    move-object/from16 v54, v13

    move-object/from16 v53, v14

    move-object/from16 v52, v15

    const/4 v0, -0x1

    if-eq v4, v0, :cond_d

    if-eq v3, v0, :cond_c

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v18, :cond_7

    if-eqz v9, :cond_7

    if-nez v8, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/String;

    invoke-interface {v6, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    new-array v2, v14, [Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/16 v17, 0x0

    const/4 v14, 0x2

    if-eq v8, v14, :cond_8

    if-ne v9, v14, :cond_a

    :cond_8
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const/16 v16, 0x1

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    :goto_6
    move/from16 v17, v16

    :cond_a
    new-instance v14, Landroid/security/keystore/KeyInfo;

    move-object/from16 v55, v6

    invoke-virtual/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    iget-object v6, v6, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    move-object/from16 v56, v7

    move/from16 v16, v8

    move-wide/from16 v7, v50

    move/from16 v50, v9

    long-to-int v9, v7

    if-eqz v13, :cond_b

    move/from16 v41, v50

    goto :goto_7

    :cond_b
    move/from16 v41, v16

    :goto_7
    move-object/from16 v26, v14

    move-object/from16 v27, v6

    move/from16 v28, v25

    move/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v54

    move-object/from16 v32, v53

    move-object/from16 v33, v52

    move/from16 v34, v5

    move-object/from16 v35, v1

    move-object/from16 v36, v0

    move-object/from16 v37, v15

    move-object/from16 v38, v2

    move/from16 v39, v18

    move/from16 v40, v9

    move/from16 v42, v13

    move/from16 v43, v19

    move/from16 v44, v20

    move/from16 v45, v21

    move/from16 v46, v17

    move/from16 v47, v22

    move/from16 v48, v24

    move/from16 v49, v23

    invoke-direct/range {v26 .. v49}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIIZZZZZZII)V

    return-object v14

    :cond_c
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Key origin not available"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Key size not available"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    move/from16 v25, v2

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v1, v24

    goto :goto_8

    :catch_9
    move-exception v0

    move/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    :goto_8
    new-instance v6, Ljava/security/ProviderException;

    const-string v7, "Unsupported key characteristic"

    invoke-direct {v6, v7, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :sswitch_data_0
    .sparse-switch
        -0x5ffffe0a -> :sswitch_11
        0x100001f8 -> :sswitch_10
        0x100002be -> :sswitch_f
        0x20000001 -> :sswitch_e
        0x20000004 -> :sswitch_d
        0x20000005 -> :sswitch_c
        0x20000006 -> :sswitch_b
        0x30000003 -> :sswitch_a
        0x30000195 -> :sswitch_9
        0x300001f9 -> :sswitch_8
        0x60000190 -> :sswitch_7
        0x60000191 -> :sswitch_6
        0x60000192 -> :sswitch_5
        0x700001f7 -> :sswitch_4
        0x700001fa -> :sswitch_3
        0x700001fb -> :sswitch_2
        0x700001fc -> :sswitch_1
        0x700001fd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p2, :cond_4

    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key material export of Android KeyStore keys is not supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpecClass == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
