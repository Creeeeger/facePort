.class final Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
.super Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;
.source "LoudnessCodecDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/LoudnessCodecDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoudnessCodecUpdatesDispatcherStub"
.end annotation


# static fields
.field private static blacklist sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;


# instance fields
.field private final blacklist mConfiguratorListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;",
            "Landroid/media/LoudnessCodecController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$OTkOqPriJqnS11TvsEiiJrHQCyM(Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->lambda$dispatchLoudnessCodecParameterChange$2(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;-><init>()V

    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    return-void
.end method

.method private static blacklist filterLoudnessParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "aac-target-ref-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    nop

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v1, "aac-drc-heavy-compression"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    nop

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v1, "aac-drc-effect-type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    nop

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v1, "aac-drc-boost-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    nop

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v1, "aac-drc-cut-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    nop

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v1, "aac-drc-album-mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    nop

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-object v0
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    .locals 2

    const-class v0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    invoke-direct {v1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;-><init>()V

    sput-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    :cond_0
    sget-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic blacklist lambda$addLoudnessCodecListener$3(Landroid/media/CallbackUtil$DispatcherStub;)Landroid/media/CallbackUtil$DispatcherStub;
    .locals 0

    return-object p0
.end method

.method static synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$0(Landroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Ljava/util/Map$Entry;)V
    .locals 11

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/LoudnessCodecInfo;

    invoke-virtual {v0}, Landroid/media/LoudnessCodecInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    move-object v2, v3

    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaCodec;

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_1

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    if-nez v2, :cond_2

    new-instance v8, Landroid/os/Bundle;

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    move-object v2, v8

    const/4 v7, 0x1

    :cond_2
    nop

    invoke-interface {p1, v5, v2}, Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;->onLoudnessCodecUpdate(Landroid/media/MediaCodec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->filterLoudnessParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    :try_start_0
    invoke-virtual {v5, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot set loudness bundle on media codec "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LoudnessCodecDispatcher"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$1(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/LoudnessCodecController;)Landroid/media/LoudnessCodecController;
    .locals 1

    invoke-virtual {p3}, Landroid/media/LoudnessCodecController;->getSessionId()I

    move-result v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda2;-><init>(Landroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    invoke-virtual {p3, v0}, Landroid/media/LoudnessCodecController;->mediaCodecsConsume(Ljava/util/function/Consumer;)V

    :cond_0
    return-object p3
.end method

.method private synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$2(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .locals 3

    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    new-instance v2, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;-><init>(ILandroid/os/PersistableBundle;)V

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method blacklist addLoudnessCodecListener(Landroid/media/CallbackUtil$DispatcherStub;Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .locals 3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "addLoudnessCodecListener"

    new-instance v2, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/CallbackUtil$DispatcherStub;)V

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    invoke-virtual {v1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;ILandroid/os/PersistableBundle;)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method blacklist removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V
    .locals 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move-object v0, v4

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v2, "removeLoudnessCodecListener"

    invoke-virtual {v1, v0, v2}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
