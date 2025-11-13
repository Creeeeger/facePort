.class public Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
.super Ljava/lang/Object;
.source "EnhancedAttestationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    }
.end annotation


# static fields
.field private static final blacklist EA_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

.field private static final blacklist EA_PACKAGE_CLASS:Ljava/lang/String; = "com.samsung.android.knox.attestation.controller.SemEnhancedAttestation"

.field private static final blacklist EA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.attestation"

.field private static final blacklist TAG:Ljava/lang/String; = "SEMEAPolicy"

.field private static blacklist mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;


# instance fields
.field private blacklist conn:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

.field private blacklist mProcessPendingRequest:Z

.field private final blacklist mTrackOpsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmEnhancedAttestation(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePendingRequest(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->handlePendingRequest()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;-><init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    return-void
.end method

.method private declared-synchronized blacklist addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SEMEAPolicy"

    const-string v1, "same nonce onProcessing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SEMEAPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToTrackMap:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getTrackMapSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist bindService()Z
    .locals 6

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    const-string v1, "SEMEAPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    invoke-interface {v2}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    monitor-exit v0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SEMEAPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.knox.attestation"

    const-string v3, "com.samsung.android.knox.attestation.controller.SemEnhancedAttestation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    const-string v2, "SEMEAPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private declared-synchronized blacklist clearTrackMap()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

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

.method private blacklist getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    invoke-direct {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->setErrorCode(I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dataFieldUniqueId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static declared-synchronized blacklist getInstance()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    .locals 3

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string v1, "SEMEAPolicy"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static blacklist getKnoxVersion()I
    .locals 1

    const-string v0, "38"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    return v0
.end method

.method private declared-synchronized blacklist getTrackMapSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

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

.method private blacklist handlePendingRequest()V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getTrackMapSize()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->clearTrackMap()V

    iput-boolean v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

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

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;

    const-string v5, "SEMEAPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process pending request: nonce len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmAuk(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmCb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v7

    invoke-static {v4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmOnPrem(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    goto :goto_0

    :cond_1
    const-class v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist isDongleDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isEaSupportedFromSepLite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isJdmDevice()Z
    .locals 2

    const-string v0, "jdm"

    const-string v1, "in_house"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEMEAPolicy"

    const-string v1, "jdm device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isKnoxVersionSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getKnoxVersion()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isSepLiteDevice()Z
    .locals 3

    const-string v0, "sep_basic"

    const-string v1, "sep_lite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sep_lite_new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sep Lite Device : sepCategory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SEMEAPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V
    .locals 7

    const-string v0, "SEMEAPolicy"

    if-nez p3, :cond_0

    const-string v1, "startAttestation: cb == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EA is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    :cond_2
    if-nez p4, :cond_3

    const-string v1, "auk is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x6

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

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

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->bindService()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "bind request fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x7

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    return-void

    :cond_5
    new-instance v2, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmAuk(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmCb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->getEaAttestationCb(Ljava/lang/String;)Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmOnPrem(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;->enhancedAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;Z)V

    :cond_7
    const-string v1, "enhancedAttestation requested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAttestation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->removeFromTrackMap(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    return-void

    :cond_8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nonce len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_9

    const-string v3, "null"

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    return-void
.end method


# virtual methods
.method blacklist isSupported()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isDongleDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isKnoxVersionSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isSepLiteDevice()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isJdmDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isEaSupportedFromSepLite()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized blacklist removeFromTrackMap(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SEMEAPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFromTrackMap: size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    if-nez v0, :cond_0

    const-string v0, "SEMEAPolicy"

    const-string v1, "Map is empty, call unBindService: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist startAttestation(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V
    .locals 2

    const-string v0, "SEMEAPolicy"

    const-string v1, "startAttestation on-prem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    return-void
.end method

.method blacklist startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V
    .locals 2

    const-string v0, "SEMEAPolicy"

    const-string v1, "startAttestation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    return-void
.end method
