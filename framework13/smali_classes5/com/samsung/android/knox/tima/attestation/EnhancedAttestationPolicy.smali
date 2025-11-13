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

.field private static final blacklist EA_PACKAGE_CLASS:Ljava/lang/String; = "com.samsung.android.knox.attestation.SemEnhancedAttestation"

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
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 183
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;-><init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 54
    return-void
.end method

.method private declared-synchronized blacklist addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "opt"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "SEMEAPolicy"

    const-string/jumbo v1, "same nonce onProcessing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 251
    .end local p0    # "this":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
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

    .line 253
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 246
    .end local p1    # "nonce":Ljava/lang/String;
    .end local p2    # "opt":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist bindService()Z
    .locals 6

    .line 203
    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 204
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

    .line 206
    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 207
    :try_start_2
    monitor-exit v0

    return v1

    .line 211
    :cond_0
    goto :goto_0

    .line 209
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
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

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.knox.attestation"

    const-string v3, "com.samsung.android.knox.attestation.SemEnhancedAttestation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 218
    .local v1, "result":Z
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

    .line 219
    return v1

    .line 212
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "result":Z
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

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 268
    .end local p0    # "this":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 173
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    invoke-direct {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;-><init>()V

    .line 174
    .local v0, "result":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->setErrorCode(I)V

    .line 176
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "dataFieldUniqueId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->setData(Landroid/os/Bundle;)V

    .line 180
    return-object v0
.end method

.method static declared-synchronized blacklist getInstance()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 36
    if-nez p0, :cond_0

    .line 37
    :try_start_0
    const-string v1, "SEMEAPolicy"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 40
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    .line 43
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 35
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static blacklist getKnoxVersion()I
    .locals 1

    .line 105
    const-string v0, "36"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    return v0
.end method

.method private declared-synchronized blacklist getTrackMapSize()I
    .locals 1

    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 273
    .end local p0    # "this":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist handlePendingRequest()V
    .locals 10

    .line 223
    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getTrackMapSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 224
    return-void

    .line 228
    :cond_0
    monitor-enter v0

    .line 229
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 230
    .local v1, "trackOpsHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;>;"
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->clearTrackMap()V

    .line 231
    iput-boolean v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 235
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 236
    .local v4, "nonce":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;

    .line 237
    .local v5, "key":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    const-string v6, "SEMEAPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "process pending request: nonce len: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {v5}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmAuk(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmCb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v8

    invoke-static {v5}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmOnPrem(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    .line 239
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;>;"
    .end local v4    # "nonce":Ljava/lang/String;
    .end local v5    # "key":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    goto :goto_0

    .line 241
    :cond_1
    monitor-enter v0

    .line 242
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 243
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 232
    .end local v1    # "trackOpsHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;>;"
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

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isEaSupportedFromSepLite()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isJdmDevice()Z
    .locals 2

    .line 89
    const-string v0, "jdm"

    const-string v1, "in_house"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "SEMEAPolicy"

    const-string v1, "jdm device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isKnoxVersionSupported()Z
    .locals 2

    .line 97
    invoke-static {}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getKnoxVersion()I

    move-result v0

    .line 98
    .local v0, "knoxSdkver":I
    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 99
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isSepLiteDevice()Z
    .locals 3

    .line 80
    const-string/jumbo v0, "sep_basic"

    .line 81
    .local v0, "sepCategory":Ljava/lang/String;
    const-string/jumbo v1, "sep_lite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "sep_lite_new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 82
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

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V
    .locals 7
    .param p1, "auk"    # Ljava/lang/String;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;
    .param p4, "onPrem"    # Z

    .line 122
    const-string v0, "SEMEAPolicy"

    if-nez p3, :cond_0

    .line 123
    const-string/jumbo v1, "startAttestation: cb == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const-string v1, "EA is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, -0x4

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 130
    return-void

    .line 133
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    :cond_2
    if-nez p4, :cond_3

    .line 134
    const-string v1, "auk is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, -0x6

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 136
    return-void

    .line 139
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

    .line 146
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->bindService()Z

    move-result v2

    if-nez v2, :cond_5

    .line 147
    const-string v1, "bind request fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, -0x7

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 149
    return-void

    .line 152
    :cond_5
    new-instance v2, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    .line 153
    .local v2, "requestInfo":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 154
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 155
    return-void

    .line 158
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    if-eqz v1, :cond_7

    .line 159
    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmAuk(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmCb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v5

    .line 160
    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->getEaAttestationCb(Ljava/lang/String;)Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmOnPrem(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v6

    .line 159
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;->enhancedAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;Z)V

    .line 162
    :cond_7
    const-string v1, "enhancedAttestation requested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-void

    .line 164
    .end local v2    # "requestInfo":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAttestation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->removeFromTrackMap(Ljava/lang/String;)V

    .line 169
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 170
    return-void

    .line 140
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

    .line 141
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 142
    return-void
.end method


# virtual methods
.method blacklist isSupported()Z
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isDongleDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    return v1

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isKnoxVersionSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    return v1

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isSepLiteDevice()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isJdmDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isEaSupportedFromSepLite()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    return v1

    .line 68
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized blacklist removeFromTrackMap(Ljava/lang/String;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "SEMEAPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromTrackMap: size: "

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

    .line 261
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    if-nez v0, :cond_0

    .line 262
    const-string v0, "SEMEAPolicy"

    const-string v1, "Map is empty, call unBindService: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    .line 264
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local p0    # "this":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :cond_0
    monitor-exit p0

    return-void

    .line 256
    .end local p1    # "nonce":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist startAttestation(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    .line 112
    const-string v0, "SEMEAPolicy"

    const-string/jumbo v1, "startAttestation on-prem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    .line 114
    return-void
.end method

.method blacklist startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V
    .locals 2
    .param p1, "auk"    # Ljava/lang/String;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    .line 116
    const-string v0, "SEMEAPolicy"

    const-string/jumbo v1, "startAttestation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    .line 118
    return-void
.end method
