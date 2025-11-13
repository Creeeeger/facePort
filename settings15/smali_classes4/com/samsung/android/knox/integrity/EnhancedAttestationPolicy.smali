.class public Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;
    }
.end annotation


# static fields
.field public static final EA_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

.field public static final EA_PACKAGE_CLASS:Ljava/lang/String; = "com.samsung.android.knox.attestation.controller.EnhancedAttestation"

.field public static final EA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.attestation"

.field public static final TAG:Ljava/lang/String; = "EAPolicy"

.field public static mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;


# instance fields
.field public conn:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

.field public mProcessPendingRequest:Z

.field public final mTrackOpsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;-><init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;)V

    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "EAPolicy"

    const-string v1, "context is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static getKnoxVersion()I
    .locals 1

    const-string v0, "38"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    return v0
.end method


# virtual methods
.method public final declared-synchronized addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;)Z
    .locals 2

    const-string v0, "addToTrackMap:  "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p1, "EAPolicy"

    const-string/jumbo p2, "same nonce onProcessing"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "EAPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getTrackMapSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final bindService()Z
    .locals 6

    const-string v0, "bindService: "

    const-string v1, "bindService: "

    const-class v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    monitor-enter v2

    :try_start_0
    const-string v3, "EAPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "EAPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.knox.attestation"

    const-string v3, "com.samsung.android.knox.attestation.controller.EnhancedAttestation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, p0, v1, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    const-string v0, "EAPolicy"

    const-string v1, "bind service:"

    invoke-static {v1, v0, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0

    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final declared-synchronized clearTrackMap()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;
    .locals 1

    new-instance p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    invoke-direct {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;-><init>()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->setErrorCode(I)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "dataFieldUniqueId"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->setData(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final declared-synchronized getTrackMapSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handlePendingRequest()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getTrackMapSize()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->clearTrackMap()V

    iput-boolean v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;

    const-string v3, "EAPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "process pending request: nonce len: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mAuk:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mNonce:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mCb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    iget-boolean v1, v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mOnPrem:Z

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V

    goto :goto_0

    :cond_1
    const-class v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public isBldpEventSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isDongleDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isEaSupportedFromSepLite()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isJdmDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isKnoxVersionSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getKnoxVersion()I

    move-result p0

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMposSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isSepLiteDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupported()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->isKnoxVersionSupported()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final logApiUsage(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "logApiUsage exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EAPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final declared-synchronized removeFromTrackMap(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "removeFromTrackMap: size: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "EAPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pending: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    if-nez p1, :cond_0

    const-string p1, "EAPolicy"

    const-string v0, "Map is empty, call unBindService: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    iget-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public startAttestation(Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V
    .locals 2

    const-string v0, "EAPolicy"

    const-string/jumbo v1, "startAttestation on-prem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EnhancedAttestationPolicy.START_ATTESTATION_OnPREM"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->logApiUsage(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V

    return-void
.end method

.method public startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V
    .locals 2

    const-string v0, "EAPolicy"

    const-string/jumbo v1, "startAttestation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EnhancedAttestationPolicy.START_ATTESTATION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->logApiUsage(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V

    return-void
.end method

.method public final startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V
    .locals 4

    const-string v0, "EAPolicy"

    if-nez p3, :cond_0

    const-string/jumbo p0, "startAttestation: cb == null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "EA is not supported"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x4

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    :cond_2
    if-nez p4, :cond_3

    const-string p1, "auk is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x6

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    :cond_3
    const/4 v1, -0x5

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->bindService()Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "bind request fail"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x7

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    if-eqz p1, :cond_7

    iget-object p4, v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mNonce:Ljava/lang/String;

    iget-object v1, v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mAuk:Ljava/lang/String;

    iget-object v3, v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mCb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    invoke-virtual {v3, p2}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->getEaAttestationCb(Ljava/lang/String;)Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;

    move-result-object v3

    iget-boolean v2, v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mOnPrem:Z

    invoke-interface {p1, p4, v1, v3, v2}, Lcom/samsung/android/knox/integrity/IEnhancedAttestation;->enhancedAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;Z)V

    :cond_7
    const-string p1, "enhancedAttestation requested"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startAttestation: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->removeFromTrackMap(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "nonce len: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_9

    const-string/jumbo p4, "null"

    goto :goto_2

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_2
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void
.end method
