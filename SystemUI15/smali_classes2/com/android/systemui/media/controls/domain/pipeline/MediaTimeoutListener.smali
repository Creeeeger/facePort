.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# instance fields
.field public final logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mediaListeners:Ljava/util/Map;

.field public final recommendationListeners:Ljava/util/Map;

.field public sessionCallback:Lkotlin/jvm/functions/Function1;

.field public stateCallback:Lkotlin/jvm/functions/Function2;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public timeoutCallback:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->recommendationListeners:Ljava/util/Map;

    new-instance p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;)V

    check-cast p4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 5

    iget-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    check-cast p4, Ljava/util/LinkedHashMap;

    invoke-virtual {p4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;

    const-string p5, "MediaTimeout"

    iget-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-boolean v1, p4, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logReuseListener$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logReuseListener$2;

    iget-object v3, p6, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, p5, v1, v2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_1
    move-object p4, v0

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    invoke-static {p4}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logMigrateListener$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logMigrateListener$2;

    iget-object v4, p6, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, p5, v2, v3, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p1, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-boolean v1, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_3
    check-cast p4, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result p2

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logUpdateListener$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logUpdateListener$2;

    iget-object p6, p6, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p6, p5, v1, v2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p6, p5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p4, p3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->setMediaData(Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    iput-object p1, p4, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result p3

    if-eq p2, p3, :cond_4

    new-instance p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    new-instance p4, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;

    invoke-direct {p4, p0, p1, p3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    :cond_2
    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    return-void
.end method
