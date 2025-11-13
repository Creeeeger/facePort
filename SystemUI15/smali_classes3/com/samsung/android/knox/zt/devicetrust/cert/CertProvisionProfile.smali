.class public Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CA_DEFAULT:Ljava/lang/String; = "default"

.field public static final CA_LOOPBACK:Ljava/lang/String; = "loopback"

.field public static final CLIENT_ID_TYPE_IMEI:I = 0x0

.field public static final CLIENT_ID_TYPE_SAK_UID:I = 0x1

.field public static final KEY_OWNER_APP:I = 0x1

.field public static final KEY_OWNER_SYSTEM:I = 0x0

.field public static final KEY_PURPOSE_ENCRYPT:I = 0x1

.field public static final KEY_PURPOSE_SIGN:I = 0x4

.field public static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field public static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field public static final PROTOCOL_ACME:Ljava/lang/String; = "acme"

.field public static final PROTOCOL_SCEP:Ljava/lang/String; = "scep"

.field public static final PROVIDER_ANDROID:Ljava/lang/String; = "AndroidKeyStore"

.field public static final PROVIDER_UCM:Ljava/lang/String; = "UcmKeystore"

.field public static final SAN_DNS_NAME:Ljava/lang/String; = "dNSName"

.field public static final SAN_IP_ADDRESS:Ljava/lang/String; = "iPAddress"

.field public static final SAN_RFC822_NAME:Ljava/lang/String; = "rfc822Name"

.field public static final SAN_URI:Ljava/lang/String; = "uniformResourceIdentifier"

.field public static final TYPE_PROVISION:Ljava/lang/String; = "provision"

.field public static final TYPE_RENEW:Ljava/lang/String; = "renew"

.field public static final TYPE_REVOKE:Ljava/lang/String; = "revoke"


# instance fields
.field public final mChallengePassword:Ljava/lang/String;

.field public final mClientIdentifierType:I

.field public final mClientIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyAlias:Ljava/lang/String;

.field public final mKeyExtendedPurposes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyOwner:I

.field public final mKeyProvider:Ljava/lang/String;

.field public final mProtocol:Ljava/lang/String;

.field public final mProvisionType:Ljava/lang/String;

.field public final mRootCA:Ljava/lang/String;

.field public final mServerHost:Ljava/lang/String;

.field public final mServerPath:Ljava/lang/String;

.field public final mServerPort:Ljava/lang/String;

.field public final mSubject:Landroid/os/Bundle;

.field public final mSubjectAltName:Landroid/os/Bundle;

.field public final mSystemKeyPurposes:I

.field public final mSystemKeySize:I

.field public final mSystemKeyType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p11

    move/from16 v8, p14

    move-object/from16 v9, p16

    move/from16 v10, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedRootCAs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mRootCA:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v2, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProtocol:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedProvisionTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput-object v3, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProvisionType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedKeyProviders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->convertKeyProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v4, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyProvider:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedKeyOwners()Ljava/util/List;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput v5, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyOwner:I

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyAlias:Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\'s value must be passed as type String or StringArrayList"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->validateStringOrStringArrayList(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo v1, "subject "

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v6, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubject:Landroid/os/Bundle;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerHost:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPort:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPath:Ljava/lang/String;

    invoke-virtual/range {p11 .. p11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSubjectAltName()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->validateStringOrStringArrayList(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo v1, "subject alternative name "

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid subject alternative name property : "

    invoke-static {v1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object v7, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubjectAltName:Landroid/os/Bundle;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyExtendedPurposes:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mChallengePassword:Ljava/lang/String;

    const/4 v1, -0x1

    if-eq v8, v1, :cond_6

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedClientIdentifierTypes()Ljava/util/List;

    move-result-object v1

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid client identifier type : "

    invoke-static {v8, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    iput v8, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifierType:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifiers:Ljava/util/List;

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSystemKeyTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid system key type : "

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    iput-object v9, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyType:Ljava/lang/String;

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSystemKeyPurposes()Ljava/util/List;

    move-result-object v1

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid system key purposes : "

    invoke-static {v10, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    iput v10, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyPurposes:I

    move/from16 v1, p18

    iput v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeySize:I

    return-void

    :cond_b
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid key owner : "

    invoke-static {v5, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid key provider : "

    invoke-static {v1, v4}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid provision type : "

    invoke-static {v1, p3}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid protocol : "

    invoke-static {v1, p2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v2, "invalid root ca : "

    invoke-static {v2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method public static getSupportedClientIdentifierTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedKeyOwners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedKeyProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    const-string v1, "UcmKeystore"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedProtocols()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "acme"

    const-string/jumbo v1, "scep"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedProvisionTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "renew"

    const-string/jumbo v1, "revoke"

    const-string/jumbo v2, "provision"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedRootCAs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "default"

    const-string v1, "loopback"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedSubjectAltName()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "rfc822Name"

    const-string/jumbo v1, "uniformResourceIdentifier"

    const-string v2, "dNSName"

    const-string v3, "iPAddress"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedSystemKeyPurposes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedSystemKeyTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "RSA"

    const-string v1, "EC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final convertKeyProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "AndroidKeyStore"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "^([a-zA-Z_]\\w*)+([.][a-zA-Z_]\\w*)+:(.)*$"

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "UcmKeystore"

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getChallengePassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mChallengePassword:Ljava/lang/String;

    return-object p0
.end method

.method public getClientIdentifierType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifierType:I

    return p0
.end method

.method public getClientIdentifiers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifiers:Ljava/util/List;

    return-object p0
.end method

.method public getKeyAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyExtendedPurposes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyExtendedPurposes:Ljava/util/List;

    return-object p0
.end method

.method public getKeyOwner()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyOwner:I

    return p0
.end method

.method public getKeyProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyProvider:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getProvisionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProvisionType:Ljava/lang/String;

    return-object p0
.end method

.method public getRootCA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mRootCA:Ljava/lang/String;

    return-object p0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerHost:Ljava/lang/String;

    return-object p0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPath:Ljava/lang/String;

    return-object p0
.end method

.method public getServerPort()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPort:Ljava/lang/String;

    return-object p0
.end method

.method public getSubject()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubject:Landroid/os/Bundle;

    return-object p0
.end method

.method public getSubjectAltName()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubjectAltName:Landroid/os/Bundle;

    return-object p0
.end method

.method public getSystemKeyPurposes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyPurposes:I

    return p0
.end method

.method public getSystemKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeySize:I

    return p0
.end method

.method public getSystemKeyType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyType:Ljava/lang/String;

    return-object p0
.end method

.method public final validateStringOrStringArrayList(Ljava/lang/Object;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    return p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method
