.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;


# static fields
.field public static final EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

.field public static final MAX_COMPACT_ACTIONS:I

.field public static final MAX_NOTIFICATION_ACTIONS:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final allowMediaRecommendations:Z

.field public final artworkHeight:I

.field public final artworkWidth:I

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public final foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final internalListeners:Ljava/util/Set;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

.field public final mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final smartspaceMediaDataProvider:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;

.field private smartspaceSession:Landroid/app/smartspace/SmartspaceSession;

.field public final statusBarManager:Landroid/app/StatusBarManager;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final themeText:I

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public useMediaResumption:Z

.field public final useQsMediaPlayer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "package_name"

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->MAX_COMPACT_ACTIONS:I

    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->MAX_NOTIFICATION_ACTIONS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/util/concurrency/ThreadFactory;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Landroid/app/smartspace/SmartspaceManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v9, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    const-string v4, "MediaDataProcessor"

    move-object/from16 v13, p4

    invoke-interface {v13, v4}, Lcom/android/systemui/util/concurrency/ThreadFactory;->buildExecutorOnNewThread(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v13

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v14

    invoke-direct/range {v0 .. v21}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;ZZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Landroid/app/smartspace/SmartspaceManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;ZZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Landroid/app/smartspace/SmartspaceManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->backgroundExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->uiExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->useMediaResumption:Z

    move/from16 v2, p14

    iput-boolean v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->useQsMediaPlayer:Z

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    const v2, 0x1010036

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->themeText:I

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->internalListeners:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->artworkWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070e08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->artworkHeight:I

    const-string/jumbo v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->statusBarManager:Landroid/app/StatusBarManager;

    new-instance v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$appChangeReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$appChangeReceiver$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;)V

    return-void
.end method

.method public static final access$removeAllForPackage(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v0, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->removeEntry$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;ZI)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static final access$sendPendingIntent(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Landroid/app/PendingIntent;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaDataProcessor"

    const-string v0, "Intent canceled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;
    .locals 1

    iget-object v0, p0, Lkotlin/sequences/TransformingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->internalListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeEntry$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;ZI)V
    .locals 3

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    invoke-virtual {p3, p1}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->removeMediaEntry(Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget p3, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    invoke-virtual {v2, p3, v1, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->internalListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-interface {p3, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final dismissMediaData(Lcom/android/internal/logging/InstanceId;JZ)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v0, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->dismissMediaData(Ljava/lang/String;JZ)Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final dismissMediaData(Ljava/lang/String;JZ)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v0, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v1, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return v0
.end method

.method public final dismissSmartspaceRecommendation(Ljava/lang/String;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v3, v2, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v5, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isValid()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "MediaDataRepository"

    const-string v6, "Dismissing Smartspace media target"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v6, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v14, v3, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/16 v17, 0x17e

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    iget-object v2, v2, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->_smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissSmartspaceRecommendation$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissSmartspaceRecommendation$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-wide/from16 v3, p2

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->internalListeners:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "internalListeners: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->useMediaResumption:Z

    const-string/jumbo v0, "useMediaResumption: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->allowMediaRecommendations:Z

    const-string p2, "allowMediaRecommendations: "

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/controls/shared/model/MediaAction;
    .locals 9

    new-instance v8, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v1, 0x7f0809a4

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->themeText:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v2, 0x7f130450

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v0, 0x7f0809a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public final getStandardAction(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x4

    cmp-long v2, p4, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_0

    cmp-long v8, p4, v4

    if-nez v8, :cond_1

    :cond_0
    const-wide/16 v8, 0x200

    and-long v8, p2, v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_1

    goto :goto_0

    :cond_1
    and-long v8, p2, p4

    cmp-long v6, v8, v6

    if-eqz v6, :cond_5

    :goto_0
    if-nez v2, :cond_2

    new-instance v3, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v4, 0x7f08107c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$getStandardAction$1;

    invoke-direct {v9, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$getStandardAction$1;-><init>(Landroid/media/session/MediaController;)V

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v2, 0x7f13044a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v1, 0x7f0809a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x10

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_2
    cmp-long v2, p4, v4

    if-nez v2, :cond_3

    new-instance v3, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v4, 0x7f08107b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$getStandardAction$2;

    invoke-direct {v6, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$getStandardAction$2;-><init>(Landroid/media/session/MediaController;)V

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v2, 0x7f130449

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v1, 0x7f0809a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x10

    cmp-long v2, p4, v4

    if-nez v2, :cond_4

    new-instance v3, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v4, 0x7f08107d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$getStandardAction$3;

    invoke-direct {v6, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$getStandardAction$3;-><init>(Landroid/media/session/MediaController;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v1, 0x7f13044b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x20

    cmp-long v2, p4, v4

    if-nez v2, :cond_5

    new-instance v3, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v4, 0x7f081079

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$getStandardAction$4;

    invoke-direct {v6, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$getStandardAction$4;-><init>(Landroid/media/session/MediaController;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v1, 0x7f130448

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_5
    :goto_1
    return-object v3
.end method

.method public final loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "Unable to load bitmap"

    const-string v1, "MediaDataProcessor"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.resource"

    invoke-static {v2, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "file"

    invoke-static {v2, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    :try_start_0
    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadBitmapFromUri$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadBitmapFromUri$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;)V

    invoke-static {p1, v2}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v3
.end method

.method public final logSingleVsMultipleMediaAdded(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_SINGLE_PLAYER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_MULTIPLE_PLAYERS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->internalListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x38

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->internalListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "MediaDataProcessor#onMediaDataLoaded"

    invoke-static {v2}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p3, p1}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->addMediaEntry(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifyMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    return-void

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    throw p0
.end method

.method public final onNotificationRemoved(Ljava/lang/String;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    invoke-virtual {v2, v1}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->removeMediaEntry(Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v4, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v5, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iget v6, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    if-eqz v2, :cond_1

    iget-object v0, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v4, v6, v5, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_b

    :cond_1
    iget v2, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->playbackLocation:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_2

    move v2, v8

    goto :goto_0

    :cond_2
    move v2, v7

    :goto_0
    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v7

    goto :goto_1

    :cond_3
    move v2, v8

    :goto_1
    iget-boolean v9, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->useMediaResumption:Z

    if-eqz v9, :cond_4

    iget-object v9, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    if-eqz v9, :cond_4

    if-eqz v2, :cond_4

    move v7, v8

    :cond_4
    if-eqz v7, :cond_f

    const-string v2, "Converting "

    const-string v4, " to resume"

    const-string v8, "MediaDataProcessor"

    invoke-static {v2, v1, v4, v8}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v5, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move-object v2, v5

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_a

    :cond_6
    iget-object v2, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v2

    move-object v10, v2

    goto :goto_2

    :cond_7
    move-object v10, v4

    :goto_2
    if-eqz v10, :cond_8

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_8
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_3
    iget-object v7, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/4 v15, 0x0

    if-eqz v7, :cond_9

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const/high16 v9, 0x4000000

    invoke-static {v4, v15, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :cond_9
    move-object/from16 v23, v4

    iget-boolean v4, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v4}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    :goto_4
    move-wide/from16 v24, v11

    goto :goto_5

    :cond_a
    iget-wide v11, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->lastActive:J

    goto :goto_4

    :goto_5
    new-instance v26, Lcom/android/systemui/media/controls/shared/model/MediaButton;

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x7e

    const/16 v18, 0x0

    move-object/from16 v9, v26

    move v7, v15

    move v15, v4

    invoke-direct/range {v9 .. v18}, Lcom/android/systemui/media/controls/shared/model/MediaButton;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v4, 0x0

    move v15, v7

    move-object v7, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v4, 0x1

    move v15, v4

    const-wide/16 v18, 0x0

    const v22, 0xf8da47f

    move-object v4, v2

    move-object v2, v5

    move-object/from16 v5, v16

    move-object/from16 v27, v6

    move-object/from16 v6, v26

    move-object/from16 v28, v8

    move-object/from16 v8, v23

    move-wide/from16 v16, v24

    invoke-static/range {v3 .. v22}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->addMediaEntry(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v5

    if-nez v5, :cond_b

    const/4 v15, 0x1

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "migrating? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v28

    invoke-static {v5, v2, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_c

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifyMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    goto :goto_7

    :cond_c
    invoke-static/range {p0 .. p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v2, v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifyMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    :goto_7
    iget-object v1, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v5, v27

    iget-object v7, v5, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v8, Lcom/android/systemui/media/controls/util/MediaUiEvent;->ACTIVE_TO_RESUME:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    invoke-interface {v7, v8, v3, v2, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object v1, v4, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v7, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_10

    invoke-static {v2}, Lkotlin/collections/MapsKt___MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$convertToResumePlayer$$inlined$sortedBy$1;

    invoke-direct {v7}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$convertToResumePlayer$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/MediaData;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Removing excess control "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->removeMediaEntry(Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-static {v0, v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    iget-object v7, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3, v2, v7}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_9

    :goto_a
    const-string v4, "Description incomplete"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget v1, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    invoke-virtual {v5, v1, v2, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_b

    :cond_f
    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v4, v6, v5, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_10
    :goto_b
    return-void
.end method

.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->allowMediaRecommendations:Z

    const-string v2, "MediaDataProcessor"

    if-nez v1, :cond_0

    const-string v0, "Smartspace recommendation is disabled in Settings."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v4, v1, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    iget-object v1, v1, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->_smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v7, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    const/4 v8, 0x0

    if-eqz v5, :cond_a

    const/4 v9, 0x1

    if-eq v5, v9, :cond_3

    const-string v3, "More than 1 Smartspace Media Update. Resetting the status..."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v21, 0x1ff

    const/16 v22, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v22}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v6, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/smartspace/SmartspaceTarget;

    iget-object v4, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    const-string v4, "Forwarding Smartspace media update."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "dismiss_intent"

    const-class v8, Landroid/content/Intent;

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v14, v4

    goto :goto_1

    :cond_5
    move-object v14, v6

    :goto_1
    invoke-virtual {v7}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "Empty or null media recommendation list."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v11, v6

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    move-object v11, v5

    goto :goto_3

    :cond_8
    const-string v4, "No valid package name is provided."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    const/4 v10, 0x1

    if-eqz v11, :cond_9

    new-instance v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v12

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v15

    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v17

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getExpiryTimeMillis()J

    move-result-wide v18

    move-object v8, v4

    invoke-direct/range {v8 .. v19}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;J)V

    goto :goto_4

    :cond_9
    new-instance v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v15

    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v17

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getExpiryTimeMillis()J

    move-result-wide v18

    const/16 v20, 0x1c

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v21}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    invoke-virtual {v1, v6, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->internalListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    iget-object v2, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V

    goto :goto_5

    :cond_a
    iget-boolean v3, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-nez v3, :cond_b

    return-void

    :cond_b
    const-string v3, "Set Smartspace media to be inactive for the data update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    iget-object v2, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v2, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const-wide/16 v16, 0x0

    const-wide/16 v19, 0x0

    iget-object v10, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x17e

    const/16 v22, 0x0

    move-object v9, v0

    move-object/from16 v18, v2

    invoke-direct/range {v9 .. v22}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v6, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    return-void
.end method

.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method
