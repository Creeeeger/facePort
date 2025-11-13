.class public Landroid/media/tv/tuner/Lnb;
.super Ljava/lang/Object;
.source "Lnb.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Lnb$EventType;,
        Landroid/media/tv/tuner/Lnb$Position;,
        Landroid/media/tv/tuner/Lnb$Tone;,
        Landroid/media/tv/tuner/Lnb$Voltage;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final whitelist EVENT_TYPE_DISEQC_RX_OVERFLOW:I = 0x0

.field public static final whitelist EVENT_TYPE_DISEQC_RX_PARITY_ERROR:I = 0x2

.field public static final whitelist EVENT_TYPE_DISEQC_RX_TIMEOUT:I = 0x1

.field public static final whitelist EVENT_TYPE_LNB_OVERLOAD:I = 0x3

.field public static final whitelist POSITION_A:I = 0x1

.field public static final whitelist POSITION_B:I = 0x2

.field public static final whitelist POSITION_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Lnb"

.field public static final whitelist TONE_CONTINUOUS:I = 0x1

.field public static final whitelist TONE_NONE:I = 0x0

.field public static final whitelist VOLTAGE_11V:I = 0x2

.field public static final whitelist VOLTAGE_12V:I = 0x3

.field public static final whitelist VOLTAGE_13V:I = 0x4

.field public static final whitelist VOLTAGE_14V:I = 0x5

.field public static final whitelist VOLTAGE_15V:I = 0x6

.field public static final whitelist VOLTAGE_18V:I = 0x7

.field public static final whitelist VOLTAGE_19V:I = 0x8

.field public static final whitelist VOLTAGE_5V:I = 0x1

.field public static final whitelist VOLTAGE_NONE:I


# instance fields
.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/tv/tuner/LnbCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClientId:I

.field private blacklist mIsClosed:Ljava/lang/Boolean;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J

.field blacklist mOwner:Landroid/media/tv/tuner/Tuner;

.field blacklist mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$w6-ObV5FiZtq28ldNXCdRcrGlQw(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->lambda$onEvent$0(Landroid/media/tv/tuner/LnbCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xsLEnUznT6SREWpTSGpja6JZA8k(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->lambda$onDiseqcMessage$1(Landroid/media/tv/tuner/LnbCallback;[B)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "Lnb"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/tv/tuner/Lnb;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist acquireTRMSLock(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Landroid/media/tv/tuner/Lnb;->DEBUG:Z

    const-string v1, "Lnb"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTEMPT:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->acquireLock(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - this can cause deadlock between Tuner API calls and onReclaimResources()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$onDiseqcMessage$1(Landroid/media/tv/tuner/LnbCallback;[B)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/tv/tuner/LnbCallback;->onDiseqcMessage([B)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onEvent$0(Landroid/media/tv/tuner/LnbCallback;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/tv/tuner/LnbCallback;->onEvent(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeSendDiseqcMessage([B)I
.end method

.method private native blacklist nativeSetSatellitePosition(I)I
.end method

.method private native blacklist nativeSetTone(I)I
.end method

.method private native blacklist nativeSetVoltage(I)I
.end method

.method private blacklist onDiseqcMessage([B)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/LnbCallback;

    iget-object v3, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    new-instance v4, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onEvent(I)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/LnbCallback;

    iget-object v3, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    new-instance v4, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist releaseTRMSLock()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLock(I)Z

    return-void
.end method


# virtual methods
.method public whitelist addCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V
    .locals 2

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 1

    const-string v0, "close()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Lnb;->acquireTRMSLock(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/media/tv/tuner/Lnb;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->releaseTRMSLock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->releaseTRMSLock()V

    throw v0
.end method

.method blacklist closeInternal()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->nativeClose()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "Failed to close LNB"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {v2}, Landroid/media/tv/tuner/Tuner;->releaseLnb()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    :cond_2
    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist isClosed()Z
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeCallback(Landroid/media/tv/tuner/LnbCallback;)Z
    .locals 2

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist sendDiseqcMessage([B)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSendDiseqcMessage([B)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/media/tv/tuner/Lnb;->addCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroid/media/tv/tuner/Lnb;->setOwner(Landroid/media/tv/tuner/Tuner;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Tuner;->getTunerResourceManager()Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Tuner;->getClientId()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist setOwner(Landroid/media/tv/tuner/Tuner;)V
    .locals 2

    const-string/jumbo v0, "newOwner must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getTunerResourceManager()Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/Lnb;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getClientId()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setSatellitePosition(I)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetSatellitePosition(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setTone(I)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetTone(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setVoltage(I)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetVoltage(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
