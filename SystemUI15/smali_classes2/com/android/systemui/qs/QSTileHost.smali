.class public final Lcom/android/systemui/qs/QSTileHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSHost;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/ProtoDumpable;
.implements Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;
.implements Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;


# static fields
.field public static final DEBUG:Z

.field public static final LOGGING_DEBUG:Z

.field static final TILES:Ljava/lang/String; = "tiles_prefs"


# instance fields
.field public mAutoTiles:Lcom/android/systemui/qs/SecAutoTileManager;

.field public mBnRRemovedTileList:Ljava/lang/String;

.field public mBnRTileList:Ljava/lang/String;

.field public mBottomBarTileList:Ljava/lang/String;

.field public mBrightnessVolumeBarTileList:Ljava/lang/String;

.field public final mCallbacks:Ljava/util/List;

.field public mComponentNameTable:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public final mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

.field public final mEditor:Landroid/content/SharedPreferences$Editor;

.field public final mFeatureFlags:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;

.field public final mHandler:Landroid/os/Handler;

.field public final mHiddenTilesByKnoxInTopBottomBar:Ljava/util/ArrayList;

.field public mIsQQSosUpdating:Z

.field public mIsRestoring:Z

.field public mKnoxBlockedQsTileList:Ljava/util/List;

.field public final mKnoxStateCallback:Lcom/android/systemui/qs/QSTileHost$3;

.field public mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mKnoxUnavailableQsTileList:Ljava/util/List;

.field public final mLockscreentTileHost:Lcom/android/systemui/qs/SecLockscreenTileHost;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

.field public final mQsFactories:Ljava/util/ArrayList;

.field public final mResetSettingsApplier:Lcom/android/systemui/qs/QSTileHost$1;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSEPVersionOfBnRData:I

.field public mSearchAllowTileList:Ljava/util/ArrayList;

.field public final mSearchables:Ljava/util/ArrayList;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mShadeControllerProvider:Ldagger/Lazy;

.field public mSmartViewBarTileList:Ljava/lang/String;

.field public final mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

.field public mTileIsRemovedByApi:Z

.field public mTileNameTable:Ljava/util/HashMap;

.field public final mTileSpecs:Ljava/util/ArrayList;

.field public final mTileUsingByBar:Ljava/lang/Object;

.field public final mTileUsingByPanel:Ljava/lang/Object;

.field public final mTiles:Ljava/util/LinkedHashMap;

.field public mTilesListDirty:Z

.field public final mTilesMap:Lcom/android/systemui/qs/QSTileHost$TilesMap;

.field public mTopBarTileList:Ljava/lang/String;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field public mUserContext:Landroid/content/Context;

.field public final mUserFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    const-string v0, "SA_QUICK_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->LOGGING_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/plugins/qs/QSFactory;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;Ldagger/Lazy;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/qs/external/CustomTileStatePersister;Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;Lcom/android/systemui/BootAnimationFinishedCache;Ljava/util/concurrent/Executor;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Ljavax/inject/Provider;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/qs/external/CustomTileStatePersister;",
            "Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;",
            "Lcom/android/systemui/settings/UserFileManager;",
            "Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v0, p5

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    iput v12, v7, Lcom/android/systemui/qs/QSTileHost;->mSEPVersionOfBnRData:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v7, Lcom/android/systemui/qs/QSTileHost;->mHandler:Landroid/os/Handler;

    iput-boolean v12, v7, Lcom/android/systemui/qs/QSTileHost;->mIsQQSosUpdating:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lcom/android/systemui/qs/QSTileHost;->mHiddenTilesByKnoxInTopBottomBar:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lcom/android/systemui/qs/QSTileHost;->mSearchables:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/systemui/qs/QSTileHost;->mTilesListDirty:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v7, Lcom/android/systemui/qs/QSTileHost;->mTileUsingByBar:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v7, Lcom/android/systemui/qs/QSTileHost;->mTileUsingByPanel:Ljava/lang/Object;

    new-instance v13, Lcom/android/systemui/qs/QSTileHost$1;

    invoke-direct {v13, v7}, Lcom/android/systemui/qs/QSTileHost$1;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    new-instance v3, Lcom/android/systemui/qs/QSTileHost$3;

    invoke-direct {v3, v7}, Lcom/android/systemui/qs/QSTileHost$3;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    iput-object v3, v7, Lcom/android/systemui/qs/QSTileHost;->mKnoxStateCallback:Lcom/android/systemui/qs/QSTileHost$3;

    iput-object v8, v7, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iput-object v8, v7, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    move-object/from16 v3, p6

    iput-object v3, v7, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    iput-object v10, v7, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iput-object v9, v7, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p14

    iput-object v3, v7, Lcom/android/systemui/qs/QSTileHost;->mUserFileManager:Lcom/android/systemui/settings/UserFileManager;

    move-object/from16 v3, p15

    iput-object v3, v7, Lcom/android/systemui/qs/QSTileHost;->mFeatureFlags:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;

    move-object/from16 v4, p8

    iput-object v4, v7, Lcom/android/systemui/qs/QSTileHost;->mShadeControllerProvider:Ldagger/Lazy;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->qsNewTiles()V

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v0, v7, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iput-object v11, v7, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v14, v11

    check-cast v14, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v14}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    move-object/from16 v0, p11

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v0, p12

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    const-string/jumbo v1, "user"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, v7, Lcom/android/systemui/qs/QSTileHost;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "QSTileHost"

    const-string v1, "OPS not initialized for non-primary user, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTopBarTileList(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13105a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getBottomBarTileList(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/qs/QSTileHost;->mBottomBarTileList:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getSmartViewBarTileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mSmartViewBarTileList:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/SecQSTileInstanceManager;

    invoke-direct {v0, v8, v7, v11, v10}, Lcom/android/systemui/qs/SecQSTileInstanceManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/logging/QSLogger;)V

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    new-instance v15, Lcom/android/systemui/qs/SecQQSTileHost;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p10

    move-object/from16 v4, p16

    move-object/from16 v5, p4

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/SecQQSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/BootAnimationFinishedCache;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/logging/QSLogger;)V

    iput-object v15, v7, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    sget-boolean v0, Lcom/android/systemui/ScRune;->QUICK_MANAGE_SUBSCREEN_TILE_LIST:Z

    if-eqz v0, :cond_1

    new-instance v15, Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p10

    move-object/from16 v4, p16

    move-object/from16 v5, p4

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/SecSubScreenQSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/BootAnimationFinishedCache;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/logging/QSLogger;)V

    iput-object v15, v7, Lcom/android/systemui/qs/QSTileHost;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    :cond_1
    new-instance v0, Lcom/android/systemui/qs/SecLockscreenTileHost;

    move-object/from16 p8, v0

    move-object/from16 p9, p1

    move-object/from16 p10, p0

    move-object/from16 p11, v14

    move-object/from16 p12, p4

    move-object/from16 p13, p17

    invoke-direct/range {p8 .. p13}, Lcom/android/systemui/qs/SecLockscreenTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mLockscreentTileHost:Lcom/android/systemui/qs/SecLockscreenTileHost;

    sget-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;

    invoke-direct {v0, v8}, Lcom/android/systemui/qs/QSTileHost$TilesMap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    :cond_2
    sget-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mTilesMap:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    const-string v0, "quick_pref"

    invoke-virtual {v8, v0, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/qs/QSTileHost;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;

    move-object/from16 v1, p7

    invoke-direct {v0, v7, v9, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/util/concurrent/Executor;Ljavax/inject/Provider;)V

    move-object/from16 v1, p16

    check-cast v1, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {v0, v13}, Lcom/android/systemui/util/QsResetSettingsManager;->registerApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V

    new-instance v0, Lcom/android/systemui/qs/QSTileHost$2;

    invoke-direct {v0, v7}, Lcom/android/systemui/qs/QSTileHost$2;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v2, "TileList"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addTile(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addTile(Landroid/content/ComponentName;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final addTile(Landroid/content/ComponentName;Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(ILjava/lang/String;)V

    return-void
.end method

.method public final changeOldOSTileListToNewOsTileList(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFIHOTSPOT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Hotspot"

    goto/16 :goto_3

    :cond_0
    const-string v1, "AUTOROTATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "RotationLock"

    goto/16 :goto_3

    :cond_1
    const-string v1, "TORCHLIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Flashlight"

    goto/16 :goto_3

    :cond_2
    const-string v1, "SILENTMODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "SOUNDMODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v1, "DND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "DORMANTMODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v1, "WORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "WorkMode"

    goto/16 :goto_3

    :cond_5
    const-string v1, "NIGHTMODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "NightMode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    const-string p0, "com.samsung.accessibility/.vision.viewclear.extradim.ReduceBrightnessTileService"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p1, "ReduceBrightColors"

    goto :goto_3

    :cond_7
    const-string p0, "com.samsung.accessibility/.vision.viewclear.HighContrastFontTileService"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p1, "HighContrastFont"

    goto :goto_3

    :cond_8
    const-string p0, "com.samsung.accessibility/.vision.viewclear.ColorInversionTileService"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p1, "ColorInversion"

    goto :goto_3

    :cond_9
    const-string p0, "com.samsung.accessibility/.vision.color.ColorLensTileService"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p1, "ColorLens"

    goto :goto_3

    :cond_a
    const-string p0, "com.samsung.accessibility/.vision.color.ColorAdjustmentTileService"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p1, "ColorAdjustment"

    goto :goto_3

    :cond_b
    const-string p0, "com.samsung.accessibility/.vision.color.AccessibilityColorCorrectionTileService"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p1, "ColorCorrection"

    goto :goto_3

    :cond_c
    const-string p0, "com.samsung.android.bixby.interpreter/.interpretation.view.InterpreterQuickTileService"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p1, "custom(com.samsung.android.app.interpreter/.interpretation.view.InterpreterQuickTileService)"

    goto :goto_3

    :cond_d
    :goto_0
    const-string p1, "UiModeNight"

    goto :goto_3

    :cond_e
    :goto_1
    const-string p1, "Dnd"

    goto :goto_3

    :cond_f
    :goto_2
    const-string p1, "SoundMode"

    :cond_10
    :goto_3
    return-object p1
.end method

.method public final changeTileSpecs(Ljava/util/function/Predicate;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesListDirty:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v3, "sysui_qs_tiles"

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesListDirty:Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "empty"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->saveTilesToSettings(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final changeTilesByUser(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "custom("

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTileHost;->mTileIsRemovedByApi:Z

    if-eqz v4, :cond_1

    const-string v4, "WifiCalling"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileIsRemovedByApi:Z

    goto :goto_1

    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mTileUsingByPanel:Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->requestTileUsing(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Lcom/android/systemui/qs/external/CustomTile;

    iget-object v4, v4, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object v4, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    iget-object v5, v4, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v6, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda0;

    const/4 v7, 0x3

    invoke-direct {v6, v4, v7}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v3}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/external/TileServiceKey;

    iget v5, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/qs/external/TileServiceKey;-><init>(Landroid/content/ComponentName;I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    check-cast v5, Lcom/android/systemui/qs/external/CustomTileStatePersisterImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/external/CustomTileStatePersisterImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v4, v4, Lcom/android/systemui/qs/external/TileServiceKey;->string:Ljava/lang/String;

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v4, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    invoke-virtual {p0, v3, v1, v4}, Lcom/android/systemui/qs/QSTileHost;->setTileAdded(Landroid/content/ComponentName;ZI)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "empty"

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "saveCurrentTiles "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSTileHost"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesListDirty:Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSTileHost;->saveTilesToSettings(Ljava/util/List;)V

    return-void
.end method

.method public final collapsePanels()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mShadeControllerProvider:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->postAnimateCollapseShade()V

    return-void
.end method

.method public final createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "QSTileHost:"

    const-string/jumbo v1, "tile specs: "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current user: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    const-string v2, "is dirty: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesListDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "tiles:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/qs/SecAutoTileManager;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mRemovedTileListByAppIntent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object v1, v1, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mBnRTileList : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mBnRTileList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mBnRRemovedTileList : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mBnRRemovedTileList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mSearchables : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mSearchables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SecQQSTileHost:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mBnRQQSTileList : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/qs/SecQQSTileHost;->mBnRQQSTileList:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "  mTileUsingByQQS : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileUsingByQQS:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mTileUsingByBar : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileUsingByBar:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mTileUsingByPanel : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileUsingByPanel:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mLockscreentTileHost:Lcom/android/systemui/qs/SecLockscreenTileHost;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "LockscreenTileHost:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/systemui/qs/SecLockscreenTileHost;->obj:Ljava/lang/Object;

    const-string v0, "  mTileUsingByLock : "

    invoke-static {v0, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "SecQSTileInstanceManager:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mTileInstances : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mTileUsingHosts : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpProto(Lcom/android/systemui/dump/nano/SystemUIProtoDump;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/qs/nano/QsTileState;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/qs/nano/QsTileState;

    iput-object p0, p1, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    return-void
.end method

.method public final forceCollapsePanels()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mShadeControllerProvider:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->postAnimateForceCollapseShade()V

    return-void
.end method

.method public final getBarTilesByType(II)Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/systemui/qs/QSTileHost;->mHiddenTilesByKnoxInTopBottomBar:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "QSTileHost"

    const/4 v6, 0x3

    const/4 v7, 0x2

    iget-object v8, v0, Lcom/android/systemui/qs/QSTileHost;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    const-string v10, ","

    const/4 v11, 0x1

    const-string v12, ""

    if-nez v4, :cond_e

    if-eqz v2, :cond_6

    if-ne v2, v7, :cond_0

    goto :goto_2

    :cond_0
    if-ne v2, v11, :cond_3

    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move-object v11, v12

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_2

    aget-object v13, v1, v8

    iget-object v14, v0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v11, v13, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v12

    const/4 v4, 0x0

    move-object v12, v11

    goto/16 :goto_a

    :cond_3
    if-ne v2, v6, :cond_5

    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getSmartViewBarTileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move-object v11, v12

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_2

    aget-object v13, v1, v8

    iget-object v14, v0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v11, v13, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move-object v1, v12

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_6
    :goto_2
    iget-object v4, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v13, v8, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v13}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v13

    invoke-virtual {v13, v1, v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTopBarTileList(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v8, v8, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v8}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v8

    invoke-virtual {v8, v1, v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getBottomBarTileList(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mBottomBarTileList:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move-object v13, v12

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v8, v4, :cond_8

    aget-object v15, v1, v8

    iget-object v6, v0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v13, v15, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v14, 0x1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x3

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mBottomBarTileList:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move-object v15, v12

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v6, v4, :cond_a

    aget-object v7, v1, v6

    iget-object v9, v0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v15, v7, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v8, v8, 0x1

    :cond_9
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    goto :goto_4

    :cond_a
    if-ne v14, v11, :cond_b

    if-lez v8, :cond_b

    invoke-virtual {v15, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-lez v4, :cond_b

    const/4 v4, 0x0

    aget-object v1, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getBarTilesByType tileName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bottomBarList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v13, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "getBarTilesByType after bottomBarList="

    invoke-static {v1, v15, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    if-nez v2, :cond_c

    const/4 v6, 0x2

    goto :goto_6

    :cond_c
    const/4 v6, 0x2

    if-ne v2, v6, :cond_d

    move-object v13, v15

    goto :goto_6

    :cond_d
    move-object v13, v12

    :goto_6
    move-object v1, v12

    move-object v12, v13

    goto/16 :goto_a

    :cond_e
    move v6, v7

    const/4 v4, 0x0

    if-eqz v2, :cond_16

    if-eq v2, v11, :cond_15

    if-eq v2, v6, :cond_14

    const/4 v6, 0x3

    if-eq v2, v6, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getSmartViewBarTileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    move v7, v4

    move-object v8, v12

    :goto_7
    if-ge v7, v6, :cond_13

    aget-object v9, v1, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_8

    :cond_10
    iget-object v11, v0, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    iget-object v11, v0, Lcom/android/systemui/qs/QSTileHost;->mBottomBarTileList:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_9

    :cond_11
    invoke-static {v8, v9, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_12
    :goto_9
    move-object v8, v12

    :cond_13
    move-object v1, v12

    move-object v12, v8

    goto :goto_a

    :cond_14
    iget-object v6, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v7, v8, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v7}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getBottomBarTileList(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getSmartViewBarTileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_15
    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    move-object/from16 v16, v12

    move-object v12, v1

    move-object/from16 v1, v16

    goto :goto_a

    :cond_16
    iget-object v6, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v7, v8, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v7}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTopBarTileList(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getSmartViewBarTileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v4

    move v11, v9

    :goto_b
    if-ge v9, v8, :cond_19

    aget-object v12, v7, v9

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {v0, v12}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_18

    invoke-virtual {v0, v12}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_18

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_18
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_19
    if-lez v11, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    move v9, v4

    :goto_d
    if-ge v9, v7, :cond_1c

    aget-object v8, v1, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    if-ne v11, v4, :cond_1b

    goto :goto_f

    :cond_1b
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_1c
    :goto_f
    if-eqz v2, :cond_1f

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1e

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-interface {v6}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mSmartViewBarTileList:Ljava/lang/String;

    goto :goto_10

    :cond_1e
    invoke-interface {v6}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mBottomBarTileList:Ljava/lang/String;

    goto :goto_10

    :cond_1f
    invoke-interface {v6}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    :goto_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_11

    :cond_21
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_12

    :cond_22
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_12
    iget-object v6, v0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile;

    if-nez v6, :cond_23

    iget-object v6, v0, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    iget-object v7, v0, Lcom/android/systemui/qs/QSTileHost;->mTileUsingByBar:Ljava/lang/Object;

    invoke-virtual {v6, v7, v4}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->requestTileUsing(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v6

    :cond_23
    if-eqz v6, :cond_20

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_24
    const-string v0, "getBarTilesByType type="

    const-string v1, ", tiles.size ="

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileNameTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->makeCustomTileNameTable()V

    :cond_0
    const-string v0, "com.sec.android.app.wfdbroker/.AllShareCastTile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "AllShareCast"

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileNameTable:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "com.samsung.android.sm_cn"

    sget-object v0, Lcom/android/systemui/Operator;->smartManagerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "BatteryModeCHN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "BatteryMode"

    goto :goto_0

    :cond_2
    const-string p1, "PowerShareCHN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "PowerShare"

    :cond_3
    :goto_0
    return-object p0
.end method

.method public final getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mComponentNameTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->makeCustomTileComponentNameTable()V

    :cond_0
    const-string v0, "com.samsung.android.sm_cn"

    sget-object v1, Lcom/android/systemui/Operator;->smartManagerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BatteryMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BatteryModeCHN"

    goto :goto_0

    :cond_1
    const-string v0, "PowerShare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "PowerShareCHN"

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mComponentNameTable:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string p1, "custom("

    const-string v0, ")"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDefaultTileList()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getSupportedAllTileList()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileHost;->isBarTile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getDefaultTileList result : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QSTileHost"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    return-object p0
.end method

.method public final getSpecs()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getSupportedAllTileList()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1310df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    const-string v2, "mdc.singlesku"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "mdc.unified"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    const-string v3, "CarrierFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v2, v4, v3, v1, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileListToNewOsTileList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f130ea1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v5, p0

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_5

    :cond_1
    const-string v8, "Bluetooth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "SoundMode"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v2, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const-string v8, "Dnd"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f130e9f

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v1, v4

    :goto_6
    const-string v5, "QSTileHost"

    if-ge v1, v0, :cond_b

    aget-object v6, p0, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_9

    :cond_6
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_9

    :cond_7
    const-string v7, "CameraSharing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_9

    :cond_8
    if-ltz v6, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    :cond_a
    :goto_7
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    const-string v7, "getSupportedAllTileList : tileName = "

    const-string v9, ", tileIndex = "

    invoke-static {v6, v7, v8, v9, v5}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getSupportedAllTileList result : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTiles()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getUserContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getUserId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    return p0
.end method

.method public final indexOf(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final initTunerServiceAndAutoTile(Ljavax/inject/Provider;)V
    .locals 2

    const-string/jumbo v0, "sysui_qs_tiles"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecAutoTileManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/qs/SecAutoTileManager;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxStateCallback:Lcom/android/systemui/qs/QSTileHost$3;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost$3;->onUpdateQuickPanelButtons()V

    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getQuickPanelItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getQuickPanelUnavailableButtons()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxUnavailableQsTileList:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "QSTileHost : mKnoxBlockedQsTileList = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mKnoxUnavailableQsTileList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxUnavailableQsTileList:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSTileHost"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mComponentNameTable:Ljava/util/HashMap;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->makeCustomTileComponentNameTable()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->updateHiddenBarTilesListByKnox()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    :cond_1
    return-void
.end method

.method public final isAvailableCustomTile(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "Dolby"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    const-string v2, "QSTileHost"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_DOLBY_AUDIO"

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    if-eqz p0, :cond_25

    :cond_0
    const-string p0, "isAvailableCustomTile : DolbyTile is removed "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string v0, "Aod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, ""

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "aodversion"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_25

    const-string p0, "isAvailableCustomTile : AodTile is removed "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    const-string v0, "AllShareCast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-string p1, "display"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semCheckScreenSharingSupported()I

    move-result p0

    if-eq p0, v3, :cond_25

    if-eqz p0, :cond_25

    const-string p0, "isAvailableCustomTile : AllShareCastTile is removed "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const-string v0, "Nfc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.nfc"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_25

    const-string p0, "isAvailableCustomTile : NfcTile is removed "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const-string v0, "SecureFolder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-string p1, "persona"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result p0

    if-eqz p0, :cond_5

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_0
    return v3

    :cond_6
    return v4

    :cond_7
    const-string v0, "Sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserManager:Landroid/os/UserManager;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "isAvailableCustomTile : Sync is removed "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_8
    const-string v0, "BikeMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_9
    const-string v0, "DailyBoard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    invoke-virtual {p1, v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    const-string p1, "com.samsung.android.homemode"

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    move v3, v4

    :goto_1
    return v3

    :cond_c
    const-string v0, "BatteryMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v1, "com.samsung.android.lool"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_d
    const-string v0, "WifiCalling"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :cond_e
    const-string v0, "SpenRemote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupportUnbundledBleSPen()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_2

    :cond_f
    move v3, v4

    :cond_10
    :goto_2
    return v3

    :cond_11
    const-string v0, "PowerShare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_TX"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_12
    const-string v0, "PowerKeySetting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_BIXBY_CONFIG_HWKEY"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    const-string p1, "pwrkey"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    :cond_13
    return v4

    :cond_14
    const-string v0, "QRScanner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_QRCODE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "com.sec.android.app.camera"

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_3

    :cond_15
    move v3, v4

    :goto_3
    return v3

    :cond_16
    const-string v0, "ScreenRecorder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_SCREEN_RECORDER"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_17
    const-string v0, "InstantSession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_6

    :cond_18
    const-string v0, "Routines"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "com.samsung.android.app.routines"

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_19
    const-string v0, "KidsHome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p1, "com.samsung.android.kidsinstaller"

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1a
    const-string v0, "SecondScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v4

    :cond_1b
    const-string v0, "TurnOn5g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupport5G()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    move-result p0

    if-nez p0, :cond_1c

    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    if-nez p0, :cond_1c

    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    if-eqz p0, :cond_1d

    :cond_1c
    move v3, v4

    :cond_1d
    return v3

    :cond_1e
    const-string v0, "VoLte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1f
    const-string v0, "HomeHub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_20
    const-string v0, "NearbyShare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const p1, 0x24a54

    if-ge p0, p1, :cond_21

    goto :goto_4

    :cond_21
    move v3, v4

    :goto_4
    return v3

    :cond_22
    const-string v0, "Translator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "com.samsung.android.app.interpreter"

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_5

    :cond_23
    move v3, v4

    :goto_5
    return v3

    :cond_24
    const-string v0, "NearByDevice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const-string p1, "com.samsung.android.mydevice"

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_25
    :goto_6
    return v3
.end method

.method public final isAvailableForSearch(Ljava/lang/String;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mSearchAllowTileList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mSearchAllowTileList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f130f3a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mSearchAllowTileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mSearchAllowTileList:Ljava/util/ArrayList;

    const-string v2, "custom("

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    if-eqz p2, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method public final isBarTile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "custom("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mBottomBarTileList:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mSmartViewBarTileList:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final isBrightnessVolumeBarTile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4

    const-string v0, "Can\'t find component "

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    sget-boolean v2, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v2, :cond_0

    if-nez p0, :cond_0

    const-string v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method public final isDefaultCustomTile(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f130ed3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isLargeBarTile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mBottomBarTileList:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mSmartViewBarTileList:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isNoBgLargeTile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const v0, 0x7f1310a8    # 1.95483E38f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPackageAvailable(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v1, p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-boolean v1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    const-string v2, "Package not available: "

    const-string v3, "QSTileHost"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public final isRemovedTile(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const-string/jumbo v1, "sysui_removed_qs_tiles"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isSystemTile(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->isSystemTile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isTileAdded(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string/jumbo v0, "tiles_prefs"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isUnsupportedTile(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f130f50

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "isUnsupportedTile "

    const-string v0, "QSTileHost"

    invoke-static {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/DeviceState;->isFotaUpdate(Landroid/content/Context;)Z

    move-result v2

    const-string v3, ","

    sget-boolean v4, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    const-string v5, "QSTileHost"

    if-eqz v1, :cond_c

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    if-nez v2, :cond_c

    iget-boolean v8, v0, Lcom/android/systemui/qs/QSTileHost;->mIsRestoring:Z

    if-eqz v8, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v4, :cond_1

    const-string v2, "Loaded tile specs from setting: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_8

    aget-object v8, v1, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/QSTileHost;->isBarTile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/qs/QSHost;->getDefaultSpecs(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    const-string v0, "internet"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "wifi"

    const-string v4, "cell"

    if-nez v1, :cond_a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    return-object v2

    :cond_c
    :goto_4
    if-nez v2, :cond_e

    iget-boolean v8, v0, Lcom/android/systemui/qs/QSTileHost;->mIsRestoring:Z

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v8, 0x1

    :goto_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v12, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v12}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v13

    const-string/jumbo v14, "sysui_removed_qs_tiles"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileListToNewOsTileList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileListToNewOsTileList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v13, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v15

    invoke-static {v13, v14, v11, v15}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz v4, :cond_f

    const-string v4, "Loaded tile specs from csc: "

    invoke-static {v4, v10, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v4, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "custom("

    if-eqz v11, :cond_10

    const/4 v9, 0x0

    :goto_7
    const/4 v1, 0x0

    goto/16 :goto_14

    :cond_10
    if-eqz v8, :cond_1f

    if-eqz v1, :cond_14

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSTileHost;->makeCustomTileNameTable()V

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v14, v1

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v14, :cond_13

    aget-object v6, v1, v15

    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-static {v6}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v0, v6}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_11
    if-eqz v6, :cond_12

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_13
    invoke-static {v3, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    const-string v6, "getRecalculatedTileListForFota "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_15

    goto/16 :goto_10

    :cond_15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v11, v1

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v11, :cond_19

    aget-object v15, v1, v14

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {v0, v15}, Lcom/android/systemui/qs/QSTileHost;->isUnsupportedTile(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v0, v15}, Lcom/android/systemui/qs/QSTileHost;->isBarTile(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    goto :goto_a

    :cond_18
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "oldLists : "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v10, v1

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v10, :cond_1b

    aget-object v14, v1, v11

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "newLists : "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_1e

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, v10, :cond_1c

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " add : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11, v5}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    move-object v10, v4

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1f

    invoke-static {v10}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v4, v7, v3}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "loadTileSpecsFromCscFeature : loadedTileList = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSTileHost;->makeCustomTileComponentNameTable()V

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v4, :cond_27

    aget-object v7, v1, v6

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/QSTileHost;->isBarTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    goto :goto_13

    :cond_20
    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/QSTileHost;->isRemovedTile(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_26

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_21
    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_24

    iget v7, v0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-static {v10}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/QSTileHost;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_22

    goto :goto_13

    :cond_22
    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/QSTileHost;->isRemovedTile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_26

    iget-object v7, v0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/qs/SecAutoTileManager;

    if-eqz v7, :cond_23

    invoke-virtual {v7, v10}, Lcom/android/systemui/qs/SecAutoTileManager;->isRemovedTileByAppIntent(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_26

    :cond_23
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_24
    if-eqz v8, :cond_26

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-static {v7}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    goto :goto_12

    :cond_25
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_26

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "loadTileSpecsFromCscFeature : tiles = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v3, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    const-string/jumbo v6, "sysui_qs_tiles"

    invoke-static {v1, v6, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :goto_14
    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTileHost;->mIsRestoring:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, v0, Lcom/android/systemui/qs/QSTileHost;->mIsQQSosUpdating:Z

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-string v3, "QsHasEditedQuickTileList"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_15

    :cond_28
    iget-object v2, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-string v3, "QQsHasEditedQuickTileList"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isQQSosUpdating="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/systemui/qs/QSTileHost;->mIsQQSosUpdating:Z

    const-string v4, " hasEdited="

    invoke-static {v1, v3, v4, v2, v5}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v1, 0x1

    xor-int/2addr v1, v2

    iget-object v2, v0, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    if-eqz v1, :cond_2a

    const-string v6, "Bluetooth"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const-string v6, "SoundMode"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v3, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_16

    :cond_2a
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2b
    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2c

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2c
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2d
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQQSTileHost;->changeTiles(Ljava/util/List;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTileHost;->mIsQQSosUpdating:Z

    :cond_2e
    return-object v9
.end method

.method public final makeCustomTileComponentNameTable()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130ed3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mComponentNameTable:Ljava/util/HashMap;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mComponentNameTable:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "make table : customTileName = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", componentName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QSTileHost"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final makeCustomTileNameTable()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130ed3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileNameTable:Ljava/util/HashMap;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mTileNameTable:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo p2, "sysui_qs_tiles"

    invoke-virtual {p1, p2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v0, "sysui_qs_tiles"

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v4, 0x1

    const-string/jumbo v0, "sysui_qs_tiles"

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TILES_SETTING changed  "

    const-string v5, "QSTileHost"

    invoke-static {v0, v2, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "empty"

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const-string v7, ","

    const-string v8, ""

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f130f4e

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v0, "include aospTiles "

    invoke-static {v0, v12, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_2
    add-int/2addr v11, v4

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v9

    iget v10, v1, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    iget-object v11, v1, Lcom/android/systemui/qs/QSTileHost;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    iget-object v12, v1, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    iget-object v13, v1, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    if-eq v9, v10, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    iget v0, v13, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mUserId:I

    if-ne v0, v9, :cond_4

    goto :goto_3

    :cond_4
    iput v9, v13, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "onUserChanged to "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "SecQSTileInstanceManager"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v10, v13, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v14, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;

    invoke-direct {v14, v13, v0, v9}, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQSTileInstanceManager;Landroid/util/ArrayMap;I)V

    invoke-interface {v10, v14}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v10, v14, :cond_5

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v15

    new-instance v3, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v13, v14}, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSTileInstanceManager;Ljava/lang/String;)V

    invoke-interface {v15, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    add-int/2addr v10, v4

    goto :goto_2

    :cond_5
    :goto_3
    iput-boolean v4, v12, Lcom/android/systemui/qs/SecQQSTileHost;->mQSUserChanged:Z

    iget-object v0, v12, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v12, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    const-string/jumbo v10, "sysui_quick_qs_tiles"

    invoke-static {v0, v10, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Lcom/android/systemui/qs/SecQQSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/ScRune;->QUICK_MANAGE_SUBSCREEN_TILE_LIST:Z

    if-eqz v0, :cond_6

    iput-boolean v4, v11, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mQSUserChanged:Z

    iget-object v0, v11, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v11, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    const-string/jumbo v10, "sysui_sub_qs_tiles"

    invoke-static {v0, v10, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/qs/SecAutoTileManager;

    if-eqz v0, :cond_7

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    :cond_7
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iget-object v3, v1, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    if-nez v9, :cond_8

    move v10, v4

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    const-string v14, "com.android.systemui"

    const-string v15, "com.android.systemui.indexsearch.SystemUIIndexProvider"

    invoke-direct {v3, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_9

    move v10, v4

    goto :goto_5

    :cond_9
    const/4 v10, 0x2

    :goto_5
    invoke-virtual {v0, v3, v10, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_a
    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mFeatureFlags:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->qsNewPipeline()V

    sget-object v0, Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;->Utils:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository$Utils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->qsNewPipeline()V

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-ne v9, v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Recreating tiles: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v10, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;

    const/4 v14, 0x0

    invoke-direct {v10, v3, v14}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v10, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda6;

    invoke-direct {v10, v1, v14}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/QSTileHost;I)V

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v4, v1, Lcom/android/systemui/qs/QSTileHost;->mTileUsingByPanel:Ljava/lang/Object;

    move-object/from16 p1, v14

    iget-object v14, v1, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    move-object/from16 v16, v11

    if-eqz v0, :cond_f

    instance-of v11, v0, Lcom/android/systemui/qs/external/CustomTile;

    move-object/from16 v17, v12

    if-eqz v11, :cond_c

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/qs/external/CustomTile;

    iget v12, v12, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    if-ne v12, v9, :cond_10

    :cond_c
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "Adding "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    if-nez v11, :cond_d

    iget v4, v1, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-eq v4, v9, :cond_d

    invoke-interface {v0, v9}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    :cond_d
    invoke-virtual {v10, v15, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/logging/QSLogger;->logTileAdded(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Destroying not available tile: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Tile not available"

    invoke-virtual {v14, v15, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move-object/from16 v17, v12

    :cond_10
    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Destroying tile for wrong user: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Tile for wrong user"

    invoke-virtual {v14, v15, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v0, "Creating tile: "

    invoke-static {v0, v15, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v13, v4, v15}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->requestTileUsing(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v10, v15, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "Error creating tile for spec: "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_7
    move-object/from16 v14, p1

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_13
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    iput v9, v1, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v1, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v1, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v1, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v4, v1, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v10}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    if-nez v6, :cond_14

    const-string v2, "No valid tiles on tuning changed. Setting to default."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    goto :goto_9

    :cond_14
    if-nez v6, :cond_15

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSTileHost;->saveTilesToSettings(Ljava/util/List;)V

    :cond_15
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTileHost;->mTilesListDirty:Z

    const/4 v14, 0x0

    :goto_8
    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_16

    iget-object v0, v1, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    const/4 v2, 0x1

    add-int/2addr v14, v2

    goto :goto_8

    :cond_16
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/SecQQSTileHost;->onTilesChanged()V

    sget-boolean v0, Lcom/android/systemui/ScRune;->QUICK_MANAGE_SUBSCREEN_TILE_LIST:Z

    if-eqz v0, :cond_17

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->onTilesChanged()V

    :cond_17
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda13;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/qs/QSTileHost;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSTileHost;->updateSearchableTiles()V

    return-void
.end method

.method public final refreshTileList()V
    .locals 15

    const-string v0, "refreshTileList"

    const-string v1, "QSTileHost"

    sget-boolean v2, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/qs/SecAutoTileManager;

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    const-string/jumbo v6, "sysui_qs_tiles"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/QSTileHost;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "Error creating tile for spec: "

    const-string v9, "Creating tile: "

    const-string v10, "Adding "

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v12, p0, Lcom/android/systemui/qs/QSTileHost;->mTileUsingByPanel:Ljava/lang/Object;

    iget-object v13, p0, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    if-eqz v11, :cond_6

    instance-of v14, v11, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v14, :cond_3

    move-object v14, v11

    check-cast v14, Lcom/android/systemui/qs/external/CustomTile;

    iget v14, v14, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    if-ne v14, v4, :cond_6

    :cond_3
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    invoke-virtual {v5, v7, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v12, v7}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v9, v7, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :try_start_0
    invoke-virtual {v13, v12, v7}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->requestTileUsing(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9, v7}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v5, v7, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v9

    goto :goto_1

    :cond_8
    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v12, v9}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    sget-boolean v1, Lcom/android/systemui/qs/SecQQSTileHost;->DEBUG:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    const-string v3, "SecQQSTileHost"

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    const-string/jumbo v6, "sysui_quick_qs_tiles"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v0}, Lcom/android/systemui/qs/SecQQSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loaded tiles :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    iget-object v5, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda4;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda5;

    invoke-direct {v6, v2, v7}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v11, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v12, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTileUsingByQQS:Ljava/lang/Object;

    iget-object v13, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    if-eqz v11, :cond_f

    instance-of v14, v11, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v14, :cond_c

    move-object v14, v11

    check-cast v14, Lcom/android/systemui/qs/external/CustomTile;

    iget v14, v14, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    if-ne v14, v4, :cond_f

    :cond_c
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v14

    if-eqz v14, :cond_e

    if-eqz v1, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    invoke-virtual {v5, v7, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_e
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v12, v11}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v12, "Tile not available at QQS"

    invoke-virtual {v11, v7, v12}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Destroying not available tile: "

    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_f
    invoke-static {v9, v7, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v13, v12, v7}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->requestTileUsing(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-interface {v11, v7}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v5, v7, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception v11

    goto :goto_3

    :cond_10
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v12, v11}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_11
    iput v4, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mCurrentUser:I

    iget-object v1, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/android/systemui/qs/SecQQSTileHost;->onTilesChanged()V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->updateSearchableTiles()V

    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTile(Ljava/lang/String;)V
    .locals 3

    const-string v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/qs/QSTileHost;->setTileAdded(Landroid/content/ComponentName;ZI)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeTileByUser(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda12;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeTiles(Ljava/util/Collection;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda12;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resetTileList()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    const-string/jumbo v3, "sysui_removed_qs_tiles"

    const-string v4, ""

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    const-string/jumbo v2, "sysui_quick_qs_tiles"

    invoke-static {v1, v2, v4, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/systemui/ScRune;->QUICK_MANAGE_SUBSCREEN_TILE_LIST:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const-string/jumbo v1, "sysui_sub_qs_tiles"

    invoke-static {v0, v1, v4, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final saveTilesToSettings(Ljava/util/List;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving tiles: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v6

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v2, "sysui_qs_tiles"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    return-void
.end method

.method public final sendTileStatusLog(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setTileAdded(Landroid/content/ComponentName;ZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string/jumbo v0, "tiles_prefs"

    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final shouldBeHiddenByKnox(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p0, "shouldBeHiddenByKnox : tileName = "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileHost"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final shouldUnavailableByKnox(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxUnavailableQsTileList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p0, "shouldUnavailableByKnox : tileName = "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileHost"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final updateHiddenBarTilesListByKnox()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mHiddenTilesByKnoxInTopBottomBar:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTopBarTileList:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost;->mHiddenTilesByKnoxInTopBottomBar:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mBottomBarTileList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost;->mHiddenTilesByKnoxInTopBottomBar:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v2, v0, v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mHiddenTilesByKnoxInTopBottomBar:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mSmartViewBarTileList:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mHiddenTilesByKnoxInTopBottomBar:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mSmartViewBarTileList:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final updateSearchableTiles()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
