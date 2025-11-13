.class public final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;


# static fields
.field public static final EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

.field public static final MAX_COMPACT_ACTIONS:I

.field public static final MAX_NOTIFICATION_ACTIONS:I

.field public static final SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public allowMediaRecommendations:Z

.field public final artworkHeight:I

.field public final artworkWidth:I

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public final foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final internalListeners:Ljava/util/Set;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

.field public final mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

.field public final mediaDeviceManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

.field public final mediaEntries:Ljava/util/LinkedHashMap;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

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

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "media_data_manager"

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;

    const-string v0, "package_name"

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->MAX_COMPACT_ACTIONS:I

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->genericButtonIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sput v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->MAX_NOTIFICATION_ACTIONS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/ThreadFactory;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Landroid/app/smartspace/SmartspaceManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v6, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    const-string v2, "MediaDataManager"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/systemui/util/concurrency/ThreadFactory;->buildExecutorOnNewThread(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v16

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v17

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v23}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;ZZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Landroid/app/smartspace/SmartspaceManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;ZZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Landroid/app/smartspace/SmartspaceManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p15

    move-object/from16 v10, p22

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    move-object/from16 v11, p2

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->uiExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v11, p5

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    iput-object v6, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDeviceManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iput-object v8, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v9, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaDataProvider:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;

    move/from16 v11, p16

    iput-boolean v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->useMediaResumption:Z

    move/from16 v11, p17

    iput-boolean v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->useQsMediaPlayer:Z

    move-object/from16 v11, p18

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v11, p20

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    move-object/from16 v11, p21

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    move-object/from16 v11, p23

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const v11, 0x1010036

    invoke-static {v11, v1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    iput v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->themeText:I

    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->internalListeners:Ljava/util/Set;

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v12, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    sget-object v12, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iput-object v12, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "qs_media_recommend"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    if-lez v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iput-boolean v14, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->allowMediaRecommendations:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x10500f7

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->artworkWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f070e08

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->artworkHeight:I

    const-string/jumbo v12, "statusbar"

    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/StatusBarManager;

    iput-object v12, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->statusBarManager:Landroid/app/StatusBarManager;

    new-instance v12, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$appChangeReceiver$1;

    invoke-direct {v12, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$appChangeReceiver$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

    const-string v14, "MediaDataManager"

    move-object/from16 v15, p7

    invoke-static {v15, v14, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v11, v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, v6, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->listeners:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;->listeners:Ljava/util/Set;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

    iput-object v5, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    new-instance v5, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$2;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$2;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

    iput-object v5, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->stateCallback:Lkotlin/jvm/functions/Function2;

    new-instance v5, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$3;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$3;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

    iput-object v5, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->sessionCallback:Lkotlin/jvm/functions/Function1;

    iput-object v0, v4, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    new-instance v3, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$setManager$1;

    invoke-direct {v3, v4}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$setManager$1;-><init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;)V

    const-string v5, "qs_media_resumption"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->tunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object/from16 p4, p6

    move-object/from16 p5, v12

    move-object/from16 p6, v3

    move-object/from16 p7, v7

    move-object/from16 p8, v4

    move/from16 p9, v5

    move-object/from16 p10, v6

    move/from16 p11, v8

    invoke-static/range {p4 .. p11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v9, v0}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataProvider;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    if-eqz v10, :cond_1

    new-instance v3, Landroid/app/smartspace/SmartspaceConfig$Builder;

    sget-object v4, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Landroid/app/smartspace/SmartspaceConfig$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceConfig$Builder;->build()Landroid/app/smartspace/SmartspaceConfig;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/smartspace/SmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;)Landroid/app/smartspace/SmartspaceSession;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceSession:Landroid/app/smartspace/SmartspaceSession;

    if-eqz v1, :cond_2

    new-instance v3, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$4$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$4$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/smartspace/SmartspaceSession;->addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceSession:Landroid/app/smartspace/SmartspaceSession;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    :cond_3
    new-instance v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$6;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p19

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public static final access$removeAllForPackage(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

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

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->removeEntry$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;ZI)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static final access$sendPendingIntent(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Landroid/app/PendingIntent;)Z
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

    const-string p1, "MediaDataManager"

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

.method public static generateActionsFromSemantic$1(Lcom/android/systemui/media/controls/shared/model/MediaButton;)Lkotlin/Pair;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->internalListeners:Ljava/util/Set;

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

.method public static removeEntry$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;ZI)V
    .locals 3

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget p3, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    invoke-virtual {v2, p3, v1, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->internalListeners:Ljava/util/Set;

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
.method public final addListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResumptionControls(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v2, p0

    move-object/from16 v1, p7

    iget-object v0, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v7, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v0, v7, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    :try_start_0
    iget-object v0, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v4, "Could not get app UID for "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaDataManager"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_2
    sget-object v20, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->LOADING:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v4, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v4}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v16, 0x0

    move-object/from16 v11, p3

    check-cast v11, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v22, 0xc777bff

    move-object/from16 v23, v3

    move-object/from16 v3, v20

    move-object/from16 v24, v7

    move-object/from16 v7, p7

    move-object/from16 v20, v23

    move/from16 v21, v0

    invoke-static/range {v3 .. v22}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object/from16 v3, v24

    iget-object v4, v3, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_SINGLE_PLAYER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    move-object/from16 v6, v23

    invoke-interface {v4, v5, v0, v1, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_3

    :cond_1
    move-object/from16 v6, v23

    move-object/from16 v3, v24

    iget-object v4, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_MULTIPLE_PLAYERS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v4, v5, v0, v1, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_2
    :goto_3
    iget-object v3, v3, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->RESUME_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v3, v4, v0, v1, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_3
    iget-object v0, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final convertToResumePlayer$1(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    const-string v2, "Converting "

    const-string v3, " to resume"

    const-string v15, "MediaDataManager"

    invoke-static {v2, v14, v3, v15}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v4, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v3, v4

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_8

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->getResumeMediaAction$1(Ljava/lang/Runnable;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_0

    :cond_2
    move-object/from16 v17, v3

    :goto_0
    if-eqz v17, :cond_3

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1
    iget-object v5, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v13, 0x0

    if-eqz v5, :cond_4

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const/high16 v7, 0x4000000

    invoke-static {v3, v13, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :cond_4
    move-object/from16 v26, v3

    iget-boolean v3, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v3}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    :goto_2
    move-wide/from16 v27, v7

    goto :goto_3

    :cond_5
    iget-wide v7, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->lastActive:J

    goto :goto_2

    :goto_3
    new-instance v29, Lcom/android/systemui/media/controls/shared/model/MediaButton;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x7e

    const/16 v25, 0x0

    move-object/from16 v16, v29

    invoke-direct/range {v16 .. v25}, Lcom/android/systemui/media/controls/shared/model/MediaButton;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x1

    move/from16 v13, v16

    const-wide/16 v16, 0x0

    const v20, 0xf8da47f

    move-object/from16 v1, p1

    move-object/from16 v30, v4

    move-object/from16 v4, v29

    move-object/from16 v31, v6

    move-object/from16 v6, v26

    move-object/from16 v32, v15

    move-wide/from16 v14, v27

    invoke-static/range {v1 .. v20}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v3, v30

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "migrating? "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v32

    invoke-static {v2, v3, v5}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_7

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataLoaded$1(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    goto :goto_5

    :cond_7
    invoke-static {v0, v4}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v3, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataLoaded$1(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    :goto_5
    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v6, v31

    iget-object v4, v6, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v7, Lcom/android/systemui/media/controls/util/MediaUiEvent;->ACTIVE_TO_RESUME:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    invoke-interface {v4, v7, v1, v3, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v4, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_a

    invoke-static {v2}, Lkotlin/collections/MapsKt___MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$convertToResumePlayer$$inlined$sortedBy$1;

    invoke-direct {v4}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$convertToResumePlayer$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const-string v4, "Removing excess control "

    invoke-static {v4, v3, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    iget-object v4, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3, v2, v4}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_7

    :cond_a
    return-void

    :goto_8
    const-string v2, "Description incomplete"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v4}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    invoke-virtual {v6, v1, v3, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final createActionsFromState$1(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/controls/shared/model/MediaButton;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    iget-object v0, v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p3

    invoke-static {v7, v1}, Landroid/app/StatusBarManager;->useMediaSessionActionsForApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/NotificationMediaManager;->CONNECTING_MEDIA_STATES:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v1, 0x10808f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v2, v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v3, 0x7f130447

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v3, 0x7f080999

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v14, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    :goto_1
    move-object v13, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->getStandardAction$1(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->getStandardAction$1(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->getStandardAction$1(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v12

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->getStandardAction$1(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v0

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;

    move-object/from16 v3, p2

    invoke-direct {v2, v6, v8, v7, v3}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Landroid/media/session/PlaybackState;Ljava/lang/String;Landroid/media/session/MediaController;)V

    new-instance v4, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v4, v1, v2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {v1, v4}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v4, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v10, :cond_4

    move/from16 v19, v10

    goto :goto_3

    :cond_4
    move/from16 v19, v11

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v10, :cond_5

    move/from16 v18, v10

    goto :goto_4

    :cond_5
    move/from16 v18, v11

    :goto_4
    if-eqz v12, :cond_6

    move-object v15, v12

    goto :goto_5

    :cond_6
    if-nez v19, :cond_7

    invoke-static {v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v2

    move-object v15, v2

    goto :goto_5

    :cond_7
    move-object v15, v9

    :goto_5
    if-eqz v0, :cond_8

    move-object v14, v0

    goto :goto_6

    :cond_8
    if-nez v18, :cond_9

    invoke-static {v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v9

    :cond_9
    move-object v14, v9

    :goto_6
    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaButton;

    invoke-static {v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v16

    invoke-static {v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v17

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/media/controls/shared/model/MediaButton;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZ)V

    return-object v0

    :cond_a
    :goto_7
    return-object v9
.end method

.method public final dismissMediaData(Ljava/lang/String;JZ)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$dismissMediaData$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$dismissMediaData$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$dismissMediaData$2;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$dismissMediaData$2;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v1, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return v0
.end method

.method public final dismissSmartspaceRecommendation(Ljava/lang/String;J)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MediaDataManager"

    const-string v0, "Dismissing Smartspace media target"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v0, p1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v7, p1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const-wide/16 v5, 0x0

    const-wide/16 v8, 0x0

    iget-object v2, p1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v10, 0x17e

    invoke-static/range {v1 .. v10}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    :cond_1
    new-instance p1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$dismissSmartspaceRecommendation$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$dismissSmartspaceRecommendation$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->internalListeners:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "internalListeners: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    iget-object p2, p2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "externalListeners: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediaEntries: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->useMediaResumption:Z

    const-string/jumbo v0, "useMediaResumption: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->allowMediaRecommendations:Z

    const-string v0, "allowMediaRecommendations: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDeviceManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getResumeMediaAction$1(Ljava/lang/Runnable;)Lcom/android/systemui/media/controls/shared/model/MediaAction;
    .locals 9

    new-instance v8, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v1, 0x7f0809a4

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->themeText:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v2, 0x7f130450

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

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

.method public final getStandardAction$1(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;
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

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v4, 0x7f08107c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getStandardAction$1;

    invoke-direct {v9, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getStandardAction$1;-><init>(Landroid/media/session/MediaController;)V

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v2, 0x7f13044a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

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

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v4, 0x7f08107b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getStandardAction$2;

    invoke-direct {v6, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getStandardAction$2;-><init>(Landroid/media/session/MediaController;)V

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v2, 0x7f130449

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

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

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v4, 0x7f08107d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getStandardAction$3;

    invoke-direct {v6, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getStandardAction$3;-><init>(Landroid/media/session/MediaController;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

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

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v4, 0x7f081079

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getStandardAction$4;

    invoke-direct {v6, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getStandardAction$4;-><init>(Landroid/media/session/MediaController;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

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

.method public final hasActiveMediaOrRecommendation()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->reactivatedKey:Ljava/lang/String;

    if-eqz p0, :cond_4

    :cond_3
    :goto_1
    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final hasAnyMediaOrRecommendation()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2
.end method

.method public final isAbleToResume$1(Lcom/android/systemui/media/controls/shared/model/MediaData;)Z
    .locals 4

    iget v0, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->playbackLocation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->useMediaResumption:Z

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final isRecommendationActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    return p0
.end method

.method public final loadBitmapFromUri$1(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "Unable to load bitmap"

    const-string v1, "MediaDataManager"

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
    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    :try_start_0
    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadBitmapFromUri$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadBitmapFromUri$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

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

.method public final notifyMediaDataLoaded$1(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->internalListeners:Ljava/util/Set;

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

.method public final notifySmartspaceMediaDataRemoved$1(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->internalListeners:Ljava/util/Set;

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
    .locals 2

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "MediaDataManager#onMediaDataLoaded"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataLoaded$1(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    return-void

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    throw p0
.end method

.method public final onNotificationAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->useQsMediaPlayer:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    if-nez v4, :cond_2

    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v3, v3, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v3}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v22

    sget-object v5, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->LOADING:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    iget-object v6, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v6}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v20

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v18, 0x0

    const/16 v23, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v24, 0xe7ffbff

    invoke-static/range {v5 .. v24}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v3

    iget-object v5, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v5, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    iget-object v6, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Z)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->onNotificationRemoved(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public final onNotificationRemoved(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v3, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v2, v4, v3, p0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->isAbleToResume$1(Lcom/android/systemui/media/controls/shared/model/MediaData;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->convertToResumePlayer$1(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v2, v4, v3, p0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :goto_0
    return-void
.end method

.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->allowMediaRecommendations:Z

    const-string v2, "MediaDataManager"

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
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    const-string v1, "More than 1 Smartspace Media Update. Resetting the status..."

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v1, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifySmartspaceMediaDataRemoved$1(Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/smartspace/SmartspaceTarget;

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v3, v3, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    const-string v3, "Forwarding Smartspace media update."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v6, "dismiss_intent"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move-object v3, v5

    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v4, "Empty or null media recommendation list."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v9, v5

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_7

    sget-object v7, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    move-object v9, v6

    goto :goto_3

    :cond_8
    const-string v4, "No valid package name is provided."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    const/4 v8, 0x1

    if-eqz v9, :cond_9

    new-instance v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v10

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v13

    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v15

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getExpiryTimeMillis()J

    move-result-wide v16

    move-object v6, v4

    move-object v12, v3

    invoke-direct/range {v6 .. v17}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;J)V

    goto :goto_4

    :cond_9
    sget-object v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v10

    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v12

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getExpiryTimeMillis()J

    move-result-wide v13

    const/16 v15, 0x1c

    move-object v9, v3

    invoke-static/range {v6 .. v15}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    move-result-object v4

    :goto_4
    iput-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->internalListeners:Ljava/util/Set;

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
    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-nez v1, :cond_b

    return-void

    :cond_b
    const-string v1, "Set Smartspace media to be inactive for the data update"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    sget-object v6, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v7, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v15, 0x17e

    invoke-static/range {v6 .. v15}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v1, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifySmartspaceMediaDataRemoved$1(Ljava/lang/String;Z)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final onSwipeToDismiss()V
    .locals 14

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Media carousel swiped away"

    const-string v1, "MediaDataFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-eqz v4, :cond_0

    move-object v3, v4

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->setInactive(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    const-string v0, "Cannot create dismiss action click action: extras missing dismiss_intent."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    const-string v2, "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    sget-object v4, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v5, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/4 v7, 0x0

    const/16 v13, 0x17e

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v4 .. v13}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-eqz p0, :cond_5

    move-object v3, p0

    :cond_5
    const-wide/16 v1, 0x0

    iget-object p0, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-interface {v3, p0, v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    :cond_6
    return-void
.end method

.method public final removeListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setInactive(Ljava/lang/String;ZZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const-wide/16 v1, 0x0

    const-string v3, "MediaDataManager"

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    iget-object v4, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v5, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v5, v5, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_TIMEOUT:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget v7, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    iget-object v8, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    xor-int/lit8 v5, p2, 0x1

    if-ne v4, v5, :cond_2

    if-nez p3, :cond_2

    iget-boolean p2, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    if-eqz p2, :cond_1

    const-string/jumbo p2, "timing out resume player "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->dismissMediaData(Ljava/lang/String;JZ)Z

    :cond_1
    return-void

    :cond_2
    if-eqz v4, :cond_3

    iget-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p3}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->lastActive:J

    :cond_3
    iput-boolean v5, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "Updating "

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " timedOut: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p1, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object p2, p2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string/jumbo p2, "smartspace card expired"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    :cond_5
    return-void
.end method

.method public final setMediaResumptionEnabled(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->useMediaResumption:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->useMediaResumption:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final setResumeAction(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->hasCheckedForResume:Z

    :cond_0
    return-void
.end method
