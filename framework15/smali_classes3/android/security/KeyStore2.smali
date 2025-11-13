.class public Landroid/security/KeyStore2;
.super Ljava/lang/Object;
.source "KeyStore2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore2$CheckedRemoteRequest;
    }
.end annotation


# static fields
.field private static final blacklist KEYSTORE2_SERVICE_NAME:Ljava/lang/String; = "android.system.keystore2.IKeystoreService/default"

.field private static final blacklist KEYSTORE_ENGINE_GRANT_ALIAS_PREFIX:Ljava/lang/String; = "ks2_keystore-engine_grant_id:0x"

.field static final blacklist KEYSTORE_OPERATION_CREATION_MAY_FAIL:J = 0xa206cc8L

.field private static final blacklist RECOVERY_GRACE_PERIOD_MS:I = 0x32

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStore"


# instance fields
.field private blacklist mBinder:Landroid/system/keystore2/IKeystoreService;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    return-void
.end method

.method private blacklist getCertificates(Landroid/system/keystore2/KeyDescriptor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const-string v0, "KeyStore"

    iget-object v1, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v2}, Landroid/security/KeyStoreAuditLog;->toCertificates([B)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-static {v2}, Landroid/security/KeyStoreAuditLog;->toCertificates([B)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AuditLog] No certificate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AuditLog] Unable to get certificate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/security/KeyStore2;
    .locals 1

    new-instance v0, Landroid/security/KeyStore2;

    invoke-direct {v0}, Landroid/security/KeyStore2;-><init>()V

    return-object v0
.end method

.method static blacklist getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;
    .locals 2

    if-lez p0, :cond_0

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;I)V

    return-object v0

    :sswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_7
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x11 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized blacklist getService(Z)Landroid/system/keystore2/IKeystoreService;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const-string v0, "android.system.keystore2.IKeystoreService/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/system/keystore2/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreService;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    :cond_1
    iget-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    invoke-interface {v0}, Landroid/system/keystore2/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not connect to Keystore service. Keystore may have crashed or not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/security/KeyStore2$CheckedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->getService(Z)Landroid/system/keystore2/IKeystoreService;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/security/KeyStore2$CheckedRemoteRequest;->execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "KeyStore"

    if-eqz v1, :cond_0

    const-string v4, "Looks like we may have lost connection to the Keystore daemon."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Retrying after giving Keystore 50ms to recover."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/security/KeyStore2;->interruptedPreservingSleep(J)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/security/KeyStore2;->getService(Z)Landroid/system/keystore2/IKeystoreService;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "Cannot connect to Keystore daemon."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/security/KeyStoreException;

    const-string v4, ""

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v3, v6, v4, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v2

    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v3

    throw v3
.end method

.method protected static blacklist interruptedPreservingSleep(J)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    nop

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void

    :catch_1
    move-exception v4

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static blacklist keystoreEngineGrantString2KeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 3

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    nop

    const-string/jumbo v1, "ks2_keystore-engine_grant_id:0x"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    return-object v0
.end method

.method static synthetic blacklist lambda$delete$0(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic blacklist lambda$deleteKey$10(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$deleteKey$9(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getKeyEntry$5(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Landroid/system/keystore2/KeyEntryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getNumberOfEntries$11(IJLandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->getNumberOfEntries(IJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSecurityLevel$6(ILandroid/system/keystore2/IKeystoreService;)Landroid/security/KeyStoreSecurityLevel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/security/KeyStoreSecurityLevel;

    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$grant$3(Landroid/system/keystore2/KeyDescriptor;IILandroid/system/keystore2/IKeystoreService;)Landroid/system/keystore2/KeyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$list$1(IJLandroid/system/keystore2/IKeystoreService;)[Landroid/system/keystore2/KeyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->listEntries(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$listBatch$2(IJLjava/lang/String;Landroid/system/keystore2/IKeystoreService;)[Landroid/system/keystore2/KeyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p4, p0, p1, p2, p3}, Landroid/system/keystore2/IKeystoreService;->listEntriesBatched(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$ungrant$4(Landroid/system/keystore2/KeyDescriptor;ILandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/system/keystore2/IKeystoreService;->ungrant(Landroid/system/keystore2/KeyDescriptor;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$updateSubcomponents$7(Landroid/system/keystore2/KeyDescriptor;[B[BLandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->updateSubcomponent(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic blacklist lambda$updateSubcomponents$8(Landroid/system/keystore2/KeyDescriptor;[B[BLandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->updateSubcomponent(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist makeKeystoreEngineGrantString(J)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ks2_keystore-engine_grant_id:0x"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%016X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist delete(Landroid/system/keystore2/KeyDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda6;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "KeyStore"

    invoke-static {p1, v0, v1}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/security/KeyStore2;->getCertificates(Landroid/system/keystore2/KeyDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setX509Certificates(Ljava/util/List;)V

    :try_start_0
    new-instance v1, Landroid/security/KeyStore2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda4;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v1}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->notifyCertificateRemovedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setErrorCode(I)V

    nop

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    :cond_1
    throw v1
.end method

.method public blacklist getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda8;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyEntryResponse;

    return-object v0
.end method

.method public blacklist getNumberOfEntries(IJ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda0;-><init>(IJ)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyStoreSecurityLevel;

    return-object v0
.end method

.method public blacklist grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;-><init>(Landroid/system/keystore2/KeyDescriptor;II)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public blacklist list(IJ)[Landroid/system/keystore2/KeyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;-><init>(IJ)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public blacklist listBatch(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;-><init>(IJLjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public blacklist ungrant(Landroid/system/keystore2/KeyDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;-><init>(Landroid/system/keystore2/KeyDescriptor;I)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x3

    const-string v1, "KeyStore"

    invoke-static {p1, v0, v1}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserCertAndChain([B[B)V

    :try_start_0
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->checkCertificateTrustful(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    new-instance v1, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;-><init>(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    invoke-direct {p0, v1}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setErrorCode(I)V

    nop

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    :cond_1
    throw v1
.end method
