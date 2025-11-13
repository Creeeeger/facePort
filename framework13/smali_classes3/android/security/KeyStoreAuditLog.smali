.class public Landroid/security/KeyStoreAuditLog;
.super Ljava/lang/Object;
.source "KeyStoreAuditLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStoreAuditLog$LogMessage;,
        Landroid/security/KeyStoreAuditLog$AuditLogParams;
    }
.end annotation


# static fields
.field public static final blacklist CLEAR:I = 0x1

.field public static final blacklist DELETE:I = 0x2

.field public static final blacklist EXECUTION_EXCEPTION:I = 0xc9

.field public static final blacklist GENERATE:I = 0x4

.field public static final blacklist IMPORT:I = 0x5

.field public static final blacklist INSERT:I = 0x3

.field private static final blacklist INVALID_DOMAIN:I = -0x1

.field private static final blacklist INVALID_NAMESPACE:I = 0x0

.field public static final blacklist NO_ERROR:I = 0x1

.field public static final blacklist NO_ERROR2:I = 0x0

.field public static final blacklist REMOTE_EXCEPTION:I = 0xc8

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreAuditLog"

.field private static blacklist mKeyDescriptorBeforeImportKey:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/system/keystore2/KeyDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smconvertCertificatesToPem([Ljava/security/cert/Certificate;)[B
    .locals 0

    invoke-static {p0}, Landroid/security/KeyStoreAuditLog;->convertCertificatesToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetUserId(I)I
    .locals 0

    invoke-static {p0}, Landroid/security/KeyStoreAuditLog;->getUserId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeUserCertAndChain([B[B)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroid/security/KeyStoreAuditLog;->mergeUserCertAndChain([B[B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-object v0, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V
    .locals 16
    .param p0, "params"    # Landroid/security/KeyStoreAuditLog$AuditLogParams;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "logMessages":Ljava/util/List;, "Ljava/util/List<Landroid/security/KeyStoreAuditLog$LogMessage;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 262
    .local v1, "success":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getDomain()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getNamespace()J

    move-result-wide v5

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getOperationType()I

    move-result v7

    .line 262
    invoke-static {v4, v5, v6, v7}, Landroid/security/KeyStoreAuditLog;->getKeystoreString(IJI)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "credentialUsage":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v5, " succeeded"

    goto :goto_2

    :cond_2
    const-string v5, " failed"

    .line 266
    .local v5, "strResult":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getOperationType()I

    move-result v6

    const/4 v7, 0x4

    const-string v8, "(Keystore=%s, key=%s, Subject=%s, Issuer=%s)"

    const-string v9, "(Keystore=%s, key=%s, requested by %s)"

    const/4 v10, 0x2

    const/4 v11, 0x3

    const-string v12, ""

    packed-switch v6, :pswitch_data_0

    .line 322
    move-object/from16 v6, p0

    return-void

    .line 315
    :pswitch_0
    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/security/KeyStoreAuditLog;->getRequesterInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    .line 315
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "detailedLogMsg":Ljava/lang/String;
    new-instance v3, Landroid/security/KeyStoreAuditLog$LogMessage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key importing activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Landroid/security/KeyStoreAuditLog;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v12}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    goto/16 :goto_5

    .line 310
    .end local v2    # "detailedLogMsg":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Landroid/security/KeyStoreAuditLog$LogMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key generation failed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Landroid/security/KeyStoreAuditLog;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v12}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    goto/16 :goto_5

    .line 297
    :pswitch_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getX509Certificates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 299
    .local v9, "certificate":Ljava/security/cert/X509Certificate;
    new-array v13, v7, [Ljava/lang/Object;

    aput-object v4, v13, v2

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 301
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v14

    aput-object v14, v13, v11

    .line 299
    invoke-static {v8, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 302
    .local v13, "detailedLogMsg":Ljava/lang/String;
    new-instance v14, Landroid/security/KeyStoreAuditLog$LogMessage;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Installing certificate "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/security/KeyStoreAuditLog;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v15

    invoke-static {v15}, Landroid/security/KeyStoreAuditLog;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v11, v12}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v9    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v13    # "detailedLogMsg":Ljava/lang/String;
    const/4 v11, 0x3

    goto :goto_3

    :cond_3
    goto/16 :goto_5

    .line 276
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->hasCertificates()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getX509Certificates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 278
    .restart local v9    # "certificate":Ljava/security/cert/X509Certificate;
    new-array v11, v7, [Ljava/lang/Object;

    aput-object v4, v11, v2

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v3

    .line 280
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v13

    aput-object v13, v11, v10

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v11, v14

    .line 278
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 281
    .local v11, "detailedLogMsg":Ljava/lang/String;
    new-instance v13, Landroid/security/KeyStoreAuditLog$LogMessage;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Deleting certificate "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/security/KeyStoreAuditLog;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v12}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v9    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v11    # "detailedLogMsg":Ljava/lang/String;
    goto :goto_4

    :cond_4
    goto :goto_5

    .line 287
    :cond_5
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/security/KeyStoreAuditLog;->getRequesterInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    .line 287
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .restart local v2    # "detailedLogMsg":Ljava/lang/String;
    new-instance v3, Landroid/security/KeyStoreAuditLog$LogMessage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key destruction activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Landroid/security/KeyStoreAuditLog;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v12}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v2    # "detailedLogMsg":Ljava/lang/String;
    goto :goto_5

    .line 268
    :pswitch_4
    new-instance v2, Landroid/security/KeyStoreAuditLog$LogMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing credentials "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Keystore : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Landroid/security/KeyStoreAuditLog;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Landroid/security/KeyStoreAuditLog$LogMessage;->KEEP:Ljava/lang/String;

    invoke-direct {v2, v3, v6}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    nop

    .line 325
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getUserId()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getDomain()I

    move-result v3

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getNamespace()J

    move-result-wide v6

    .line 325
    invoke-static {v2, v3, v6, v7}, Landroid/security/KeyStoreAuditLog;->getUserIdForDomainOrNamespace(IIJ)I

    move-result v2

    .line 328
    .local v2, "userId":I
    new-instance v3, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;

    move-object/from16 v6, p0

    invoke-direct {v3, v1, v6, v2}, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;-><init>(ZLandroid/security/KeyStoreAuditLog$AuditLogParams;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 340
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist checkCertificateTrustful(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V
    .locals 7
    .param p0, "params"    # Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v0

    .line 394
    .local v0, "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getChainBytes()[B

    move-result-object v1

    .line 396
    .local v1, "value":[B
    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getUserId()I

    move-result v2

    .line 400
    .local v2, "userId":I
    const/4 v3, 0x1

    .line 401
    .local v3, "isCertificateTrustedByMdm":Z
    invoke-virtual {v0, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 402
    invoke-virtual {v0, v1, v4, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser([BZI)Z

    move-result v4

    if-nez v4, :cond_1

    .line 403
    const/4 v3, 0x0

    .line 405
    :cond_1
    invoke-virtual {v0, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser([BI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 408
    const/4 v3, 0x0

    .line 410
    :cond_2
    if-eqz v3, :cond_3

    .line 413
    return-void

    .line 411
    :cond_3
    new-instance v4, Landroid/security/KeyStoreException;

    const/4 v5, 0x6

    const-string v6, "Certificate not trusted by MDM"

    invoke-direct {v4, v5, v6}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 397
    .end local v2    # "userId":I
    .end local v3    # "isCertificateTrustedByMdm":Z
    :cond_4
    :goto_0
    return-void
.end method

.method private static blacklist convertCertificatesToPem([Ljava/security/cert/Certificate;)[B
    .locals 5
    .param p0, "certificates"    # [Ljava/security/cert/Certificate;

    .line 364
    const-string v0, "Could not convert certificate."

    const-string v1, "KeyStoreAuditLog"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 366
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "ile":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 369
    .end local v0    # "ile":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 370
    .local v3, "cer":Ljava/security/cert/CertificateException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "cer":Ljava/security/cert/CertificateException;
    goto :goto_0

    .line 367
    :catch_2
    move-exception v3

    .line 368
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 374
    :goto_1
    return-object v2
.end method

.method private static blacklist getErrorMessage(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .line 497
    sparse-switch p0, :sswitch_data_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 504
    :sswitch_0
    const-string v0, " Completed with execution exception"

    return-object v0

    .line 502
    :sswitch_1
    const-string v0, " Cannot connect to KeyStore"

    return-object v0

    .line 500
    :sswitch_2
    const-string v0, ""

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getKeyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 446
    if-eqz p0, :cond_0

    const-string v0, "USRPKEY_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string/jumbo v0, "private key"

    goto :goto_0

    :cond_0
    const-string v0, "certificate"

    .line 446
    :goto_0
    return-object v0
.end method

.method private static blacklist getKeystoreString(IJI)Ljava/lang/String;
    .locals 3
    .param p0, "domain"    # I
    .param p1, "namespace"    # J
    .param p3, "operationType"    # I

    .line 474
    const-string v0, ""

    .line 476
    .local v0, "keystore":Ljava/lang/String;
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    sget-object v1, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 479
    sget-object v1, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    .line 480
    .local v1, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    if-eqz v1, :cond_0

    .line 481
    iget p0, v1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 482
    iget-wide p1, v1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 484
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    .line 488
    .end local v1    # "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const-wide/16 v1, 0x66

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 490
    :cond_2
    if-eqz p0, :cond_3

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_5

    .line 491
    :cond_3
    const-string v0, "VPN and Apps"

    goto :goto_1

    .line 489
    :cond_4
    :goto_0
    const-string v0, "Wi-Fi"

    .line 493
    :cond_5
    :goto_1
    return-object v0
.end method

.method private static blacklist getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 524
    const-string v0, ""

    .line 525
    .local v0, "packageName":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 527
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 528
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "package"

    aput-object v4, v2, v6

    .line 529
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 530
    .local v1, "bPkgMngr":Landroid/os/IBinder;
    const-string v2, "android.content.pm.IPackageManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "asInterface"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v6

    .line 531
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 532
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 533
    .local v2, "mPkgMngr":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "getNameForUid"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 534
    .local v4, "mthdGetName":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v1    # "bPkgMngr":Landroid/os/IBinder;
    .end local v2    # "mPkgMngr":Ljava/lang/Object;
    .end local v4    # "mthdGetName":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot retrieve package name for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyStoreAuditLog"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 539
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    :goto_1
    return-object v0
.end method

.method private static blacklist getRequesterInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 511
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 512
    .local v0, "myUid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 513
    .local v1, "myPid":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    const-string v2, "SystemApp"

    goto :goto_0

    :cond_0
    const-string v2, "UserApp"

    .line 514
    .local v2, "role":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Landroid/security/KeyStoreAuditLog;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3, v0, v1}, Landroid/security/KeyStoreAuditLog;->isCallerAdmin(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|Administrator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 518
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|NonAdministrator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " role="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 456
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getUserIdForDomainOrNamespace(IIJ)I
    .locals 2
    .param p0, "userId"    # I
    .param p1, "domain"    # I
    .param p2, "namespace"    # J

    .line 461
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const-wide/16 v0, 0x66

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    return p0

    .line 462
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist isAuditLogEnabledAsUser()Z
    .locals 1

    .line 343
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAuditLogEnabledAsUser(I)Z
    .locals 1
    .param p0, "userId"    # I

    .line 347
    nop

    .line 348
    invoke-static {p0}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    .line 347
    return v0
.end method

.method private static blacklist isCallerAdmin(Ljava/lang/String;II)Z
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 546
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 547
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "enterprise_policy"

    aput-object v4, v2, v0

    .line 548
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 549
    .local v1, "bEdm":Landroid/os/IBinder;
    const-string v2, "com.samsung.android.knox.IEnterpriseDeviceManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "asInterface"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v0

    .line 550
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v0

    .line 551
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 552
    .local v2, "mEdm":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "packageHasActiveAdmins"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 554
    .local v4, "mthdCheck":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 555
    .end local v1    # "bEdm":Landroid/os/IBinder;
    .end local v2    # "mEdm":Ljava/lang/Object;
    .end local v4    # "mthdCheck":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 556
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Administrator status cannot be defined for requester: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyStoreAuditLog"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v1    # "ex":Ljava/lang/Exception;
    return v0
.end method

.method static synthetic blacklist lambda$auditLogPrivilegedAsUser$0(ZLandroid/security/KeyStoreAuditLog$AuditLogParams;ILandroid/security/KeyStoreAuditLog$LogMessage;)V
    .locals 9
    .param p0, "success"    # Z
    .param p1, "params"    # Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .param p2, "userId"    # I
    .param p3, "logMessage"    # Landroid/security/KeyStoreAuditLog$LogMessage;

    .line 330
    if-eqz p0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    const/4 v2, 0x1

    .line 333
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 334
    invoke-virtual {p1}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Landroid/security/KeyStoreAuditLog$LogMessage;->message:Ljava/lang/String;

    .line 337
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object v0, p3, Landroid/security/KeyStoreAuditLog$LogMessage;->redactedMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    .line 329
    move v3, p0

    move v8, p2

    invoke-static/range {v1 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist logMdfKeyGenFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "errorMsg"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key generation failed  with error: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 81
    move-object v5, p1

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method private static blacklist mergeUserCertAndChain([B[B)Ljava/util/List;
    .locals 3
    .param p0, "userCert"    # [B
    .param p1, "chain"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-static {p0}, Landroid/security/KeyStoreAuditLog;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 379
    .local v0, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 381
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    if-eqz p1, :cond_1

    .line 385
    invoke-static {p1}, Landroid/security/KeyStoreAuditLog;->toCertificates([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    :cond_1
    return-object v1
.end method

.method public static blacklist notifyCertificateRemovedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V
    .locals 6
    .param p0, "params"    # Landroid/security/KeyStoreAuditLog$AuditLogParams;

    .line 352
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getX509Certificates()Ljava/util/List;

    move-result-object v0

    .line 353
    .local v0, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getUserId()I

    move-result v1

    .line 354
    .local v1, "userId":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 355
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v2

    .line 356
    .local v2, "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 357
    .local v4, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 358
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-virtual {v2, v5, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    .line 359
    .end local v4    # "certificate":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 361
    .end local v2    # "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    :cond_0
    return-void
.end method

.method public static blacklist setKeyDescriptorBeforeImportKey(JLandroid/system/keystore2/KeyDescriptor;)V
    .locals 1
    .param p0, "keyId"    # J
    .param p2, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;

    .line 74
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    .line 75
    return-void
.end method

.method private static blacklist toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "bytes"    # [B

    .line 416
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 418
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 419
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 421
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "KeyStoreAuditLog"

    const-string v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    return-object v0
.end method

.method public static blacklist toCertificates([B)Ljava/util/List;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 429
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 431
    :cond_0
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 432
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 434
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "KeyStoreAuditLog"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
