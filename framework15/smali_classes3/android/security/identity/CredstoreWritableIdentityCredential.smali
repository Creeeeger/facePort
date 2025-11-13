.class Landroid/security/identity/CredstoreWritableIdentityCredential;
.super Landroid/security/identity/WritableIdentityCredential;
.source "CredstoreWritableIdentityCredential.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredstoreWritableIdentityCredential"


# instance fields
.field private blacklist mBinder:Landroid/security/identity/IWritableCredential;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCredentialName:Ljava/lang/String;

.field private blacklist mDocType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/security/identity/IWritableCredential;)V
    .locals 0

    invoke-direct {p0}, Landroid/security/identity/WritableIdentityCredential;-><init>()V

    iput-object p1, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mDocType:Ljava/lang/String;

    iput-object p2, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mCredentialName:Ljava/lang/String;

    iput-object p4, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mBinder:Landroid/security/identity/IWritableCredential;

    return-void
.end method

.method private static blacklist getRootSid()J
    .locals 4

    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Secure lock screen must be enabled to create credentials requiring user authentication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist personalize(Landroid/security/identity/IWritableCredential;Landroid/security/identity/PersonalizationData;)[B
    .locals 22

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/security/identity/PersonalizationData;->getAccessControlProfiles()Ljava/util/Collection;

    move-result-object v1

    nop

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Landroid/security/identity/AccessControlProfileParcel;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/security/identity/AccessControlProfile;

    new-instance v0, Landroid/security/identity/AccessControlProfileParcel;

    invoke-direct {v0}, Landroid/security/identity/AccessControlProfileParcel;-><init>()V

    aput-object v0, v2, v5

    aget-object v0, v2, v5

    invoke-virtual {v6}, Landroid/security/identity/AccessControlProfile;->getAccessControlProfileId()Landroid/security/identity/AccessControlProfileId;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/identity/AccessControlProfileId;->getId()I

    move-result v7

    iput v7, v0, Landroid/security/identity/AccessControlProfileParcel;->id:I

    invoke-virtual {v6}, Landroid/security/identity/AccessControlProfile;->getReaderCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    aget-object v0, v2, v5

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    iput-object v8, v0, Landroid/security/identity/AccessControlProfileParcel;->readerCertificate:[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v8, "Error encoding reader certificate"

    invoke-direct {v4, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    aget-object v0, v2, v5

    const/4 v8, 0x0

    new-array v8, v8, [B

    iput-object v8, v0, Landroid/security/identity/AccessControlProfileParcel;->readerCertificate:[B

    :goto_1
    aget-object v0, v2, v5

    invoke-virtual {v6}, Landroid/security/identity/AccessControlProfile;->isUserAuthenticationRequired()Z

    move-result v8

    iput-boolean v8, v0, Landroid/security/identity/AccessControlProfileParcel;->userAuthenticationRequired:Z

    aget-object v0, v2, v5

    invoke-virtual {v6}, Landroid/security/identity/AccessControlProfile;->getUserAuthenticationTimeout()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/security/identity/AccessControlProfileParcel;->userAuthenticationTimeoutMillis:J

    invoke-virtual {v6}, Landroid/security/identity/AccessControlProfile;->isUserAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v3, v0

    :cond_1
    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/security/identity/PersonalizationData;->getNamespaces()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v6, v0, [Landroid/security/identity/EntryNamespaceParcel;

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    nop

    move-object/from16 v8, p1

    invoke-virtual {v8, v0}, Landroid/security/identity/PersonalizationData;->getNamespaceData(Ljava/lang/String;)Landroid/security/identity/PersonalizationData$NamespaceData;

    move-result-object v9

    new-instance v10, Landroid/security/identity/EntryNamespaceParcel;

    invoke-direct {v10}, Landroid/security/identity/EntryNamespaceParcel;-><init>()V

    aput-object v10, v6, v7

    aget-object v10, v6, v7

    iput-object v0, v10, Landroid/security/identity/EntryNamespaceParcel;->namespaceName:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/security/identity/PersonalizationData$NamespaceData;->getEntryNames()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    new-array v11, v11, [Landroid/security/identity/EntryParcel;

    const/4 v12, 0x0

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v15, Landroid/security/identity/EntryParcel;

    invoke-direct {v15}, Landroid/security/identity/EntryParcel;-><init>()V

    aput-object v15, v11, v12

    aget-object v15, v11, v12

    iput-object v14, v15, Landroid/security/identity/EntryParcel;->name:Ljava/lang/String;

    aget-object v15, v11, v12

    move-object/from16 v16, v0

    invoke-virtual {v9, v14}, Landroid/security/identity/PersonalizationData$NamespaceData;->getEntryValue(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v15, Landroid/security/identity/EntryParcel;->value:[B

    nop

    invoke-virtual {v9, v14}, Landroid/security/identity/PersonalizationData$NamespaceData;->getAccessControlProfileIds(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    aget-object v15, v11, v12

    move-object/from16 v17, v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v15, Landroid/security/identity/EntryParcel;->accessControlProfileIds:[I

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/security/identity/AccessControlProfileId;

    move-object/from16 v19, v0

    aget-object v0, v11, v12

    iget-object v0, v0, Landroid/security/identity/EntryParcel;->accessControlProfileIds:[I

    add-int/lit8 v20, v1, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/security/identity/AccessControlProfileId;->getId()I

    move-result v21

    aput v21, v0, v1

    move-object/from16 v0, v19

    move/from16 v1, v20

    goto :goto_4

    :cond_3
    move-object/from16 v19, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_3

    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    aget-object v0, v6, v7

    iput-object v11, v0, Landroid/security/identity/EntryNamespaceParcel;->entries:[Landroid/security/identity/EntryParcel;

    nop

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v8, p1

    move-object/from16 v17, v1

    const-wide/16 v0, 0x0

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/security/identity/CredstoreWritableIdentityCredential;->getRootSid()J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_5

    :cond_6
    move-wide v9, v0

    :goto_5
    move-object/from16 v1, p0

    :try_start_1
    invoke-interface {v1, v2, v6, v9, v10}, Landroid/security/identity/IWritableCredential;->personalize([Landroid/security/identity/AccessControlProfileParcel;[Landroid/security/identity/EntryNamespaceParcel;J)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v11, "Unexpected RemoteException "

    invoke-direct {v5, v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public whitelist getCredentialKeyCertificateChain([B)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mBinder:Landroid/security/identity/IWritableCredential;

    invoke-interface {v0, p1}, Landroid/security/identity/IWritableCredential;->getCredentialKeyCertificateChain([B)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v4
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v4

    nop

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    move-object v6, v5

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    return-object v3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error decoding certificates"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist personalize(Landroid/security/identity/PersonalizationData;)[B
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mBinder:Landroid/security/identity/IWritableCredential;

    invoke-static {v0, p1}, Landroid/security/identity/CredstoreWritableIdentityCredential;->personalize(Landroid/security/identity/IWritableCredential;Landroid/security/identity/PersonalizationData;)[B

    move-result-object v0

    return-object v0
.end method
