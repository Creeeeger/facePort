.class public final Landroid/app/ActivityThread;
.super Landroid/app/ClientTransactionHandler;
.source "ActivityThread.java"

# interfaces
.implements Landroid/app/ActivityThreadInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$AndroidOs;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$PurgeIdler;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$WebviewRunnable;,
        Landroid/app/ActivityThread$SafeCancellationTransport;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpResourcesData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ProviderKey;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final blacklist CONTENT_PROVIDER_RETAIN_TIME:J = 0x3e8L

.field private static final greylist-max-o DEBUG_BACKUP:Z = false

.field public static final greylist-max-o DEBUG_BROADCAST:Z = false

.field public static final greylist-max-o DEBUG_CONFIGURATION:Z = false

.field static final blacklist DEBUG_LEVEL:Ljava/lang/String;

.field static final blacklist DEBUG_LEVEL_HIGH:Z

.field static final blacklist DEBUG_LEVEL_LOW:Z

.field static final blacklist DEBUG_LEVEL_MID:Z

.field public static final greylist-max-o DEBUG_MEMORY_TRIM:Z = false

.field static final greylist-max-o DEBUG_MESSAGES:Z = false

.field public static final greylist-max-o DEBUG_ORDER:Z = false

.field private static final greylist-max-o DEBUG_PROVIDER:Z = false

.field private static final greylist-max-o DEBUG_RESULTS:Z = false

.field private static final greylist-max-o DEBUG_SERVICE:Z = false

.field private static final blacklist DEFAULT_FULL_BACKUP_AGENT:Ljava/lang/String; = "android.app.backup.FullBackupAgent"

.field private static final greylist-max-o HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final greylist-max-o HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field public static final greylist-max-o INVALID_PROC_STATE_SEQ:J = -0x1L

.field private static final greylist-max-o MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final blacklist ONE_ALT_COUNT_COLUMN:Ljava/lang/String; = "%21s %8s %21s %8d"

.field private static final greylist-max-o ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field public static final greylist-max-o PROC_START_SEQ_IDENT:Ljava/lang/String; = "seq="

.field private static final blacklist REQUEST_DIRECT_ACTIONS_RETRY_MAX_COUNT:I = 0x7

.field private static final blacklist REQUEST_DIRECT_ACTIONS_RETRY_TIME_MS:J = 0xc8L

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final greylist-max-o SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final greylist-max-o TAG:Ljava/lang/String; = "ActivityThread"

.field private static final blacklist THREE_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8s %21s %8d"

.field private static final blacklist THRESHOLD_FOR_HEAPDUMP:D = 0.96

.field private static final greylist-max-o THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final greylist-max-o TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final blacklist TWO_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s %21s %8s"

.field private static final blacklist VM_PROCESS_STATE_JANK_IMPERCEPTIBLE:I = 0x1

.field private static final blacklist VM_PROCESS_STATE_JANK_PERCEPTIBLE:I = 0x0

.field static final greylist-max-o localLOGV:Z = false

.field private static blacklist mIsAnomalyDetected:Z

.field private static volatile greylist sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final greylist-max-o sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sDisableAID:Z

.field private static blacklist sFixedAppContextDisplay:Z

.field static volatile greylist-max-p sMainThreadHandler:Landroid/os/Handler;

.field static volatile greylist sPackageManager:Landroid/content/pm/IPackageManager;

.field private static volatile blacklist sPermissionManager:Landroid/permission/IPermissionManager;

.field private static blacklist sProcessDisplayId:I

.field private static final blacklist sThemeSync:Ljava/lang/Object;


# instance fields
.field private blacklist idsController:Landroid/app/IdsController;

.field private blacklist mAbnormalUsage:Landroid/app/AbnormalUsage;

.field private blacklist mActiveRotationAdjustments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/DisplayAdjustments;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final greylist mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mActivitiesToBeDestroyed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private final blacklist mBackupAgentsByUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field greylist-max-r mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mConfigurationController:Landroid/app/ConfigurationController;

.field private blacklist mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

.field greylist-max-o mCoreSettings:Landroid/os/Bundle;

.field private final blacklist mCoreSettingsLock:Ljava/lang/Object;

.field greylist-max-r mCurDefaultDisplayDpi:I

.field greylist mDensityCompatMode:Z

.field private blacklist mDisplaySystemUiContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ContextImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDssScale:F

.field final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field final greylist-max-o mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field greylist-max-o mGcIdlerScheduled:Z

.field final blacklist mGetProviderKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderKey;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mH:Landroid/app/ActivityThread$H;

.field blacklist mHasImeComponent:Z

.field greylist-max-o mHiddenApiWarningShown:Z

.field greylist mInitialApplication:Landroid/app/Application;

.field greylist mInstrumentation:Landroid/app/Instrumentation;

.field greylist mInstrumentationAppDir:Ljava/lang/String;

.field greylist-max-o mInstrumentationLibDir:Ljava/lang/String;

.field greylist-max-o mInstrumentationPackageName:Ljava/lang/String;

.field greylist-max-o mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field greylist mInstrumentedAppDir:Ljava/lang/String;

.field greylist-max-o mInstrumentedLibDir:Ljava/lang/String;

.field greylist-max-o mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field blacklist mInstrumentingWithoutRestart:Z

.field greylist-max-o mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mLastProcessState:I

.field private final blacklist mLastReportedWindowingMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLastSessionId:I

.field final greylist-max-p mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mLooper:Landroid/os/Looper;

.field private final blacklist mMultiWindowCoreStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNetworkBlockSeq:J

.field private final greylist-max-o mNetworkPolicyLock:Ljava/lang/Object;

.field greylist-max-o mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field private final blacklist mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

.field greylist mNumVisibleActivities:I

.field final greylist-max-o mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final greylist mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-r mPendingConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mPendingOverrideConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingThreadConfig:Landroid/content/res/Configuration;

.field greylist-max-o mProfiler:Landroid/app/ActivityThread$Profiler;

.field final greylist mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

.field blacklist mPurgeIdlerScheduled:Z

.field final greylist-max-o mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCancellations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/ActivityThread$SafeCancellationTransport;",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mResourcePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-p mResourcesManager:Landroid/app/ResourcesManager;

.field final greylist mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mServicesData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$CreateServiceData;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSomeActivitiesChanged:Z

.field private blacklist mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

.field private greylist mSystemContext:Landroid/app/ContextImpl;

.field greylist-max-o mSystemThread:Z

.field blacklist mThemeAppIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

.field private blacklist mUpdateHttpProxyOnBind:Z

.field blacklist trackingHandler:Landroid/os/Handler;

.field final blacklist trackingThread:Landroid/os/HandlerThread;

.field public blacklist webviewPreloadState:I

.field public blacklist webviewPreloaded:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$ndFjmKeZ5VqdkKp_jop654cr0J0(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProfileSizeOfApp(Landroid/app/ActivityThread;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->getProfileSizeOfApp(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleFinishInstrumentationWithoutRestart()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpurgePendingResources(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread;->purgePendingResources()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msyncTransferSplashscreenViewTransaction(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/ActivityThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsFixedAppContextDisplay(Z)V
    .locals 0

    sput-boolean p0, Landroid/app/ActivityThread;->sFixedAppContextDisplay:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsProcessDisplayId(I)V
    .locals 0

    sput p0, Landroid/app/ActivityThread;->sProcessDisplayId:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 339
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 353
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityThread;->mIsAnomalyDetected:Z

    .line 362
    sput-boolean v0, Landroid/app/ActivityThread;->sDisableAID:Z

    .line 542
    const-string/jumbo v1, "ro.boot.debug_level"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->DEBUG_LEVEL:Ljava/lang/String;

    .line 543
    const-string v2, "0x4f4c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Landroid/app/ActivityThread;->DEBUG_LEVEL_LOW:Z

    .line 544
    const-string v2, "0x494d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Landroid/app/ActivityThread;->DEBUG_LEVEL_MID:Z

    .line 545
    const-string v2, "0x4948"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/app/ActivityThread;->DEBUG_LEVEL_HIGH:Z

    .line 549
    sput v0, Landroid/app/ActivityThread;->sProcessDisplayId:I

    .line 2762
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/ActivityThread;->sThemeSync:Ljava/lang/Object;

    .line 4802
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 9088
    sput-boolean v0, Landroid/app/ActivityThread;->sFixedAppContextDisplay:Z

    return-void
.end method

.method constructor greylist <init>()V
    .locals 5

    .line 3116
    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    .line 395
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    .line 405
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    .line 417
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread-IA;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 419
    nop

    .line 420
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 423
    iput-object v1, p0, Landroid/app/ActivityThread;->trackingHandler:Landroid/os/Handler;

    .line 424
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AppBinderTrackerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->trackingThread:Landroid/os/HandlerThread;

    .line 427
    new-instance v2, Landroid/app/ActivityThread$H;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 429
    new-instance v3, Landroid/os/HandlerExecutor;

    invoke-direct {v3, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    .line 437
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 440
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    .line 443
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 444
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    .line 447
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 449
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 451
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 452
    const/4 v3, -0x1

    iput v3, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 454
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 456
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    .line 457
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 471
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    .line 475
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 483
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    .line 490
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 491
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 493
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 494
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 498
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 500
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 501
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 502
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mHiddenApiWarningShown:Z

    .line 513
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 516
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 519
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 521
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 526
    new-instance v4, Landroid/app/servertransaction/TransactionExecutor;

    invoke-direct {v4, p0}, Landroid/app/servertransaction/TransactionExecutor;-><init>(Landroid/app/ClientTransactionHandler;)V

    iput-object v4, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    .line 538
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    .line 553
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mMultiWindowCoreStateListeners:Ljava/util/List;

    .line 559
    iput-object v1, p0, Landroid/app/ActivityThread;->idsController:Landroid/app/IdsController;

    .line 563
    new-instance v4, Landroid/app/AbnormalUsage;

    invoke-direct {v4}, Landroid/app/AbnormalUsage;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mAbnormalUsage:Landroid/app/AbnormalUsage;

    .line 596
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 599
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 602
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 605
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 612
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    .line 615
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 620
    new-instance v4, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v4, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 621
    new-instance v4, Landroid/app/ActivityThread$PurgeIdler;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$PurgeIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v4, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    .line 623
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 624
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 629
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 634
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    .line 636
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mHasImeComponent:Z

    .line 639
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/app/ActivityThread;->mDssScale:F

    .line 642
    iput-object v1, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 2249
    iput-boolean v2, p0, Landroid/app/ActivityThread;->webviewPreloaded:Z

    .line 2250
    iput v3, p0, Landroid/app/ActivityThread;->webviewPreloadState:I

    .line 2763
    iput-object v1, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    .line 9096
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingThreadConfig:Landroid/content/res/Configuration;

    .line 3118
    sget-boolean v1, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-eqz v1, :cond_0

    .line 3119
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3120
    new-instance v1, Landroid/app/ActivityThread$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/ActivityThread;->trackingHandler:Landroid/os/Handler;

    .line 3143
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3144
    return-void
.end method

.method private static blacklist addUcmKeyStoreProviderForAppContext()V
    .locals 2

    .line 9017
    const-string/jumbo v0, "security.ucmcrypto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9018
    return-void

    .line 9020
    :cond_0
    invoke-static {}, Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;->addUcmProvider()V

    .line 9021
    return-void
.end method

.method private greylist attach(ZJ)V
    .locals 4
    .param p1, "system"    # Z
    .param p2, "startSeq"    # J

    .line 8412
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 8413
    new-instance v0, Landroid/app/ConfigurationController;

    invoke-direct {v0, p0}, Landroid/app/ConfigurationController;-><init>(Landroid/app/ActivityThreadInternal;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 8414
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 8415
    if-nez p1, :cond_0

    .line 8416
    nop

    .line 8417
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 8416
    const-string v1, "<pre-initialized>"

    invoke-static {v1, v0}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 8418
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 8419
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 8421
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8424
    nop

    .line 8426
    new-instance v1, Landroid/app/ActivityThread$4;

    invoke-direct {v1, p0}, Landroid/app/ActivityThread$4;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 8447
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    goto :goto_0

    .line 8422
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .line 8423
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 8450
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    nop

    .line 8451
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 8450
    const-string/jumbo v1, "system_process"

    invoke-static {v1, v0}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 8453
    :try_start_1
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 8454
    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 8455
    nop

    .line 8456
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 8455
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 8457
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8458
    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8462
    .end local v0    # "context":Landroid/app/ContextImpl;
    nop

    .line 8465
    :goto_0
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityThread;)V

    .line 8484
    .local v0, "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    invoke-static {v0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 8485
    return-void

    .line 8459
    .end local v0    # "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    :catch_1
    move-exception v0

    .line 8460
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate Application():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8461
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 3
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 4751
    :try_start_0
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4752
    const/4 v0, 0x1

    return v0

    .line 4753
    :catch_0
    move-exception v0

    .line 4754
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching agent with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 6497
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 6498
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6499
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 6500
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 6503
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6505
    :goto_0
    return-void
.end method

.method private greylist-max-o callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5827
    if-eqz p2, :cond_0

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 5828
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5829
    .local v0, "shouldSaveState":Z
    :goto_0
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreP(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    .line 5830
    .local v1, "isPreP":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 5831
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5835
    :cond_1
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v2, v3, p3}, Landroid/app/Activity;->performStop(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5845
    goto :goto_1

    .line 5838
    :catch_0
    move-exception v2

    .line 5839
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5846
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5848
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 5849
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5851
    :cond_2
    return-void

    .line 5840
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5842
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5843
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5836
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 5837
    .local v2, "e":Landroid/util/SuperNotCalledException;
    throw v2
.end method

.method private greylist-max-o checkAndBlockForNetworkAccess()V
    .locals 7

    .line 4250
    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4251
    :try_start_0
    iget-wide v1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 4253
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-wide v5, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    .line 4254
    iput-wide v3, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4255
    :catch_0
    move-exception v1

    .line 4257
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 4258
    return-void

    .line 4257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static final greylist-max-o cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "force"    # Z

    .line 5385
    iget-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 5386
    return-void

    .line 5388
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 5389
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5390
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 5389
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5391
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 5392
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 5393
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5394
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5393
    const-string v3, "Activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5397
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5398
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5399
    return-void
.end method

.method private greylist-max-o createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .locals 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4264
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4265
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 4266
    .local v0, "activityToken":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0

    .line 4267
    .local v0, "displayId":I
    goto :goto_0

    .line 4269
    .end local v0    # "displayId":I
    :cond_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0

    .line 4271
    .restart local v0    # "displayId":I
    :goto_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v1, p0

    move v5, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 4274
    .local v1, "appContext":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 4278
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string v3, "debug.second-display.pkg"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4279
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, v4, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4280
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4281
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, v4, v6

    .line 4282
    .local v7, "id":I
    if-eqz v7, :cond_1

    .line 4283
    nop

    .line 4284
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v4

    .line 4285
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v1, v4}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/app/ContextImpl;

    .line 4286
    goto :goto_2

    .line 4281
    .end local v4    # "display":Landroid/view/Display;
    .end local v7    # "id":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4290
    :cond_2
    :goto_2
    return-object v1
.end method

.method private blacklist createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .locals 2
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2169
    monitor-enter p0

    .line 2170
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2173
    :cond_0
    new-instance v0, Landroid/app/ActivityThread$SafeCancellationTransport;

    invoke-direct {v0, p0, p1}, Landroid/app/ActivityThread$SafeCancellationTransport;-><init>(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)V

    .line 2175
    .local v0, "transport":Landroid/app/ActivityThread$SafeCancellationTransport;
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    monitor-exit p0

    return-object v0

    .line 2177
    .end local v0    # "transport":Landroid/app/ActivityThread$SafeCancellationTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p3, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p4, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4649
    new-instance v0, Landroid/window/SplashScreenView$Builder;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 4650
    .local v0, "builder":Landroid/window/SplashScreenView$Builder;
    invoke-virtual {v0, p3}, Landroid/window/SplashScreenView$Builder;->createFromParcel(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/window/SplashScreenView$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object v1

    .line 4651
    .local v1, "view":Landroid/window/SplashScreenView;
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/window/SplashScreenView;->attachHostWindow(Landroid/view/Window;)V

    .line 4652
    invoke-virtual {p2, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    .line 4653
    invoke-virtual {v1}, Landroid/window/SplashScreenView;->requestLayout()V

    .line 4655
    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Landroid/app/ActivityThread$2;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/view/SurfaceControl;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 4672
    return-void
.end method

.method public static greylist currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .line 2680
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static greylist currentApplication()Landroid/app/Application;
    .locals 2

    .line 2715
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2716
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static blacklist currentAttributionSource()Landroid/content/AttributionSource;
    .locals 2

    .line 2694
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2695
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2696
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2695
    :goto_0
    return-object v1
.end method

.method public static greylist-max-o currentOpPackageName()Ljava/lang/String;
    .locals 2

    .line 2688
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2689
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2690
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2689
    :goto_0
    return-object v1
.end method

.method public static greylist currentPackageName()Ljava/lang/String;
    .locals 2

    .line 2701
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2702
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    .line 2703
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2702
    :goto_0
    return-object v1
.end method

.method public static greylist currentProcessName()Ljava/lang/String;
    .locals 2

    .line 2708
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2709
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    .line 2710
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2709
    :goto_0
    return-object v1
.end method

.method private greylist-max-o deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 4358
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4359
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4360
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 4361
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4362
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4363
    invoke-virtual {v4}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4362
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4364
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 4365
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 4359
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4367
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5976
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 5977
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5978
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ResultInfo;

    .line 5980
    .local v2, "ri":Landroid/app/ResultInfo;
    :try_start_0
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 5981
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5982
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v4}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5983
    invoke-virtual {v5}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    .line 5982
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5987
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v2, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v2, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v2, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5996
    goto :goto_1

    .line 5989
    :catch_0
    move-exception v3

    .line 5990
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5977
    .end local v2    # "ri":Landroid/app/ResultInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5991
    .restart local v2    # "ri":Landroid/app/ResultInfo;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5993
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5994
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 5998
    .end local v1    # "i":I
    .end local v2    # "ri":Landroid/app/ResultInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public static greylist-max-o dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V
    .locals 46
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "dumpDalvik"    # Z
    .param p3, "dumpSummaryOnly"    # Z
    .param p4, "nativeMax"    # J
    .param p6, "nativeAllocated"    # J
    .param p8, "nativeFree"    # J
    .param p10, "dalvikMax"    # J
    .param p12, "dalvikAllocated"    # J
    .param p14, "dalvikFree"    # J

    .line 3651
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p4

    move-wide/from16 v10, p6

    move-wide/from16 v8, p8

    move-wide/from16 v6, p10

    move-wide/from16 v4, p12

    move-wide/from16 v1, p14

    if-nez p3, :cond_9

    .line 3652
    const-wide v1, 0x10b00000003L

    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3653
    .local v1, "nhToken":J
    const-wide v22, 0x10b00000001L

    iget v3, v15, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iget v0, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move-wide/from16 v24, v1

    .end local v1    # "nhToken":J
    .local v24, "nhToken":J
    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    iget v2, v15, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v26, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v27, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v28, v1

    iget-boolean v1, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v29, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v30, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    move/from16 v31, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    const-string v32, "Native Heap"

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v17, v2

    move-wide/from16 v34, v24

    move/from16 v16, v26

    move/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v30

    move/from16 v24, v31

    move/from16 v25, v1

    .end local v24    # "nhToken":J
    .local v34, "nhToken":J
    move-wide/from16 v1, v22

    move/from16 v22, v3

    move-object/from16 v3, v32

    move/from16 v4, v22

    move/from16 v5, v33

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v24

    move/from16 v13, v25

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3659
    move-wide/from16 v12, p4

    const-wide v10, 0x10500000002L

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3660
    move-wide/from16 v8, p6

    const-wide v6, 0x10500000003L

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3661
    move-wide/from16 v4, p8

    const-wide v1, 0x10500000004L

    invoke-virtual {v14, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3662
    move-wide/from16 v1, v34

    .end local v34    # "nhToken":J
    .restart local v1    # "nhToken":J
    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3664
    const-wide v6, 0x10b00000004L

    invoke-virtual {v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 3665
    .local v6, "dvToken":J
    const-wide v16, 0x10b00000001L

    iget v3, v15, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v0, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v10, v15, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v11, v15, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .end local v1    # "nhToken":J
    .restart local v34    # "nhToken":J
    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v2, v15, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v18, v1

    iget-boolean v1, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v19, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v20, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move/from16 v21, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    const-string v22, "Dalvik Heap"

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    move/from16 v24, v19

    move/from16 v25, v20

    move/from16 v26, v21

    move/from16 v21, v2

    move/from16 v20, v18

    move-wide/from16 v18, v34

    .end local v34    # "nhToken":J
    .local v18, "nhToken":J
    move-wide/from16 v1, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    move/from16 v4, v16

    move/from16 v5, v23

    move-wide/from16 v42, v6

    .end local v6    # "dvToken":J
    .local v42, "dvToken":J
    move v6, v10

    move v7, v11

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v24

    move/from16 v11, v25

    move/from16 v12, v26

    move/from16 v13, v27

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3671
    move-wide/from16 v12, p10

    const-wide v10, 0x10500000002L

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3672
    move-wide/from16 v8, p12

    const-wide v6, 0x10500000003L

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3673
    move-wide/from16 v4, p14

    const-wide v1, 0x10500000004L

    invoke-virtual {v14, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3674
    move-wide/from16 v1, v42

    .end local v42    # "dvToken":J
    .local v1, "dvToken":J
    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3676
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3677
    .local v0, "otherPss":I
    iget v3, v15, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3678
    .local v3, "otherSwappablePss":I
    iget v6, v15, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3679
    .local v6, "otherSharedDirty":I
    iget v7, v15, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3680
    .local v7, "otherPrivateDirty":I
    iget v10, v15, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3681
    .local v10, "otherSharedClean":I
    iget v11, v15, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3682
    .local v11, "otherPrivateClean":I
    move/from16 v16, v0

    .end local v0    # "otherPss":I
    .local v16, "otherPss":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3683
    .local v0, "otherSwappedOut":I
    move/from16 v17, v0

    .end local v0    # "otherSwappedOut":I
    .local v17, "otherSwappedOut":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3684
    .local v0, "otherSwappedOutPss":I
    move/from16 v20, v0

    .end local v0    # "otherSwappedOutPss":I
    .local v20, "otherSwappedOutPss":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3686
    .local v0, "otherRss":I
    const/16 v21, 0x0

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v11, v21

    move/from16 v21, v0

    .end local v0    # "otherRss":I
    .end local v3    # "otherSwappablePss":I
    .end local v6    # "otherSharedDirty":I
    .end local v7    # "otherPrivateDirty":I
    .end local v10    # "otherSharedClean":I
    .local v11, "i":I
    .local v21, "otherRss":I
    .local v22, "otherSwappablePss":I
    .local v23, "otherSharedDirty":I
    .local v24, "otherPrivateDirty":I
    .local v25, "otherSharedClean":I
    .local v26, "otherPrivateClean":I
    :goto_0
    const/16 v0, 0x11

    if-ge v11, v0, :cond_3

    .line 3687
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v27

    .line 3688
    .local v27, "myPss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 3689
    .local v28, "mySwappablePss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v29

    .line 3690
    .local v29, "mySharedDirty":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v30

    .line 3691
    .local v30, "myPrivateDirty":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v31

    .line 3692
    .local v31, "mySharedClean":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v32

    .line 3693
    .local v32, "myPrivateClean":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v33

    .line 3694
    .local v33, "mySwappedOut":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v34

    .line 3695
    .local v34, "mySwappedOutPss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v35

    .line 3696
    .local v35, "myRss":I
    if-nez v27, :cond_2

    if-nez v29, :cond_2

    if-nez v30, :cond_2

    if-nez v31, :cond_2

    if-nez v32, :cond_2

    if-nez v35, :cond_2

    .line 3698
    iget-boolean v0, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_0

    move/from16 v0, v34

    goto :goto_1

    :cond_0
    move/from16 v0, v33

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-wide/from16 v36, v1

    move/from16 v38, v11

    goto :goto_3

    .line 3699
    :cond_2
    :goto_2
    const-wide v6, 0x20b00000005L

    .line 3700
    invoke-static {v11}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3699
    move-object/from16 v0, p0

    move-wide/from16 v36, v1

    .end local v1    # "dvToken":J
    .local v36, "dvToken":J
    move-wide v1, v6

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v31

    move/from16 v9, v32

    move/from16 v38, v11

    .end local v11    # "i":I
    .local v38, "i":I
    move/from16 v11, v33

    move/from16 v12, v34

    move/from16 v13, v35

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3705
    sub-int v16, v16, v27

    .line 3706
    sub-int v22, v22, v28

    .line 3707
    sub-int v23, v23, v29

    .line 3708
    sub-int v24, v24, v30

    .line 3709
    sub-int v25, v25, v31

    .line 3710
    sub-int v26, v26, v32

    .line 3711
    sub-int v17, v17, v33

    .line 3712
    sub-int v20, v20, v34

    .line 3713
    sub-int v21, v21, v35

    .line 3686
    .end local v27    # "myPss":I
    .end local v28    # "mySwappablePss":I
    .end local v29    # "mySharedDirty":I
    .end local v30    # "myPrivateDirty":I
    .end local v31    # "mySharedClean":I
    .end local v32    # "myPrivateClean":I
    .end local v33    # "mySwappedOut":I
    .end local v34    # "mySwappedOutPss":I
    .end local v35    # "myRss":I
    :goto_3
    add-int/lit8 v11, v38, 0x1

    move-wide/from16 v12, p10

    move-wide/from16 v8, p12

    move-wide/from16 v4, p14

    move-wide/from16 v1, v36

    .end local v38    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_0

    .end local v36    # "dvToken":J
    .restart local v1    # "dvToken":J
    :cond_3
    move-wide/from16 v36, v1

    move/from16 v38, v11

    .line 3717
    .end local v1    # "dvToken":J
    .end local v11    # "i":I
    .restart local v36    # "dvToken":J
    const-wide v1, 0x10b00000006L

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-string v3, "Unknown"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v11, v17

    move/from16 v12, v20

    move/from16 v13, v21

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3721
    const-wide v0, 0x10b00000007L

    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 3722
    .local v12, "tToken":J
    const-wide v1, 0x10b00000001L

    .line 3723
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    .line 3724
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v7

    .line 3725
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3726
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v11

    .line 3727
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v28

    .line 3722
    const-string v3, "TOTAL"

    move-object/from16 v0, p0

    move-wide/from16 v44, v12

    .end local v12    # "tToken":J
    .local v44, "tToken":J
    move/from16 v12, v27

    move/from16 v13, v28

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3728
    add-long v0, p4, p10

    const-wide v12, 0x10500000002L

    invoke-virtual {v14, v12, v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3730
    add-long v0, p6, p12

    const-wide v10, 0x10500000003L

    invoke-virtual {v14, v10, v11, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3732
    add-long v0, p8, p14

    const-wide v8, 0x10500000004L

    invoke-virtual {v14, v8, v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3734
    move-wide/from16 v6, v44

    .end local v44    # "tToken":J
    .local v6, "tToken":J
    invoke-virtual {v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3736
    if-eqz p2, :cond_8

    .line 3737
    const/16 v0, 0x11

    move v5, v0

    .line 3738
    .local v5, "i":I
    :goto_4
    const/16 v0, 0x20

    if-ge v5, v0, :cond_7

    .line 3740
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v27

    .line 3741
    .restart local v27    # "myPss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 3742
    .restart local v28    # "mySwappablePss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v29

    .line 3743
    .restart local v29    # "mySharedDirty":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v30

    .line 3744
    .restart local v30    # "myPrivateDirty":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v31

    .line 3745
    .restart local v31    # "mySharedClean":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v32

    .line 3746
    .restart local v32    # "myPrivateClean":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v33

    .line 3747
    .restart local v33    # "mySwappedOut":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v34

    .line 3748
    .restart local v34    # "mySwappedOutPss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v35

    .line 3749
    .restart local v35    # "myRss":I
    if-nez v27, :cond_6

    if-nez v29, :cond_6

    if-nez v30, :cond_6

    if-nez v31, :cond_6

    if-nez v32, :cond_6

    .line 3751
    iget-boolean v0, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_4

    move/from16 v0, v34

    goto :goto_5

    :cond_4
    move/from16 v0, v33

    :goto_5
    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    move/from16 v39, v5

    move-wide/from16 v40, v6

    goto :goto_7

    .line 3752
    :cond_6
    :goto_6
    const-wide v1, 0x20b00000008L

    .line 3753
    invoke-static {v5}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3752
    move-object/from16 v0, p0

    move/from16 v38, v4

    move/from16 v4, v27

    move/from16 v39, v5

    .end local v5    # "i":I
    .local v39, "i":I
    move/from16 v5, v28

    move-wide/from16 v40, v6

    .end local v6    # "tToken":J
    .local v40, "tToken":J
    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v31

    move/from16 v9, v32

    move/from16 v10, v38

    move/from16 v11, v33

    move/from16 v12, v34

    move/from16 v13, v35

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3739
    .end local v27    # "myPss":I
    .end local v28    # "mySwappablePss":I
    .end local v29    # "mySharedDirty":I
    .end local v30    # "myPrivateDirty":I
    .end local v31    # "mySharedClean":I
    .end local v32    # "myPrivateClean":I
    .end local v33    # "mySwappedOut":I
    .end local v34    # "mySwappedOutPss":I
    .end local v35    # "myRss":I
    :goto_7
    add-int/lit8 v5, v39, 0x1

    move-wide/from16 v6, v40

    const-wide v8, 0x10500000004L

    const-wide v10, 0x10500000003L

    const-wide v12, 0x10500000002L

    .end local v39    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_4

    .line 3738
    .end local v40    # "tToken":J
    .restart local v6    # "tToken":J
    :cond_7
    move/from16 v39, v5

    move-wide/from16 v40, v6

    .end local v5    # "i":I
    .end local v6    # "tToken":J
    .restart local v39    # "i":I
    .restart local v40    # "tToken":J
    goto :goto_8

    .line 3736
    .end local v39    # "i":I
    .end local v40    # "tToken":J
    .restart local v6    # "tToken":J
    :cond_8
    move-wide/from16 v40, v6

    .line 3762
    .end local v6    # "tToken":J
    .end local v16    # "otherPss":I
    .end local v17    # "otherSwappedOut":I
    .end local v18    # "nhToken":J
    .end local v20    # "otherSwappedOutPss":I
    .end local v21    # "otherRss":I
    .end local v22    # "otherSwappablePss":I
    .end local v23    # "otherSharedDirty":I
    .end local v24    # "otherPrivateDirty":I
    .end local v25    # "otherSharedClean":I
    .end local v26    # "otherPrivateClean":I
    .end local v36    # "dvToken":J
    :cond_9
    :goto_8
    const-wide v0, 0x10b00000009L

    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3763
    .local v0, "asToken":J
    const-wide v2, 0x10500000001L

    .line 3764
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v4

    .line 3763
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3765
    nop

    .line 3766
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    .line 3765
    const-wide v3, 0x10500000002L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3767
    nop

    .line 3768
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    .line 3767
    const-wide v3, 0x10500000003L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3769
    nop

    .line 3770
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    .line 3769
    const-wide v3, 0x10500000004L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3771
    const-wide v2, 0x10500000005L

    .line 3772
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v4

    .line 3771
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3773
    const-wide v2, 0x10500000006L

    .line 3774
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v4

    .line 3773
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3775
    const-wide v2, 0x10500000007L

    .line 3776
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v4

    .line 3775
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3777
    iget-boolean v2, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v3, 0x10500000008L

    if-eqz v2, :cond_a

    .line 3778
    nop

    .line 3779
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v2

    .line 3778
    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9

    .line 3781
    :cond_a
    nop

    .line 3782
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    .line 3781
    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3784
    :goto_9
    const-wide v2, 0x1050000000aL

    .line 3785
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v4

    .line 3784
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3786
    const-wide v2, 0x1050000000bL

    .line 3787
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v4

    .line 3786
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3788
    const-wide v2, 0x1050000000cL

    .line 3789
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v4

    .line 3788
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3790
    const-wide v2, 0x1050000000dL

    .line 3791
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v4

    .line 3790
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3792
    const-wide v2, 0x1050000000eL

    .line 3793
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v4

    .line 3792
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3794
    const-wide v2, 0x1050000000fL

    .line 3795
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v4

    .line 3794
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3797
    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3798
    return-void
.end method

.method public static greylist-max-o dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 46
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "checkin"    # Z
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;
    .param p8, "nativeMax"    # J
    .param p10, "nativeAllocated"    # J
    .param p12, "nativeFree"    # J
    .param p14, "dalvikMax"    # J
    .param p16, "dalvikAllocated"    # J
    .param p18, "dalvikFree"    # J

    .line 3324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p8

    move-wide/from16 v4, p10

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    move-wide/from16 v12, p18

    const/4 v14, 0x4

    if-eqz p2, :cond_3

    .line 3329
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3330
    move/from16 v15, p6

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3331
    move-object/from16 v15, p7

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3334
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3335
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3336
    const-string v14, "N/A,"

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3337
    add-long v12, v2, v8

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const/16 v12, 0x2c

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3340
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3341
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3342
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3343
    add-long v2, v4, v10

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3346
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3347
    move-wide/from16 v2, p18

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3348
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3349
    add-long v4, v6, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3352
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3353
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3354
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3355
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3358
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3359
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3360
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3361
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3364
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3365
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3366
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3367
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3370
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3371
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3372
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3373
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3376
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3377
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3378
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3379
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3382
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3383
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3384
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3385
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3388
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3389
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3390
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3391
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3394
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_0

    .line 3395
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3396
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3397
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3398
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 3400
    :cond_0
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3401
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3402
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3407
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v5, 0x11

    if-ge v4, v5, :cond_2

    .line 3408
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3409
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3410
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3411
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3412
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3413
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3414
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3415
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3416
    iget-boolean v12, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v12, :cond_1

    .line 3417
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_2

    .line 3419
    :cond_1
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3407
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3422
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 3425
    :cond_3
    move-object/from16 v15, p7

    move-wide v2, v12

    const-string v12, "------"

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v19, ""

    if-nez p5, :cond_1f

    .line 3426
    const-string v20, "Dirty"

    const-string v21, "Heap"

    const/16 v22, 0xb

    const/16 v4, 0xc

    const-string v14, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const-string v13, "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v27, 0x8

    const/16 v28, 0x7

    if-eqz p3, :cond_7

    .line 3427
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    const-string v31, "Pss"

    aput-object v31, v5, v18

    const-string v31, "Pss"

    const/16 v26, 0x2

    aput-object v31, v5, v26

    const-string v31, "Shared"

    const/16 v25, 0x3

    aput-object v31, v5, v25

    const-string v31, "Private"

    const/16 v24, 0x4

    aput-object v31, v5, v24

    const-string v31, "Shared"

    const/16 v23, 0x5

    aput-object v31, v5, v23

    const-string v31, "Private"

    const/16 v16, 0x6

    aput-object v31, v5, v16

    .line 3428
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_4

    const-string v4, "SwapPss"

    goto :goto_3

    :cond_4
    const-string v4, "Swap"

    :goto_3
    aput-object v4, v5, v28

    const-string v4, "Rss"

    aput-object v4, v5, v27

    const/16 v4, 0x9

    aput-object v21, v5, v4

    const/16 v4, 0xa

    aput-object v21, v5, v4

    aput-object v21, v5, v22

    .line 3427
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3430
    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    const-string v4, "Total"

    aput-object v4, v5, v18

    const-string v4, "Clean"

    const/16 v21, 0x2

    aput-object v4, v5, v21

    const/4 v4, 0x3

    aput-object v20, v5, v4

    const/4 v4, 0x4

    aput-object v20, v5, v4

    const-string v4, "Clean"

    const/16 v21, 0x5

    aput-object v4, v5, v21

    const-string v4, "Clean"

    const/16 v16, 0x6

    aput-object v4, v5, v16

    aput-object v20, v5, v28

    const-string v4, "Total"

    aput-object v4, v5, v27

    const-string v4, "Size"

    const/16 v20, 0x9

    aput-object v4, v5, v20

    const-string v4, "Alloc"

    const/16 v20, 0xa

    aput-object v4, v5, v20

    const-string v4, "Free"

    aput-object v4, v5, v22

    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3433
    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    aput-object v12, v5, v18

    const/4 v4, 0x2

    aput-object v12, v5, v4

    const/4 v4, 0x3

    aput-object v12, v5, v4

    const/4 v4, 0x4

    aput-object v12, v5, v4

    const/4 v4, 0x5

    aput-object v12, v5, v4

    const/4 v4, 0x6

    aput-object v12, v5, v4

    aput-object v12, v5, v28

    aput-object v12, v5, v27

    const/16 v4, 0x9

    aput-object v12, v5, v4

    const/16 v4, 0xa

    aput-object v12, v5, v4

    aput-object v12, v5, v22

    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3435
    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Native Heap"

    aput-object v4, v5, v17

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 3436
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x2

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x3

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3437
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x4

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x5

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3438
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x6

    aput-object v4, v5, v16

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_5

    .line 3439
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_4

    :cond_5
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3438
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v28

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3440
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v27

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v20, 0x9

    aput-object v4, v5, v20

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v20, 0xa

    aput-object v4, v5, v20

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v22

    .line 3435
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3441
    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Dalvik Heap"

    aput-object v4, v5, v17

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 3442
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x2

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x3

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3443
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x4

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x5

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3444
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x6

    aput-object v4, v5, v16

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_6

    .line 3445
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_5

    :cond_6
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3444
    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v28

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3446
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v27

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v15, 0x9

    aput-object v4, v5, v15

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v20, 0xa

    aput-object v4, v5, v20

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v22

    .line 3441
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 3448
    :cond_7
    const/16 v15, 0x9

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v19, v4, v17

    const-string v5, "Pss"

    aput-object v5, v4, v18

    const-string v5, "Private"

    const/4 v15, 0x2

    aput-object v5, v4, v15

    const-string v5, "Private"

    const/4 v15, 0x3

    aput-object v5, v4, v15

    .line 3449
    iget-boolean v5, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v5, :cond_8

    const-string v5, "SwapPss"

    goto :goto_6

    :cond_8
    const-string v5, "Swap"

    :goto_6
    const/4 v15, 0x4

    aput-object v5, v4, v15

    const-string v5, "Rss"

    const/4 v15, 0x5

    aput-object v5, v4, v15

    const/4 v5, 0x6

    aput-object v21, v4, v5

    aput-object v21, v4, v28

    aput-object v21, v4, v27

    .line 3448
    invoke-static {v0, v13, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3451
    const/16 v4, 0x9

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    const-string v4, "Total"

    aput-object v4, v5, v18

    const/4 v4, 0x2

    aput-object v20, v5, v4

    const-string v4, "Clean"

    const/4 v15, 0x3

    aput-object v4, v5, v15

    const/4 v4, 0x4

    aput-object v20, v5, v4

    const-string v4, "Total"

    const/4 v15, 0x5

    aput-object v4, v5, v15

    const-string v4, "Size"

    const/4 v15, 0x6

    aput-object v4, v5, v15

    const-string v4, "Alloc"

    aput-object v4, v5, v28

    const-string v4, "Free"

    aput-object v4, v5, v27

    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3453
    const/16 v4, 0xa

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    aput-object v12, v5, v18

    const/4 v4, 0x2

    aput-object v12, v5, v4

    const/4 v4, 0x3

    aput-object v12, v5, v4

    const/4 v4, 0x4

    aput-object v12, v5, v4

    const/4 v4, 0x5

    aput-object v12, v5, v4

    const/4 v4, 0x6

    aput-object v12, v5, v4

    aput-object v12, v5, v28

    aput-object v12, v5, v27

    const/16 v4, 0x9

    aput-object v12, v5, v4

    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3455
    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Native Heap"

    aput-object v4, v5, v17

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3456
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x2

    aput-object v4, v5, v15

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3457
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x3

    aput-object v4, v5, v15

    .line 3458
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_9

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_7

    .line 3459
    :cond_9
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3458
    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x4

    aput-object v4, v5, v15

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3459
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x5

    aput-object v4, v5, v15

    .line 3460
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v15, 0x6

    aput-object v4, v5, v15

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v28

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v27

    .line 3455
    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3461
    const/16 v4, 0x9

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Dalvik Heap"

    aput-object v4, v5, v17

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3462
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x2

    aput-object v4, v5, v15

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3463
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x3

    aput-object v4, v5, v15

    .line 3464
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_a

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_8

    .line 3465
    :cond_a
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3464
    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x4

    aput-object v4, v5, v15

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x5

    aput-object v4, v5, v15

    .line 3466
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v15, 0x6

    aput-object v4, v5, v15

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v28

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v27

    .line 3461
    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3469
    :goto_9
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3470
    .local v4, "otherPss":I
    iget v5, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3471
    .local v5, "otherSwappablePss":I
    iget v15, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3472
    .local v15, "otherSharedDirty":I
    move/from16 v20, v4

    .end local v4    # "otherPss":I
    .local v20, "otherPss":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3473
    .local v4, "otherPrivateDirty":I
    move/from16 v21, v4

    .end local v4    # "otherPrivateDirty":I
    .local v21, "otherPrivateDirty":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3474
    .local v4, "otherSharedClean":I
    move/from16 v32, v4

    .end local v4    # "otherSharedClean":I
    .local v32, "otherSharedClean":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3475
    .local v4, "otherPrivateClean":I
    move/from16 v33, v4

    .end local v4    # "otherPrivateClean":I
    .local v33, "otherPrivateClean":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3476
    .local v4, "otherSwappedOut":I
    move/from16 v34, v4

    .end local v4    # "otherSwappedOut":I
    .local v34, "otherSwappedOut":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3477
    .local v4, "otherSwappedOutPss":I
    move/from16 v35, v4

    .end local v4    # "otherSwappedOutPss":I
    .local v35, "otherSwappedOutPss":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3479
    .local v4, "otherRss":I
    const/16 v36, 0x0

    move/from16 v44, v5

    move v5, v4

    move/from16 v4, v20

    move/from16 v20, v15

    move/from16 v15, v44

    move/from16 v45, v36

    move-object/from16 v36, v12

    move/from16 v12, v45

    .local v4, "otherPss":I
    .local v5, "otherRss":I
    .local v12, "i":I
    .local v15, "otherSwappablePss":I
    .local v20, "otherSharedDirty":I
    :goto_a
    const/16 v2, 0x11

    if-ge v12, v2, :cond_11

    .line 3480
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v2

    .line 3481
    .local v2, "myPss":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v3

    .line 3482
    .local v3, "mySwappablePss":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v37

    .line 3483
    .local v37, "mySharedDirty":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v38

    .line 3484
    .local v38, "myPrivateDirty":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v39

    .line 3485
    .local v39, "mySharedClean":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v40

    .line 3486
    .local v40, "myPrivateClean":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v41

    .line 3487
    .local v41, "mySwappedOut":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v42

    .line 3488
    .local v42, "mySwappedOutPss":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v43

    .line 3489
    .local v43, "myRss":I
    if-nez v2, :cond_c

    if-nez v37, :cond_c

    if-nez v38, :cond_c

    if-nez v39, :cond_c

    if-nez v40, :cond_c

    if-nez v43, :cond_c

    .line 3491
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_b

    move/from16 v6, v42

    goto :goto_b

    :cond_b
    move/from16 v6, v41

    :goto_b
    if-eqz v6, :cond_10

    .line 3492
    :cond_c
    if-eqz p3, :cond_e

    .line 3493
    const/16 v6, 0xc

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v12}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v17

    .line 3494
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v26, 0x2

    aput-object v6, v7, v26

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v25, 0x3

    aput-object v6, v7, v25

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v24, 0x4

    aput-object v6, v7, v24

    .line 3495
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v23, 0x5

    aput-object v6, v7, v23

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x6

    aput-object v6, v7, v16

    .line 3496
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_d

    move/from16 v6, v42

    goto :goto_c

    :cond_d
    move/from16 v6, v41

    :goto_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v28

    .line 3497
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v27

    const/16 v6, 0x9

    aput-object v19, v7, v6

    const/16 v29, 0xa

    aput-object v19, v7, v29

    aput-object v19, v7, v22

    .line 3493
    invoke-static {v0, v14, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 3499
    :cond_e
    const/16 v6, 0x9

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v12}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v17

    .line 3500
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v18

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v26, 0x2

    aput-object v6, v7, v26

    .line 3501
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v25, 0x3

    aput-object v6, v7, v25

    .line 3502
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_f

    move/from16 v6, v42

    goto :goto_d

    :cond_f
    move/from16 v6, v41

    :goto_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v24, 0x4

    aput-object v6, v7, v24

    .line 3503
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v23, 0x5

    aput-object v6, v7, v23

    const/4 v6, 0x6

    aput-object v19, v7, v6

    aput-object v19, v7, v28

    aput-object v19, v7, v27

    .line 3499
    invoke-static {v0, v13, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3505
    :goto_e
    sub-int/2addr v4, v2

    .line 3506
    sub-int/2addr v15, v3

    .line 3507
    sub-int v20, v20, v37

    .line 3508
    sub-int v21, v21, v38

    .line 3509
    sub-int v32, v32, v39

    .line 3510
    sub-int v33, v33, v40

    .line 3511
    sub-int v34, v34, v41

    .line 3512
    sub-int v35, v35, v42

    .line 3513
    sub-int v5, v5, v43

    .line 3479
    .end local v2    # "myPss":I
    .end local v3    # "mySwappablePss":I
    .end local v37    # "mySharedDirty":I
    .end local v38    # "myPrivateDirty":I
    .end local v39    # "mySharedClean":I
    .end local v40    # "myPrivateClean":I
    .end local v41    # "mySwappedOut":I
    .end local v42    # "mySwappedOutPss":I
    .end local v43    # "myRss":I
    :cond_10
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v6, p12

    move-wide/from16 v2, p18

    goto/16 :goto_a

    .line 3517
    .end local v12    # "i":I
    :cond_11
    if-eqz p3, :cond_14

    .line 3518
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Unknown"

    aput-object v2, v3, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 3519
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    .line 3520
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_12

    move/from16 v2, v35

    goto :goto_f

    :cond_12
    move/from16 v2, v34

    :goto_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v28

    .line 3521
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v27

    const/16 v2, 0x9

    aput-object v19, v3, v2

    const/16 v2, 0xa

    aput-object v19, v3, v2

    aput-object v19, v3, v22

    .line 3518
    invoke-static {v0, v14, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3522
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "TOTAL"

    aput-object v2, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    .line 3523
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 3524
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    .line 3525
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    .line 3526
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v2

    goto :goto_10

    .line 3527
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v2

    .line 3526
    :goto_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v28

    .line 3527
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v27

    add-long v6, p8, v8

    .line 3528
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v6, 0x9

    aput-object v2, v3, v6

    add-long v6, p10, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v6, 0xa

    aput-object v2, v3, v6

    add-long v6, p12, p18

    .line 3529
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v22

    .line 3522
    invoke-static {v0, v14, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 3531
    :cond_14
    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Unknown"

    aput-object v2, v3, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    .line 3532
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v3, v6

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    .line 3533
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_15

    move/from16 v2, v35

    goto :goto_11

    :cond_15
    move/from16 v2, v34

    :goto_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    .line 3534
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    const/4 v2, 0x6

    aput-object v19, v3, v2

    aput-object v19, v3, v28

    aput-object v19, v3, v27

    .line 3531
    invoke-static {v0, v13, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3535
    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "TOTAL"

    aput-object v2, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    .line 3536
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 3537
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    .line 3538
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v2

    goto :goto_12

    .line 3539
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v2

    .line 3538
    :goto_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    .line 3539
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    add-long v6, p8, v8

    .line 3540
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    add-long v6, p10, v10

    .line 3541
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v28

    add-long v6, p12, p18

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v27

    .line 3535
    invoke-static {v0, v13, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3544
    :goto_13
    if-eqz p4, :cond_1e

    .line 3545
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3546
    const-string v2, " Dalvik Details"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3548
    const/16 v2, 0x11

    .line 3549
    .local v2, "i":I
    :goto_14
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1d

    .line 3550
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v3

    .line 3551
    .local v3, "myPss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v6

    .line 3552
    .local v6, "mySwappablePss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v7

    .line 3553
    .local v7, "mySharedDirty":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v12

    .line 3554
    .local v12, "myPrivateDirty":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v37

    .line 3555
    .local v37, "mySharedClean":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v38

    .line 3556
    .local v38, "myPrivateClean":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v39

    .line 3557
    .local v39, "mySwappedOut":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v40

    .line 3558
    .local v40, "mySwappedOutPss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v41

    .line 3559
    .local v41, "myRss":I
    if-nez v3, :cond_19

    if-nez v7, :cond_19

    if-nez v12, :cond_19

    if-nez v37, :cond_19

    if-nez v38, :cond_19

    .line 3561
    move/from16 v42, v4

    .end local v4    # "otherPss":I
    .local v42, "otherPss":I
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_17

    move/from16 v4, v40

    goto :goto_15

    :cond_17
    move/from16 v4, v39

    :goto_15
    if-eqz v4, :cond_18

    goto :goto_16

    :cond_18
    move/from16 v31, v5

    const/16 v29, 0xa

    goto/16 :goto_19

    .line 3559
    .end local v42    # "otherPss":I
    .restart local v4    # "otherPss":I
    :cond_19
    move/from16 v42, v4

    .line 3562
    .end local v4    # "otherPss":I
    .restart local v42    # "otherPss":I
    :goto_16
    if-eqz p3, :cond_1b

    .line 3563
    move/from16 v31, v5

    const/16 v4, 0xc

    .end local v5    # "otherRss":I
    .local v31, "otherRss":I
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v5, v17

    .line 3564
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v5, v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/16 v26, 0x2

    aput-object v43, v5, v26

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/16 v25, 0x3

    aput-object v43, v5, v25

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/16 v24, 0x4

    aput-object v43, v5, v24

    .line 3565
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/16 v23, 0x5

    aput-object v43, v5, v23

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/16 v16, 0x6

    aput-object v43, v5, v16

    .line 3566
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_1a

    move/from16 v4, v40

    goto :goto_17

    :cond_1a
    move/from16 v4, v39

    :goto_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v28

    .line 3567
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v27

    const/16 v4, 0x9

    aput-object v19, v5, v4

    const/16 v29, 0xa

    aput-object v19, v5, v29

    aput-object v19, v5, v22

    .line 3563
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 3569
    .end local v31    # "otherRss":I
    .restart local v5    # "otherRss":I
    :cond_1b
    move/from16 v31, v5

    const/16 v4, 0x9

    const/16 v29, 0xa

    .end local v5    # "otherRss":I
    .restart local v31    # "otherRss":I
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v5, v17

    .line 3570
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v5, v18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v26, 0x2

    aput-object v30, v5, v26

    .line 3571
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v25, 0x3

    aput-object v30, v5, v25

    .line 3572
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_1c

    move/from16 v4, v40

    goto :goto_18

    :cond_1c
    move/from16 v4, v39

    :goto_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v24, 0x4

    aput-object v4, v5, v24

    .line 3573
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v23, 0x5

    aput-object v4, v5, v23

    const/4 v4, 0x6

    aput-object v19, v5, v4

    aput-object v19, v5, v28

    aput-object v19, v5, v27

    .line 3569
    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3549
    .end local v3    # "myPss":I
    .end local v6    # "mySwappablePss":I
    .end local v7    # "mySharedDirty":I
    .end local v12    # "myPrivateDirty":I
    .end local v37    # "mySharedClean":I
    .end local v38    # "myPrivateClean":I
    .end local v39    # "mySwappedOut":I
    .end local v40    # "mySwappedOutPss":I
    .end local v41    # "myRss":I
    :goto_19
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v31

    move/from16 v4, v42

    goto/16 :goto_14

    .end local v31    # "otherRss":I
    .end local v42    # "otherPss":I
    .restart local v4    # "otherPss":I
    .restart local v5    # "otherRss":I
    :cond_1d
    move/from16 v42, v4

    move/from16 v31, v5

    .end local v4    # "otherPss":I
    .end local v5    # "otherRss":I
    .restart local v31    # "otherRss":I
    .restart local v42    # "otherPss":I
    goto :goto_1a

    .line 3544
    .end local v2    # "i":I
    .end local v31    # "otherRss":I
    .end local v42    # "otherPss":I
    .restart local v4    # "otherPss":I
    .restart local v5    # "otherRss":I
    :cond_1e
    move/from16 v42, v4

    move/from16 v31, v5

    .end local v4    # "otherPss":I
    .end local v5    # "otherRss":I
    .restart local v31    # "otherRss":I
    .restart local v42    # "otherPss":I
    goto :goto_1a

    .line 3425
    .end local v15    # "otherSwappablePss":I
    .end local v20    # "otherSharedDirty":I
    .end local v21    # "otherPrivateDirty":I
    .end local v31    # "otherRss":I
    .end local v32    # "otherSharedClean":I
    .end local v33    # "otherPrivateClean":I
    .end local v34    # "otherSwappedOut":I
    .end local v35    # "otherSwappedOutPss":I
    .end local v42    # "otherPss":I
    :cond_1f
    move-object/from16 v36, v12

    .line 3580
    :goto_1a
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    const-string v2, " App Summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v19, v3, v17

    const-string v4, "Pss(KB)"

    aput-object v4, v3, v18

    const/4 v4, 0x2

    aput-object v19, v3, v4

    const-string v5, "Rss(KB)"

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const-string v5, "%21s %8s %21s %8s"

    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3583
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v19, v3, v17

    aput-object v36, v3, v18

    aput-object v19, v3, v4

    aput-object v36, v3, v6

    const-string v4, "%21s %8s %21s %8s"

    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3584
    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Java Heap:"

    aput-object v2, v3, v17

    .line 3585
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    const/4 v2, 0x2

    aput-object v19, v3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 3584
    const-string v2, "%21s %8d %21s %8d"

    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3586
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Native Heap:"

    aput-object v3, v4, v17

    .line 3587
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    const/4 v3, 0x2

    aput-object v19, v4, v3

    .line 3588
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 3586
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3589
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Code:"

    aput-object v3, v4, v17

    .line 3590
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    const/4 v3, 0x2

    aput-object v19, v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 3589
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3591
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Stack:"

    aput-object v3, v4, v17

    .line 3592
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    const/4 v3, 0x2

    aput-object v19, v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 3591
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3593
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Graphics:"

    aput-object v3, v4, v17

    .line 3594
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    const/4 v3, 0x2

    aput-object v19, v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 3593
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3595
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Private Other:"

    aput-object v4, v2, v17

    .line 3596
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v18

    .line 3595
    const-string v4, "%21s %8d"

    invoke-static {v0, v4, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3597
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "System:"

    aput-object v3, v2, v17

    .line 3598
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v18

    .line 3597
    const-string v3, "%21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3599
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Unknown:"

    aput-object v2, v3, v17

    aput-object v19, v3, v18

    const/4 v2, 0x2

    aput-object v19, v3, v2

    .line 3600
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 3599
    const-string v2, "%21s %8s %21s %8d"

    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3601
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_20

    .line 3603
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TOTAL PSS:"

    aput-object v3, v2, v17

    .line 3604
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v18

    const-string v3, "TOTAL RSS:"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 3605
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "TOTAL SWAP PSS:"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 3606
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 3603
    const-string v3, "%21s %8d %21s %8s %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    .line 3608
    :cond_20
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TOTAL PSS:"

    aput-object v3, v2, v17

    .line 3609
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v18

    const-string v3, "TOTAL RSS:"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 3610
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "TOTAL SWAP (KB):"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 3611
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 3608
    const-string v3, "%21s %8d %21s %8s %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3613
    :goto_1b
    return-void
.end method

.method private static blacklist dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V
    .locals 15
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "pss"    # I
    .param p5, "cleanPss"    # I
    .param p6, "sharedDirty"    # I
    .param p7, "privateDirty"    # I
    .param p8, "sharedClean"    # I
    .param p9, "privateClean"    # I
    .param p10, "hasSwappedOutPss"    # Z
    .param p11, "dirtySwap"    # I
    .param p12, "dirtySwapPss"    # I
    .param p13, "rss"    # I

    .line 3624
    move-object v0, p0

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3626
    .local v1, "token":J
    const-wide v3, 0x10900000001L

    move-object/from16 v5, p3

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3627
    const-wide v3, 0x10500000002L

    move/from16 v6, p4

    invoke-virtual {p0, v3, v4, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3628
    const-wide v3, 0x10500000003L

    move/from16 v7, p5

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3629
    const-wide v3, 0x10500000004L

    move/from16 v8, p6

    invoke-virtual {p0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3630
    const-wide v3, 0x10500000005L

    move/from16 v9, p7

    invoke-virtual {p0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3631
    const-wide v3, 0x10500000006L

    move/from16 v10, p8

    invoke-virtual {p0, v3, v4, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3632
    const-wide v3, 0x10500000007L

    move/from16 v11, p9

    invoke-virtual {p0, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3633
    if-eqz p10, :cond_0

    .line 3634
    const-wide v3, 0x10500000009L

    move/from16 v12, p12

    invoke-virtual {p0, v3, v4, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move/from16 v13, p11

    goto :goto_0

    .line 3636
    :cond_0
    move/from16 v12, p12

    const-wide v3, 0x10500000008L

    move/from16 v13, p11

    invoke-virtual {p0, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3638
    :goto_0
    const-wide v3, 0x1050000000aL

    move/from16 v14, p13

    invoke-virtual {p0, v3, v4, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3640
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3641
    return-void
.end method

.method private blacklist generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2241
    nop

    .line 2242
    invoke-static {p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2243
    .local v0, "serviceClassName":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2244
    :cond_0
    invoke-static {v0}, Landroid/app/Service;->getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;

    move-result-object v1

    :goto_0
    nop

    .line 2245
    .local v1, "inner":Ljava/lang/Exception;
    new-instance v2, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    invoke-direct {v2, p1, v1}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 4995
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 4997
    .local v0, "agentName":Ljava/lang/String;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4999
    :cond_0
    const-string v0, "android.app.backup.FullBackupAgent"

    .line 5001
    :cond_1
    return-object v0
.end method

.method private blacklist getBackupAgentsForUser(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation

    .line 5026
    iget-object v0, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 5027
    .local v0, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    if-nez v0, :cond_0

    .line 5028
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 5029
    iget-object v1, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5031
    :cond_0
    return-object v0
.end method

.method private blacklist getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .locals 4
    .param p1, "auth"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 7916
    new-instance v0, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v0, p1, p2}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 7917
    .local v0, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v1, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 7918
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderKey;

    .line 7919
    .local v2, "lock":Landroid/app/ActivityThread$ProviderKey;
    if-nez v2, :cond_0

    .line 7920
    move-object v2, v0

    .line 7921
    iget-object v3, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7923
    :cond_0
    monitor-exit v1

    return-object v2

    .line 7924
    .end local v2    # "lock":Landroid/app/ActivityThread$ProviderKey;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private greylist-max-o getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "insInfo"    # Landroid/content/pm/InstrumentationInfo;

    .line 7251
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7252
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7255
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7256
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7257
    .local v0, "secondaryIsa":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.dalvik.vm.isa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7258
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7259
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v0, v2

    .line 7261
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v2

    .line 7262
    .local v2, "runtimeIsa":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7263
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v3

    .line 7266
    .end local v0    # "secondaryIsa":Ljava/lang/String;
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "runtimeIsa":Ljava/lang/String;
    :cond_1
    iget-object v0, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static greylist-max-o getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    .line 4810
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private greylist-max-o getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    .line 2931
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;
    .locals 9
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z
    .param p7, "isSdkSandbox"    # Z

    .line 2939
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZZ)Landroid/app/LoadedApk;
    .locals 16
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z
    .param p7, "isSdkSandbox"    # Z
    .param p8, "isCallFromReceiver"    # Z

    .line 2946
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v11, v0

    .line 2947
    .local v11, "differentUser":Z
    iget-object v12, v9, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v12

    .line 2949
    if-nez v11, :cond_3

    if-eqz p7, :cond_1

    goto :goto_1

    .line 2952
    :cond_1
    if-eqz p5, :cond_2

    .line 2953
    :try_start_0
    iget-object v0, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_2

    .line 2955
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    iget-object v0, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_2

    .line 2951
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 2958
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    goto :goto_3

    .line 3043
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 2958
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    const/4 v1, 0x0

    :goto_3
    move-object v13, v1

    .line 2960
    .local v13, "packageInfo":Landroid/app/LoadedApk;
    if-eqz v13, :cond_d

    .line 2961
    invoke-static {v13, v10}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2962
    invoke-virtual {v13}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide v4, v10, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_5

    .line 2965
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo() called with an older ApplicationInfo than the cached version for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2969
    :cond_5
    const/4 v1, 0x1

    .line 2970
    .local v1, "needAppInfoUpdate":Z
    if-eqz p8, :cond_b

    .line 2971
    iget-object v2, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v13, v3, v2}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/ContextImpl;

    .line 2972
    .local v2, "context":Landroid/app/ContextImpl;
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    .line 2973
    .local v3, "configLocaleList":Landroid/os/LocaleList;
    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-direct {v9, v4}, Landroid/app/ActivityThread;->getlangListFromOverlayPaths([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 2975
    .local v4, "broadcastList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2976
    .local v5, "missingLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 2977
    invoke-virtual {v3, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 2978
    .local v7, "lang":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v14, 0x3

    if-ne v8, v14, :cond_7

    .line 2979
    const-string v8, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LocaleChanged: trying to get ISO_639_1 mapping for locale: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    const-string v8, "fil"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2981
    const-string/jumbo v8, "tl"

    move-object v7, v8

    goto :goto_5

    .line 2983
    :cond_6
    const/4 v7, 0x0

    .line 2986
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 2987
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2976
    .end local v7    # "lang":Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2990
    .end local v6    # "i":I
    :cond_9
    invoke-interface {v5, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2991
    invoke-virtual {v13}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Landroid/app/ActivityThread;->getlangListFromOverlayPaths([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 2993
    .local v6, "currentLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2994
    .local v8, "locale":Ljava/lang/String;
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2995
    const/4 v1, 0x0

    .line 2996
    goto :goto_7

    .line 2998
    .end local v8    # "locale":Ljava/lang/String;
    :cond_a
    goto :goto_6

    .line 3000
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v3    # "configLocaleList":Landroid/os/LocaleList;
    .end local v4    # "broadcastList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "missingLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "currentLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    :goto_7
    if-eqz v1, :cond_c

    .line 3001
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageInfo() caused update to cached ApplicationInfo for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3004
    .local v2, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v9, v10, v2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3005
    invoke-virtual {v13, v10, v2}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3011
    .end local v1    # "needAppInfoUpdate":Z
    .end local v2    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    :goto_8
    monitor-exit v12

    return-object v13

    .line 3022
    :cond_d
    new-instance v14, Landroid/app/LoadedApk;

    if-eqz p5, :cond_e

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    move v7, v2

    goto :goto_9

    :cond_e
    move v7, v3

    :goto_9
    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    move-object v1, v14

    .line 3027
    .end local v13    # "packageInfo":Landroid/app/LoadedApk;
    .local v1, "packageInfo":Landroid/app/LoadedApk;
    iget-boolean v2, v9, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v2, :cond_f

    const-string v2, "android"

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3028
    nop

    .line 3029
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 3028
    invoke-virtual {v1, v10, v2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3032
    :cond_f
    if-nez v11, :cond_12

    if-eqz p7, :cond_10

    goto :goto_a

    .line 3034
    :cond_10
    if-eqz p5, :cond_11

    .line 3035
    iget-object v2, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 3038
    :cond_11
    iget-object v2, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3042
    :cond_12
    :goto_a
    monitor-exit v12

    return-object v1

    .line 3043
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    :goto_b
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Z)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "isSdkSandbox"    # Z

    .line 2912
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .line 2721
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_0

    .line 2722
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0

    .line 2724
    :cond_0
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2725
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2726
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method public static blacklist getPermissionManager()Landroid/permission/IPermissionManager;
    .locals 2

    .line 2731
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    if-eqz v0, :cond_0

    .line 2732
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v0

    .line 2734
    :cond_0
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2735
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    .line 2736
    sget-object v1, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v1
.end method

.method public static blacklist getProcessDisplayId()I
    .locals 1

    .line 8917
    sget v0, Landroid/app/ActivityThread;->sProcessDisplayId:I

    return v0
.end method

.method private blacklist getProfileSizeOfApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 8955
    const-wide/16 v0, 0x0

    .line 8957
    .local v0, "len":J
    if-eqz p1, :cond_0

    .line 8958
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/misc/profiles/cur/0/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/primary.prof"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8959
    .local v2, "profile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8960
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    move-wide v0, v3

    .line 8964
    .end local v2    # "profile":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "PkgPredictorService"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ipm/SecIpmManager;

    .line 8965
    .local v2, "mSecIpmManager":Lcom/samsung/android/ipm/SecIpmManager;
    if-eqz v2, :cond_1

    .line 8966
    const-string v3, "[secipm]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSecIpmManager setProfileLength "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " profile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8967
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/samsung/android/ipm/SecIpmManager;->setProfileLength(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8971
    .end local v2    # "mSecIpmManager":Lcom/samsung/android/ipm/SecIpmManager;
    :cond_1
    goto :goto_0

    .line 8969
    :catch_0
    move-exception v2

    .line 8970
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8973
    .end local v0    # "len":J
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist getThemeResourceFromMappingTable()V
    .locals 14

    .line 2776
    const-string v0, "ThemeApp"

    .line 2777
    .local v0, "TAG_THEME_APP":Ljava/lang/String;
    const-string v1, "className"

    .line 2778
    .local v1, "TAG_ATTR_CLASSNAME":Ljava/lang/String;
    const-string v2, "iconId"

    .line 2779
    .local v2, "TAG_ATTR_ICONID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2781
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x117007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v3, v4

    .line 2782
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    .line 2783
    if-eqz v3, :cond_6

    .line 2784
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 2786
    .local v4, "depth":I
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x3

    if-ne v5, v7, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v4, :cond_6

    :cond_0
    const/4 v5, 0x1

    if-eq v6, v5, :cond_6

    .line 2788
    const/4 v5, 0x2

    if-eq v6, v5, :cond_1

    .line 2789
    goto :goto_0

    .line 2791
    :cond_1
    const/4 v5, 0x0

    .line 2792
    .local v5, "className":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2793
    .local v7, "iconId":Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2794
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2795
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v9

    .line 2796
    .local v9, "size":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_4

    .line 2797
    invoke-interface {v3, v10}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    .line 2798
    .local v11, "attrName":Ljava/lang/String;
    invoke-interface {v3, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 2799
    .local v12, "attrValue":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2800
    move-object v5, v12

    .line 2802
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2803
    move-object v7, v12

    .line 2796
    .end local v11    # "attrName":Ljava/lang/String;
    .end local v12    # "attrValue":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2806
    .end local v7    # "iconId":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_4
    iget-object v10, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2807
    const/4 v5, 0x0

    .line 2810
    .end local v5    # "className":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "size":I
    :cond_5
    goto :goto_0

    .line 2815
    .end local v4    # "depth":I
    .end local v6    # "type":I
    :cond_6
    goto :goto_2

    .line 2812
    :catch_0
    move-exception v4

    .line 2813
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during parsing theme app list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityThread"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2816
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private blacklist getlangListFromOverlayPaths([Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p1, "overlayPaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3053
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3054
    .local v0, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 3055
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 3056
    .local v4, "overlayPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3057
    const-string v5, "/data/overlays/current_locale_apks/files"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3059
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 3060
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 3061
    goto :goto_1

    .line 3063
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3064
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 3065
    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3066
    .local v5, "lang":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3055
    .end local v4    # "overlayPath":Ljava/lang/String;
    .end local v5    # "lang":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3071
    :cond_2
    return-object v0
.end method

.method static greylist-max-o handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    .locals 3
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "loadedApk"    # Landroid/app/LoadedApk;

    .line 4760
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 4761
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-static {p0, v1}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4762
    return-void

    .line 4764
    :cond_1
    if-eqz v1, :cond_2

    .line 4765
    invoke-static {p0, v0}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 4767
    :cond_2
    return-void
.end method

.method static blacklist handleAttachStartupAgents(Ljava/lang/String;)V
    .locals 6
    .param p0, "dataDir"    # Ljava/lang/String;

    .line 4771
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 4772
    .local v0, "code_cache":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4773
    return-void

    .line 4775
    :cond_0
    const-string/jumbo v2, "startup_agents"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 4776
    .local v2, "startup_path":Ljava/nio/file/Path;
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4777
    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 4778
    .local v3, "p":Ljava/nio/file/Path;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4779
    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 4778
    invoke-static {v4, v5}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4783
    .end local v3    # "p":Ljava/nio/file/Path;
    goto :goto_0

    .line 4787
    .end local v0    # "code_cache":Ljava/nio/file/Path;
    .end local v2    # "startup_path":Ljava/nio/file/Path;
    :cond_1
    goto :goto_1

    .line 4785
    :catch_0
    move-exception v0

    .line 4788
    :goto_1
    return-void
.end method

.method private greylist handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 24
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7272
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    .line 7274
    const-string v0, "debug.allocTracker.stackDepth"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7275
    .local v3, "property":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7276
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->setAllocTrackerStackDepth(I)V

    .line 7278
    :cond_0
    iget-boolean v0, v2, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 7279
    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->setRecentAllocationsTrackingEnabled(Z)V

    .line 7282
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v2, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    iget-wide v11, v2, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    invoke-static/range {v5 .. v12}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 7286
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 7287
    iget v0, v2, Landroid/app/ActivityThread$AppBindData;->dssScale:F

    iput v0, v1, Landroid/app/ActivityThread;->mDssScale:F

    .line 7291
    :cond_2
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    invoke-static {v0}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 7293
    invoke-static {}, Ldalvik/system/AppSpecializationHooks;->handleCompatChangesBeforeBindingApplication()V

    .line 7295
    iput-object v2, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 7296
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v5, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v5}, Landroid/app/ConfigurationController;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 7297
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v5, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v5}, Landroid/app/ConfigurationController;->setCompatConfiguration(Landroid/content/res/Configuration;)V

    .line 7298
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, v1, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 7300
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 7301
    const/4 v0, 0x0

    .line 7302
    .local v0, "agent":Ljava/lang/String;
    iget-object v5, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v5, :cond_3

    .line 7303
    iget-object v5, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v6, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v6, v6, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v6, v5, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 7304
    iget-object v5, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v6, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v6, v6, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v6, v5, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 7305
    iget-object v5, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v6, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v6, v6, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v6, v5, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 7306
    iget-object v5, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v6, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v6, v6, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v6, v5, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 7307
    iget-object v5, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v6, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v6, v6, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v6, v5, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 7308
    iget-object v5, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v5, v5, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v5, :cond_3

    .line 7309
    iget-object v5, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v5, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    .line 7314
    :cond_3
    move-object v5, v0

    .end local v0    # "agent":Ljava/lang/String;
    .local v5, "agent":Ljava/lang/String;
    :goto_0
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 7315
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    iget-object v6, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7317
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 7315
    invoke-static {v0, v6, v7}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7318
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessPackageName(Ljava/lang/String;)V

    .line 7322
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessDataDirectory(Ljava/lang/String;)V

    .line 7324
    iget-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_4

    .line 7325
    iget-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 7332
    :cond_4
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xc

    if-gt v0, v6, :cond_5

    .line 7333
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 7337
    :cond_5
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1d

    const/4 v7, 0x0

    if-lt v0, v6, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v7

    :goto_1
    invoke-static {v0}, Landroid/util/UtilConfig;->setThrowExceptionForUpperArrayOutOfBounds(Z)V

    .line 7340
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 7344
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/graphics/Compatibility;->setTargetSdkVersion(I)V

    .line 7352
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 7357
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 7361
    :try_start_0
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    invoke-static {v0}, Landroid/graphics/Typeface;->setSystemFontMap(Landroid/os/SharedMemory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7365
    goto :goto_2

    .line 7362
    :catch_0
    move-exception v0

    .line 7363
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "ActivityThread"

    const-string v9, "Failed to parse serialized system font map"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7364
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 7368
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v8, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v8

    .line 7374
    :try_start_1
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v10, v2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v9, v10}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 7375
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v1, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 7378
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    .line 7379
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 7381
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v7

    :goto_3
    move v8, v0

    .line 7382
    .local v8, "isSdkSandbox":Z
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {v1, v0, v9, v8}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Z)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7383
    if-eqz v8, :cond_8

    .line 7384
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    iget-object v10, v2, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/app/LoadedApk;->setSdkSandboxStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7388
    :cond_8
    if-eqz v5, :cond_9

    .line 7389
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v5, v0}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 7395
    :cond_9
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_a

    .line 7397
    iput-boolean v4, v1, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 7398
    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 7400
    :cond_a
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v9}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 7404
    iget-object v0, v1, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v9, "time_12_24"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7405
    .local v9, "use24HourSetting":Ljava/lang/String;
    const/4 v0, 0x0

    .line 7406
    .local v0, "is24Hr":Ljava/lang/Boolean;
    if-eqz v9, :cond_c

    .line 7407
    const-string v10, "24"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_b
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    move-object v0, v10

    goto :goto_5

    .line 7406
    :cond_c
    move-object v10, v0

    .line 7412
    .end local v0    # "is24Hr":Ljava/lang/Boolean;
    .local v10, "is24Hr":Ljava/lang/Boolean;
    :goto_5
    invoke-static {v10}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 7414
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    .line 7416
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 7417
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 7419
    iget v0, v2, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v11, 0x2

    if-eqz v0, :cond_e

    .line 7421
    const/16 v0, 0x1fa4

    invoke-static {v0}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 7422
    iget v0, v2, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-ne v0, v11, :cond_d

    .line 7423
    const-string v0, "ActivityThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Application "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v13}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is waiting for the debugger on port 8100..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7426
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v12

    .line 7428
    .local v12, "mgr":Landroid/app/IActivityManager;
    :try_start_2
    iget-object v0, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v12, v0, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 7431
    nop

    .line 7433
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 7436
    :try_start_3
    iget-object v0, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v12, v0, v7}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7439
    nop

    .line 7441
    .end local v12    # "mgr":Landroid/app/IActivityManager;
    goto :goto_6

    .line 7437
    .restart local v12    # "mgr":Landroid/app/IActivityManager;
    :catch_1
    move-exception v0

    .line 7438
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 7429
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 7430
    .restart local v0    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 7442
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v12    # "mgr":Landroid/app/IActivityManager;
    :cond_d
    const-string v0, "ActivityThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Application "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v13}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " can be debugged on port 8100..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7448
    :cond_e
    :goto_6
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v11

    if-eqz v0, :cond_f

    move v0, v4

    goto :goto_7

    :cond_f
    move v0, v7

    :goto_7
    move v11, v0

    .line 7449
    .local v11, "isAppDebuggable":Z
    sget-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_9

    .line 7450
    :cond_10
    if-nez v11, :cond_12

    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    move v0, v7

    goto :goto_9

    :cond_12
    :goto_8
    move v0, v4

    :goto_9
    move v12, v0

    .line 7451
    .local v12, "isAppProfileable":Z
    invoke-static {v12}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 7452
    if-nez v12, :cond_13

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_14

    :cond_13
    iget-boolean v0, v2, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    if-eqz v0, :cond_14

    .line 7453
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 7457
    :cond_14
    if-nez v12, :cond_15

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_16

    .line 7458
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->nInitZygoteChildHeapProfiling()V

    .line 7462
    :cond_16
    if-nez v11, :cond_18

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_17

    goto :goto_a

    :cond_17
    move v0, v7

    goto :goto_b

    :cond_18
    :goto_a
    move v0, v4

    :goto_b
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setDebuggingEnabled(Z)V

    .line 7463
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setPackageName(Ljava/lang/String;)V

    .line 7466
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setContextForInit(Landroid/content/Context;)V

    .line 7471
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v0, :cond_19

    .line 7472
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    move-object v13, v0

    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    goto :goto_c

    .line 7474
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_19
    const/4 v0, 0x0

    move-object v13, v0

    .line 7477
    .local v13, "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_c
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v1, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v14

    .line 7478
    .local v14, "appContext":Landroid/app/ContextImpl;
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, v14}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 7481
    const-string v0, "Setup proxies"

    move v15, v8

    .end local v8    # "isSdkSandbox":Z
    .local v15, "isSdkSandbox":Z
    const-wide/16 v7, 0x40

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7487
    :try_start_4
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 7488
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 7489
    :try_start_5
    const-class v6, Landroid/net/ConnectivityManager;

    .line 7490
    invoke-virtual {v14, v6}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 7491
    .local v6, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_d

    .line 7494
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v6    # "cm":Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v9

    goto/16 :goto_17

    :cond_1a
    :goto_d
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 7495
    nop

    .line 7497
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 7498
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v6

    .line 7500
    .local v6, "oldMask":I
    :try_start_6
    invoke-direct {v1, v14}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 7502
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 7503
    nop

    .line 7504
    .end local v6    # "oldMask":I
    goto :goto_e

    .line 7502
    .restart local v6    # "oldMask":I
    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 7503
    throw v4

    .line 7505
    .end local v6    # "oldMask":I
    :cond_1b
    invoke-static {v4}, Landroid/graphics/HardwareRenderer;->setIsolatedProcess(Z)V

    .line 7511
    :goto_e
    const-string v0, "NetworkSecurityConfigProvider.install"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7512
    invoke-static {v14}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    .line 7513
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 7517
    new-instance v0, Landroid/app/ResourcesOffloading;

    invoke-direct {v0, v14}, Landroid/app/ResourcesOffloading;-><init>(Landroid/content/Context;)V

    iget-object v6, v2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ResourcesOffloading;->resourcesOffloading(Ljava/lang/String;)V

    .line 7524
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 7525
    invoke-static {v14}, Landroid/net/TrafficStats;->init(Landroid/content/Context;)V

    .line 7529
    :cond_1c
    if-eqz v13, :cond_1d

    .line 7530
    invoke-direct {v1, v13, v2, v14}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V

    goto :goto_f

    .line 7532
    :cond_1d
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 7533
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 7536
    :goto_f
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v0, v6

    if-eqz v0, :cond_1e

    .line 7537
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    goto :goto_10

    .line 7541
    :cond_1e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    .line 7548
    :goto_10
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 7549
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 7553
    .local v7, "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_7
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-boolean v8, v2, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v4, v0

    .line 7556
    .local v4, "app":Landroid/app/Application;
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v4, v0}, Landroid/app/Application;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    .line 7559
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v4, v0}, Landroid/app/Application;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 7560
    const/16 v0, 0xa4

    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v8}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 7562
    iput-object v4, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 7564
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 7565
    :try_start_8
    iget-boolean v0, v1, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    move v8, v0

    .line 7568
    .local v8, "updateHttpProxy":Z
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 7569
    if-eqz v8, :cond_1f

    .line 7570
    :try_start_9
    invoke-static {v4}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_11

    .line 7625
    .end local v4    # "app":Landroid/app/Application;
    .end local v8    # "updateHttpProxy":Z
    :catchall_2
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v9

    goto/16 :goto_16

    .line 7575
    .restart local v4    # "app":Landroid/app/Application;
    .restart local v8    # "updateHttpProxy":Z
    :cond_1f
    :goto_11
    :try_start_a
    iget-boolean v0, v2, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-nez v0, :cond_20

    .line 7576
    :try_start_b
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 7577
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {v1, v4, v0}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 7584
    :cond_20
    :try_start_c
    const-string/jumbo v0, "persist.sys.app_webview_preload_need"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-object/from16 v18, v3

    .end local v3    # "property":Ljava/lang/String;
    .local v18, "property":Ljava/lang/String;
    :try_start_d
    const-string v3, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7585
    .local v0, "webviewPreload":Ljava/lang/String;
    const-string/jumbo v3, "preload"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 7586
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 7587
    .local v3, "processName":Ljava/lang/String;
    move-object/from16 v19, v5

    .end local v5    # "agent":Ljava/lang/String;
    .local v19, "agent":Ljava/lang/String;
    :try_start_e
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7588
    .local v5, "strs":[Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "webviewPreload":Ljava/lang/String;
    .local v20, "webviewPreload":Ljava/lang/String;
    array-length v0, v5

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v5, v0

    .line 7589
    .local v0, "pName":Ljava/lang/String;
    move-object/from16 v21, v5

    .end local v5    # "strs":[Ljava/lang/String;
    .local v21, "strs":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v23, v8

    const/4 v8, 0x4

    .end local v8    # "updateHttpProxy":Z
    .local v23, "updateHttpProxy":Z
    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-boolean v5, v1, Landroid/app/ActivityThread;->webviewPreloaded:Z

    if-nez v5, :cond_21

    .line 7590
    const-string/jumbo v5, "webview preload"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v22, v9

    const-wide/16 v8, 0x40

    .end local v9    # "use24HourSetting":Ljava/lang/String;
    .local v22, "use24HourSetting":Ljava/lang/String;
    :try_start_f
    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7591
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/app/ActivityThread;->webviewPreloaded:Z

    .line 7592
    new-instance v5, Ljava/lang/Thread;

    new-instance v8, Landroid/app/ActivityThread$WebviewRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Landroid/app/ActivityThread$WebviewRunnable;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$WebviewRunnable-IA;)V

    invoke-direct {v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 7593
    const-wide/16 v8, 0x40

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_12

    .line 7589
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .restart local v9    # "use24HourSetting":Ljava/lang/String;
    :cond_21
    move-object/from16 v22, v9

    .end local v9    # "use24HourSetting":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    goto :goto_12

    .line 7625
    .end local v0    # "pName":Ljava/lang/String;
    .end local v3    # "processName":Ljava/lang/String;
    .end local v4    # "app":Landroid/app/Application;
    .end local v20    # "webviewPreload":Ljava/lang/String;
    .end local v21    # "strs":[Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .end local v23    # "updateHttpProxy":Z
    .restart local v9    # "use24HourSetting":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v9

    .end local v9    # "use24HourSetting":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    goto/16 :goto_16

    .line 7585
    .end local v19    # "agent":Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .local v0, "webviewPreload":Ljava/lang/String;
    .restart local v4    # "app":Landroid/app/Application;
    .local v5, "agent":Ljava/lang/String;
    .restart local v8    # "updateHttpProxy":Z
    .restart local v9    # "use24HourSetting":Ljava/lang/String;
    :cond_22
    move-object/from16 v20, v0

    move-object/from16 v19, v5

    move/from16 v23, v8

    move-object/from16 v22, v9

    .line 7603
    .end local v0    # "webviewPreload":Ljava/lang/String;
    .end local v5    # "agent":Ljava/lang/String;
    .end local v8    # "updateHttpProxy":Z
    .end local v9    # "use24HourSetting":Ljava/lang/String;
    .restart local v19    # "agent":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    .restart local v23    # "updateHttpProxy":Z
    :goto_12
    :try_start_10
    iget-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 7609
    nop

    .line 7611
    :try_start_11
    const-string v0, "com.android.phone"

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7612
    const-string v0, "ActivityThread"

    const-string v3, "!@Boot_EBS_N: callApplicationOnCreate com.android.phone"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7614
    :cond_23
    iget-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v4}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 7621
    goto :goto_13

    .line 7615
    :catch_3
    move-exception v0

    .line 7616
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12
    iget-object v3, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v3, :cond_28

    .line 7625
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v23    # "updateHttpProxy":Z
    :goto_13
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1b

    if-lt v0, v3, :cond_24

    .line 7626
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 7627
    :cond_24
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7632
    :cond_25
    invoke-static {v14}, Landroid/provider/FontsContract;->setApplicationContextForResources(Landroid/content/Context;)V

    .line 7633
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_27

    .line 7636
    :try_start_13
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x80

    .line 7639
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 7636
    invoke-interface {v0, v3, v8, v9, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7640
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_26

    .line 7641
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "preloaded_fonts"

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 7643
    .local v3, "preloadedFontsResource":I
    if-eqz v3, :cond_26

    .line 7644
    iget-object v5, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->preloadFonts(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_4

    .line 7649
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "preloadedFontsResource":I
    :cond_26
    goto :goto_14

    .line 7647
    :catch_4
    move-exception v0

    .line 7648
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 7651
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_14
    return-void

    .line 7617
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "updateHttpProxy":Z
    :cond_28
    :try_start_14
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create application "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7618
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7619
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v7    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v10    # "is24Hr":Ljava/lang/Boolean;
    .end local v11    # "isAppDebuggable":Z
    .end local v12    # "isAppProfileable":Z
    .end local v13    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v14    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "isSdkSandbox":Z
    .end local v18    # "property":Ljava/lang/String;
    .end local v19    # "agent":Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v3

    .line 7605
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v7    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v10    # "is24Hr":Ljava/lang/Boolean;
    .restart local v11    # "isAppDebuggable":Z
    .restart local v12    # "isAppProfileable":Z
    .restart local v13    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v14    # "appContext":Landroid/app/ContextImpl;
    .restart local v15    # "isSdkSandbox":Z
    .restart local v18    # "property":Ljava/lang/String;
    .restart local v19    # "agent":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catch_5
    move-exception v0

    .line 7606
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception thrown in onCreate() of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7608
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v7    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v10    # "is24Hr":Ljava/lang/Boolean;
    .end local v11    # "isAppDebuggable":Z
    .end local v12    # "isAppProfileable":Z
    .end local v13    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v14    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "isSdkSandbox":Z
    .end local v18    # "property":Ljava/lang/String;
    .end local v19    # "agent":Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 7625
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "app":Landroid/app/Application;
    .end local v23    # "updateHttpProxy":Z
    .restart local v5    # "agent":Ljava/lang/String;
    .restart local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v7    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v9    # "use24HourSetting":Ljava/lang/String;
    .restart local v10    # "is24Hr":Ljava/lang/Boolean;
    .restart local v11    # "isAppDebuggable":Z
    .restart local v12    # "isAppProfileable":Z
    .restart local v13    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v14    # "appContext":Landroid/app/ContextImpl;
    .restart local v15    # "isSdkSandbox":Z
    .restart local v18    # "property":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v22, v9

    .end local v5    # "agent":Ljava/lang/String;
    .end local v9    # "use24HourSetting":Ljava/lang/String;
    .restart local v19    # "agent":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    goto :goto_16

    .line 7568
    .end local v18    # "property":Ljava/lang/String;
    .end local v19    # "agent":Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .local v3, "property":Ljava/lang/String;
    .restart local v4    # "app":Landroid/app/Application;
    .restart local v5    # "agent":Ljava/lang/String;
    .restart local v9    # "use24HourSetting":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v9

    .end local v3    # "property":Ljava/lang/String;
    .end local v5    # "agent":Ljava/lang/String;
    .end local v9    # "use24HourSetting":Ljava/lang/String;
    .restart local v18    # "property":Ljava/lang/String;
    .restart local v19    # "agent":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .end local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v7    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v10    # "is24Hr":Ljava/lang/Boolean;
    .end local v11    # "isAppDebuggable":Z
    .end local v12    # "isAppProfileable":Z
    .end local v13    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v14    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "isSdkSandbox":Z
    .end local v18    # "property":Ljava/lang/String;
    .end local v19    # "agent":Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 7625
    .end local v4    # "app":Landroid/app/Application;
    .restart local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v7    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v10    # "is24Hr":Ljava/lang/Boolean;
    .restart local v11    # "isAppDebuggable":Z
    .restart local v12    # "isAppProfileable":Z
    .restart local v13    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v14    # "appContext":Landroid/app/ContextImpl;
    .restart local v15    # "isSdkSandbox":Z
    .restart local v18    # "property":Ljava/lang/String;
    .restart local v19    # "agent":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_6
    move-exception v0

    goto :goto_16

    .line 7568
    .restart local v4    # "app":Landroid/app/Application;
    :catchall_7
    move-exception v0

    goto :goto_15

    .line 7625
    .end local v4    # "app":Landroid/app/Application;
    .end local v18    # "property":Ljava/lang/String;
    .end local v19    # "agent":Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .restart local v3    # "property":Ljava/lang/String;
    .restart local v5    # "agent":Ljava/lang/String;
    .restart local v9    # "use24HourSetting":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v9

    .end local v3    # "property":Ljava/lang/String;
    .end local v5    # "agent":Ljava/lang/String;
    .end local v9    # "use24HourSetting":Ljava/lang/String;
    .restart local v18    # "property":Ljava/lang/String;
    .restart local v19    # "agent":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    :goto_16
    iget-object v3, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_29

    .line 7626
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 7627
    :cond_29
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7629
    :cond_2a
    throw v0

    .line 7494
    .end local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v7    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v18    # "property":Ljava/lang/String;
    .end local v19    # "agent":Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .restart local v3    # "property":Ljava/lang/String;
    .restart local v5    # "agent":Ljava/lang/String;
    .restart local v9    # "use24HourSetting":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v9

    .end local v3    # "property":Ljava/lang/String;
    .end local v5    # "agent":Ljava/lang/String;
    .end local v9    # "use24HourSetting":Ljava/lang/String;
    .restart local v18    # "property":Ljava/lang/String;
    .restart local v19    # "agent":Ljava/lang/String;
    .restart local v22    # "use24HourSetting":Ljava/lang/String;
    :goto_17
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 7495
    throw v0

    .line 7379
    .end local v10    # "is24Hr":Ljava/lang/Boolean;
    .end local v11    # "isAppDebuggable":Z
    .end local v12    # "isAppProfileable":Z
    .end local v13    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v14    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "isSdkSandbox":Z
    .end local v18    # "property":Ljava/lang/String;
    .end local v19    # "agent":Ljava/lang/String;
    .end local v22    # "use24HourSetting":Ljava/lang/String;
    .restart local v3    # "property":Ljava/lang/String;
    .restart local v5    # "agent":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    .end local v3    # "property":Ljava/lang/String;
    .end local v5    # "agent":Ljava/lang/String;
    .restart local v18    # "property":Ljava/lang/String;
    .restart local v19    # "agent":Ljava/lang/String;
    :goto_18
    :try_start_17
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_18
.end method

.method private greylist-max-o handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 6
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 5092
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 5093
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5096
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_2

    .line 5098
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5099
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 5100
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 5099
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5102
    :try_start_1
    iget-boolean v2, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v2, :cond_0

    .line 5103
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    .line 5104
    .local v2, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 5106
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 5107
    :cond_0
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 5108
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5113
    :goto_0
    nop

    .line 5120
    goto :goto_1

    .line 5111
    :catch_0
    move-exception v2

    .line 5112
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5114
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    :catch_1
    move-exception v2

    .line 5115
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 5116
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5118
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5122
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private greylist-max-o handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 11
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 4920
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 4921
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 4920
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4922
    .local v0, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v3, "ActivityThread"

    if-eq v1, v2, :cond_0

    .line 4923
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to instantiate non-matching package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4925
    return-void

    .line 4929
    .end local v0    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    nop

    .line 4932
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4935
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4936
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4937
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4938
    const-string v2, "Asked to create backup agent for nonexistent package"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    return-void

    .line 4942
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;

    move-result-object v2

    .line 4945
    .local v2, "classname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4946
    .local v4, "binder":Landroid/os/IBinder;
    :try_start_2
    iget v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v5}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 4947
    .local v5, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/backup/BackupAgent;

    .line 4948
    .local v6, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v6, :cond_2

    .line 4953
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v4    # "binder":Landroid/os/IBinder;
    .local v3, "binder":Landroid/os/IBinder;
    goto :goto_1

    .line 4958
    .end local v3    # "binder":Landroid/os/IBinder;
    .restart local v4    # "binder":Landroid/os/IBinder;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 4959
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v7, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/backup/BackupAgent;

    move-object v6, v8

    .line 4962
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 4963
    .local v8, "context":Landroid/app/ContextImpl;
    invoke-virtual {v8, v6}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 4964
    invoke-virtual {v6, v8}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 4966
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    iget v10, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->operationType:I

    invoke-virtual {v6, v9, v10}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;I)V

    .line 4967
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v9

    move-object v4, v9

    .line 4968
    invoke-virtual {v5, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4979
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .end local v8    # "context":Landroid/app/ContextImpl;
    move-object v3, v4

    goto :goto_1

    .line 4969
    :catch_0
    move-exception v7

    .line 4972
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Agent threw during creation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    iget v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_4

    iget v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3

    goto :goto_0

    .line 4976
    :cond_3
    nop

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 4984
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    :cond_4
    :goto_0
    move-object v3, v4

    .end local v4    # "binder":Landroid/os/IBinder;
    .restart local v3    # "binder":Landroid/os/IBinder;
    :goto_1
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-interface {v4, v1, v3, v7}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 4987
    nop

    .line 4991
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .end local v6    # "agent":Landroid/app/backup/BackupAgent;
    nop

    .line 4992
    return-void

    .line 4985
    .restart local v3    # "binder":Landroid/os/IBinder;
    .restart local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .restart local v6    # "agent":Landroid/app/backup/BackupAgent;
    :catch_1
    move-exception v4

    .line 4986
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    throw v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 4988
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .end local v6    # "agent":Landroid/app/backup/BackupAgent;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    :catch_2
    move-exception v3

    .line 4989
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create BackupAgent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4990
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4927
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 4928
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 12
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .line 5038
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5040
    iget-object v0, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5042
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 5046
    .local v1, "service":Landroid/app/Service;
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v9

    .line 5049
    .local v9, "app":Landroid/app/Application;
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5050
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    .local v2, "cl":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 5052
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 5054
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/ActivityThread$CreateServiceData;->intent:Landroid/content/Intent;

    .line 5055
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v4

    move-object v1, v4

    .line 5056
    nop

    .line 5057
    invoke-virtual {v1, p0, v0}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object v4

    .line 5056
    invoke-static {v4}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v4

    .line 5058
    .local v4, "context":Landroid/app/ContextImpl;
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 5059
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/ContextImpl;

    move-object v4, v5

    .line 5061
    :cond_1
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 5062
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 5063
    .local v5, "attributionTag":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/ContextImpl;

    move-object v4, v6

    move-object v11, v4

    goto :goto_1

    .line 5067
    .end local v5    # "attributionTag":Ljava/lang/String;
    :cond_2
    move-object v11, v4

    .end local v4    # "context":Landroid/app/ContextImpl;
    .local v11, "context":Landroid/app/ContextImpl;
    :goto_1
    invoke-virtual {v11}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 5068
    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v5

    new-array v6, v3, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/res/loader/ResourcesLoader;

    .line 5067
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 5070
    invoke-virtual {v11, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 5071
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 5072
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    .line 5071
    move-object v4, v1

    move-object v5, v11

    move-object v6, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 5073
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 5074
    iget-object v4, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5075
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5077
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v4, v5, v3, v3, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5081
    nop

    .line 5088
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v9    # "app":Landroid/app/Application;
    .end local v11    # "context":Landroid/app/ContextImpl;
    goto :goto_2

    .line 5079
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    .restart local v9    # "app":Landroid/app/Application;
    .restart local v11    # "context":Landroid/app/ContextImpl;
    :catch_0
    move-exception v3

    .line 5080
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "service":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateServiceData;
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5082
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "app":Landroid/app/Application;
    .end local v11    # "context":Landroid/app/ContextImpl;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "service":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateServiceData;
    :catch_1
    move-exception v2

    .line 5083
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5089
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 5084
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5086
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 8
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 5008
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5009
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 5010
    .local v1, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 5011
    .local v2, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/BackupAgent;

    .line 5012
    .local v3, "agent":Landroid/app/backup/BackupAgent;
    const-string v4, "ActivityThread"

    if-eqz v3, :cond_0

    .line 5014
    :try_start_0
    invoke-virtual {v3}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5018
    goto :goto_0

    .line 5015
    :catch_0
    move-exception v5

    .line 5016
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5017
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 5019
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5021
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    :goto_1
    return-void
.end method

.method private blacklist handleDexStarShowingDelayTimeChanged(I)V
    .locals 4
    .param p1, "time"    # I

    .line 9052
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

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

    .line 9053
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 9054
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    instance-of v3, v3, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_0

    .line 9055
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v3, Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/PhoneWindow;->handleDexStarShowingDelayTimeChanged(I)V

    .line 9057
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    goto :goto_0

    .line 9058
    :cond_1
    return-void
.end method

.method private blacklist handleDexTaskDockingChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 9153
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v0

    .line 9154
    .local v0, "state":I
    invoke-virtual {p1}, Landroid/app/Activity;->getDexTaskDocking()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 9155
    return-void

    .line 9157
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->onDexTaskDockingChanged(I)V

    .line 9158
    return-void
.end method

.method private greylist-max-o handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 5200
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5202
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5203
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 5204
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5205
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5206
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/app/Activity;->dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5207
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5210
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5211
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5212
    nop

    .line 5213
    return-void

    .line 5210
    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5211
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5212
    throw v1
.end method

.method private blacklist handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 5155
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5157
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/ThreadedRenderer;->handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5161
    nop

    :goto_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5162
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5163
    goto :goto_1

    .line 5161
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 5158
    :catch_0
    move-exception v1

    .line 5159
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "Caught exception from dumpGfxInfo()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5161
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 5164
    :goto_1
    return-void

    .line 5161
    :goto_2
    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5162
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5163
    throw v1
.end method

.method static greylist-max-o handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V
    .locals 4
    .param p0, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    .line 6991
    const-string v0, "ActivityThread"

    iget-boolean v1, p0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    if-eqz v1, :cond_0

    .line 6992
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6993
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 6994
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6996
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6997
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_1

    .line 6998
    iget-object v2, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 6999
    :cond_1
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    if-eqz v2, :cond_2

    .line 7000
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 7002
    :cond_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7004
    :goto_0
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 6996
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "dhd":Landroid/app/ActivityThread$DumpHeapData;
    :cond_3
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 7011
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "dhd":Landroid/app/ActivityThread$DumpHeapData;
    :catch_0
    move-exception v1

    .line 7013
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Heap dumper threw a runtime exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 7004
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 7005
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_4

    .line 7006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 7009
    :cond_4
    const-string v2, "Failed to dump heap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7014
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    nop

    .line 7016
    :goto_3
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 7019
    nop

    .line 7020
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_6

    .line 7021
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 7023
    :cond_6
    return-void

    .line 7017
    :catch_2
    move-exception v0

    .line 7018
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 5216
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5218
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5219
    .local v1, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v2, :cond_0

    .line 5220
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5221
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5222
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5223
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5226
    .end local v1    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5227
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5228
    nop

    .line 5229
    return-void

    .line 5226
    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5227
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5228
    throw v1
.end method

.method private blacklist handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V
    .locals 4
    .param p1, "info"    # Landroid/app/ActivityThread$DumpResourcesData;

    .line 5183
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5185
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5186
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5188
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/res/Resources;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5189
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5190
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_0

    .line 5191
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5194
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5195
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5196
    nop

    .line 5197
    return-void

    .line 5194
    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5195
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5196
    throw v1
.end method

.method private greylist-max-o handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 5167
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5169
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5170
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_0

    .line 5171
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5172
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5173
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5174
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5177
    .end local v1    # "s":Landroid/app/Service;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5178
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5179
    nop

    .line 5180
    return-void

    .line 5177
    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5178
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5179
    throw v1
.end method

.method private greylist-max-o handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4558
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4559
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 4560
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 4562
    :cond_0
    return-void
.end method

.method private blacklist handleFinishInstrumentationWithoutRestart()V
    .locals 1

    .line 7785
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    .line 7786
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 7787
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 7788
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 7789
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 7790
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 7791
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 7792
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 7793
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 7794
    return-void
.end method

.method private blacklist handleFlexPanelModeChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 9216
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    move-result v0

    .line 9217
    .local v0, "flexPanelEnabled":Z
    iget-boolean v1, p1, Landroid/app/Activity;->mIsFlexPanelMode:Z

    if-eq v1, v0, :cond_0

    .line 9218
    invoke-virtual {p1, v0}, Landroid/app/Activity;->onFlexPanelModeChanged(Z)V

    .line 9220
    :cond_0
    return-void
.end method

.method private blacklist handleFreeformHeaderTypeChanged(I)V
    .locals 4
    .param p1, "type"    # I

    .line 9038
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

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

    .line 9039
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 9040
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    instance-of v3, v3, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_0

    .line 9041
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v3, Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/PhoneWindow;->handleFreeformHeaderTypeChanged(I)V

    .line 9043
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    goto :goto_0

    .line 9044
    :cond_1
    return-void
.end method

.method private blacklist handleFreeformTaskPinningChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 9026
    invoke-virtual {p1}, Landroid/app/Activity;->getFreeformTaskPinning()I

    move-result v0

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getFreeformTaskPinningState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 9027
    return-void

    .line 9029
    :cond_0
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getFreeformTaskPinningState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->onFreeformTaskPinningChanged(I)V

    .line 9030
    return-void
.end method

.method private blacklist handleFreeformTaskStashingChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 9144
    invoke-virtual {p1}, Landroid/app/Activity;->getFreeformTaskStashing()I

    move-result v0

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getFreeformStashState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 9145
    return-void

    .line 9147
    :cond_0
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getFreeformStashState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->onFreeformStashingChanged(I)V

    .line 9148
    return-void
.end method

.method private blacklist handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V
    .locals 6
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7685
    :try_start_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 7686
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7687
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 7688
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    .line 7689
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7690
    invoke-static {p0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 7692
    .local v1, "appContext":Landroid/app/ContextImpl;
    invoke-direct {p0, v0, p1, v1}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7695
    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7700
    nop

    .line 7704
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v1    # "appContext":Landroid/app/ContextImpl;
    goto :goto_0

    .line 7696
    .restart local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v1    # "appContext":Landroid/app/ContextImpl;
    :catch_0
    move-exception v2

    .line 7697
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7699
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7702
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v1    # "appContext":Landroid/app/ContextImpl;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catch_1
    move-exception v0

    .line 7703
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string v2, "Error in handleInstrumentWithoutRestart"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7705
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private greylist-max-o handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 4737
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4738
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 4739
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4740
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4741
    if-nez p2, :cond_0

    .line 4742
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    goto :goto_0

    .line 4744
    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    .line 4747
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 4519
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4520
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4521
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    .line 4522
    .local v2, "lifecycleState":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 4526
    :cond_0
    if-eqz p3, :cond_1

    move-object v1, p3

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 4527
    .local v1, "nonNullArguments":Landroid/os/Bundle;
    :goto_0
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4528
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;

    invoke-direct {v4, p5}, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    .line 4527
    invoke-virtual {v3, p2, v1, p4, v4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4529
    .end local v1    # "nonNullArguments":Landroid/os/Bundle;
    .end local v2    # "lifecycleState":I
    goto :goto_2

    .line 4523
    .restart local v2    # "lifecycleState":I
    :cond_2
    :goto_1
    invoke-virtual {p5, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4524
    return-void

    .line 4530
    .end local v2    # "lifecycleState":I
    :cond_3
    invoke-virtual {p5, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4532
    :goto_2
    return-void
.end method

.method private greylist-max-p handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 18
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .line 4817
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string v12, ": "

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4819
    iget-object v0, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 4823
    .local v13, "component":Ljava/lang/String;
    iget-object v0, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4824
    iget-object v0, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v11, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    move-object v1, v0

    .local v0, "packageInfo":Landroid/app/LoadedApk;
    goto :goto_0

    .line 4826
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_0
    iget-object v0, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v11, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v10, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    move-object v1, v0

    .line 4830
    .local v1, "packageInfo":Landroid/app/LoadedApk;
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 4836
    .local v2, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v0, v10, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v4, v0

    .line 4837
    .local v4, "app":Landroid/app/Application;
    invoke-virtual {v4}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    .line 4838
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v5, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v5, :cond_1

    .line 4839
    :try_start_1
    iget-object v5, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/ContextImpl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    goto :goto_1

    .line 4853
    .end local v0    # "context":Landroid/app/ContextImpl;
    .end local v4    # "app":Landroid/app/Application;
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_b

    .line 4841
    .restart local v0    # "context":Landroid/app/ContextImpl;
    .restart local v4    # "app":Landroid/app/Application;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v5, :cond_2

    :try_start_3
    iget-object v5, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 4842
    iget-object v5, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 4843
    .local v5, "attributionTag":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/ContextImpl;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v6

    move-object v5, v0

    goto :goto_2

    .line 4845
    .end local v5    # "attributionTag":Ljava/lang/String;
    :cond_2
    move-object v5, v0

    .end local v0    # "context":Landroid/app/ContextImpl;
    .local v5, "context":Landroid/app/ContextImpl;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 4846
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v6, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4847
    iget-object v6, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    iget-object v7, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 4848
    invoke-static {v7}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v8, 0x1

    if-nez v7, :cond_4

    :try_start_5
    iget-object v7, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-static {v7}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v7, v8

    .line 4849
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    .line 4847
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4850
    invoke-virtual {v11, v0}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4851
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v6

    iget-object v7, v11, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 4852
    invoke-virtual {v6, v0, v7, v9}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 4860
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .local v6, "receiver":Landroid/content/BroadcastReceiver;
    nop

    .line 4871
    :try_start_7
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v9, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4872
    invoke-virtual {v6, v11}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 4875
    nop

    .line 4876
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->dexMode:I

    const/4 v14, 0x2

    if-ne v9, v14, :cond_5

    goto :goto_5

    :cond_5
    move v8, v3

    .line 4878
    .local v8, "isDexDualMode":Z
    :goto_5
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v16, v1

    goto/16 :goto_7

    :cond_7
    :goto_6
    instance-of v9, v6, Landroid/appwidget/AppWidgetProvider;

    if-eqz v9, :cond_9

    .line 4879
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v9

    .line 4880
    .local v9, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v9, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 4881
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v5, v3}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/ContextImpl;

    move-object v5, v14

    .line 4882
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4883
    .local v14, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v14}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 4884
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 4885
    .local v15, "globalConfig":Landroid/content/res/Configuration;
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    .local v16, "packageInfo":Landroid/app/LoadedApk;
    :try_start_8
    invoke-virtual {v7, v15, v14, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 4886
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_8

    .line 4887
    const-string v1, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3    # "display":Landroid/view/Display;
    .local v17, "display":Landroid/view/Display;
    const-string v3, "Performing receive of AppWidgetProvider ("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4888
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") d"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4889
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4887
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4886
    .end local v17    # "display":Landroid/view/Display;
    .restart local v3    # "display":Landroid/view/Display;
    :cond_8
    move-object/from16 v17, v3

    .end local v3    # "display":Landroid/view/Display;
    .restart local v17    # "display":Landroid/view/Display;
    goto :goto_7

    .line 4878
    .end local v9    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v14    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v15    # "globalConfig":Landroid/content/res/Configuration;
    .end local v16    # "packageInfo":Landroid/app/LoadedApk;
    .end local v17    # "display":Landroid/view/Display;
    .restart local v1    # "packageInfo":Landroid/app/LoadedApk;
    :cond_9
    move-object/from16 v16, v1

    .line 4894
    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    .end local v8    # "isDexDualMode":Z
    .restart local v16    # "packageInfo":Landroid/app/LoadedApk;
    :goto_7
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v1, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4906
    goto :goto_9

    .line 4896
    :catch_1
    move-exception v0

    goto :goto_8

    .line 4906
    .end local v16    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageInfo":Landroid/app/LoadedApk;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v16    # "packageInfo":Landroid/app/LoadedApk;
    goto :goto_a

    .line 4896
    .end local v16    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageInfo":Landroid/app/LoadedApk;
    :catch_2
    move-exception v0

    move-object/from16 v16, v1

    .line 4899
    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "packageInfo":Landroid/app/LoadedApk;
    :goto_8
    :try_start_9
    invoke-virtual {v11, v2}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 4900
    iget-object v1, v10, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v6, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_b

    .line 4906
    .end local v0    # "e":Ljava/lang/Exception;
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    :goto_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4907
    nop

    .line 4909
    invoke-virtual {v6}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4910
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 4912
    :cond_a
    return-void

    .line 4901
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to start receiver "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4903
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "mgr":Landroid/app/IActivityManager;
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "context":Landroid/app/ContextImpl;
    .end local v6    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v13    # "component":Ljava/lang/String;
    .end local v16    # "packageInfo":Landroid/app/LoadedApk;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$ReceiverData;
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 4906
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "mgr":Landroid/app/IActivityManager;
    .restart local v4    # "app":Landroid/app/Application;
    .restart local v5    # "context":Landroid/app/ContextImpl;
    .restart local v6    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v13    # "component":Ljava/lang/String;
    .restart local v16    # "packageInfo":Landroid/app/LoadedApk;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$ReceiverData;
    :catchall_1
    move-exception v0

    :goto_a
    sget-object v1, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4907
    throw v0

    .line 4853
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "context":Landroid/app/ContextImpl;
    .end local v6    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v16    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageInfo":Landroid/app/LoadedApk;
    :catch_3
    move-exception v0

    move-object/from16 v16, v1

    .line 4856
    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "packageInfo":Landroid/app/LoadedApk;
    :goto_b
    invoke-virtual {v11, v2}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 4857
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4859
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 14
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "configChanges"    # I
    .param p5, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p6, "startsNotResumed"    # Z
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/servertransaction/PendingTransactionActions;",
            "Z",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6451
    .local p3, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p4, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v11, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 6453
    .local v11, "customIntent":Landroid/content/Intent;
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 6454
    invoke-direct {p0, p1, v12, v10, v13}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 6456
    :cond_0
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v0, :cond_1

    .line 6457
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v10}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6460
    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V

    .line 6462
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6463
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 6464
    iput-boolean v12, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 6465
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6467
    if-eqz v8, :cond_3

    .line 6468
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v0, :cond_2

    .line 6469
    iput-object v8, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_0

    .line 6471
    :cond_2
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6474
    :cond_3
    :goto_0
    if-eqz v9, :cond_5

    .line 6475
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v0, :cond_4

    .line 6476
    iput-object v9, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_1

    .line 6478
    :cond_4
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6481
    :cond_5
    :goto_1
    move/from16 v0, p6

    iput-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 6482
    move-object/from16 v1, p7

    iput-object v1, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6484
    move-object/from16 v2, p5

    invoke-virtual {p0, p1, v2, v11}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    .line 6485
    return-void
.end method

.method private blacklist handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .locals 13
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .param p5, "retryCount"    # I

    .line 4461
    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p4

    iget-object v0, v7, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4462
    .local v10, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    const-string v1, "ActivityThread"

    if-nez v10, :cond_0

    .line 4463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestDirectActions(): no activity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4465
    return-void

    .line 4467
    :cond_0
    invoke-virtual {v10}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v11

    .line 4468
    .local v11, "lifecycleState":I
    const/4 v2, 0x2

    const-string v3, "): wrong lifecycle: "

    const-string/jumbo v4, "requestDirectActions("

    if-ge v11, v2, :cond_2

    .line 4470
    if-lez p5, :cond_1

    .line 4471
    iget-object v12, v7, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;-><init>()V

    add-int/lit8 v1, p5, -0x1

    .line 4474
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4472
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 4471
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4475
    return-void

    .line 4477
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4479
    return-void

    .line 4481
    :cond_2
    const/4 v2, 0x5

    if-lt v11, v2, :cond_3

    .line 4482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4484
    return-void

    .line 4486
    :cond_3
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_5

    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4487
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4488
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v5, p2

    goto :goto_1

    .line 4489
    :cond_5
    :goto_0
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_6

    .line 4490
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->destroy()V

    .line 4492
    :cond_6
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/VoiceInteractor;

    iget-object v2, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4493
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v5, p2

    invoke-direct {v1, p2, v2, v3, v4}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 4495
    :goto_1
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;

    invoke-direct {v1, v10, v9}, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;)V

    move-object/from16 v2, p3

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4512
    return-void
.end method

.method private greylist-max-o handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 8401
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "main"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8402
    .local v0, "main":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8405
    nop

    .line 8407
    .end local v0    # "main":Ljava/lang/reflect/Method;
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 8408
    return-void

    .line 8403
    :catch_0
    move-exception v0

    .line 8404
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "runIsolatedEntryPoint failed"

    invoke-direct {v1, v2, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 7
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .line 5232
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 5233
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5234
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_3

    .line 5236
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 5237
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5238
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 5239
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 5238
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5242
    :cond_0
    iget-boolean v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v2, :cond_1

    .line 5243
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .local v2, "res":I
    goto :goto_0

    .line 5245
    .end local v2    # "res":I
    :cond_1
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 5246
    const/16 v2, 0x3e8

    .line 5249
    .restart local v2    # "res":I
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5252
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v5, 0x1

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v3, v4, v5, v6, v2}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5256
    nop

    .line 5263
    .end local v2    # "res":I
    goto :goto_1

    .line 5254
    .restart local v2    # "res":I
    :catch_0
    move-exception v3

    .line 5255
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$ServiceArgsData;
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5257
    .end local v2    # "res":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$ServiceArgsData;
    :catch_1
    move-exception v2

    .line 5258
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 5259
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5261
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5265
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7654
    iget-object v0, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    if-eqz v0, :cond_0

    .line 7655
    return-void

    .line 7658
    :cond_0
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7659
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 7660
    return-void

    .line 7663
    :cond_1
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    .line 7664
    .local v1, "service":Landroid/view/contentcapture/IContentCaptureManager;
    new-instance v2, Landroid/app/ActivityThread$3;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 7674
    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/view/contentcapture/IContentCaptureManager;->registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7680
    goto :goto_0

    .line 7676
    :catch_0
    move-exception v2

    .line 7677
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentCaptureOptionsCallback() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityThread"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7679
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 7681
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private greylist-max-o handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 5922
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5923
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 5924
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5925
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 5926
    return-void

    .line 5924
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o handleStartBinderTracking()V
    .locals 1

    .line 4566
    sget-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-eqz v0, :cond_0

    .line 4567
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4570
    :cond_0
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 4571
    return-void
.end method

.method private greylist-max-o handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 4575
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableStackTracking()V

    .line 4576
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4578
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4579
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4580
    nop

    .line 4581
    return-void

    .line 4578
    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4579
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4580
    throw v0
.end method

.method private blacklist handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "_processName"    # Ljava/lang/String;
    .param p3, "_packageName"    # Ljava/lang/String;
    .param p4, "_pid"    # I
    .param p5, "_uid"    # I

    .line 4587
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p4, p5, p2, p3}, Landroid/os/TransactionTracker;->setBinderInfo(IILjava/lang/String;Ljava/lang/String;)V

    .line 4588
    invoke-static {}, Landroid/os/Binder;->disableStackTracking()V

    .line 4589
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4591
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4592
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4593
    nop

    .line 4594
    return-void

    .line 4591
    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4592
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4593
    throw v0
.end method

.method private greylist-max-o handleStopService(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5268
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5269
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 5270
    .local v0, "s":Landroid/app/Service;
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_2

    .line 5273
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 5274
    invoke-virtual {v0}, Landroid/app/Service;->detachAndCleanUp()V

    .line 5275
    invoke-virtual {v0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 5276
    .local v2, "context":Landroid/content/Context;
    instance-of v3, v2, Landroid/app/ContextImpl;

    if-eqz v3, :cond_0

    .line 5277
    invoke-virtual {v0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5278
    .local v3, "who":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Landroid/app/ContextImpl;

    const-string v5, "Service"

    invoke-virtual {v4, v3, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 5281
    .end local v3    # "who":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5284
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5, v5}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5288
    goto :goto_0

    .line 5286
    :catch_0
    move-exception v3

    .line 5287
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5289
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catch_1
    move-exception v2

    .line 5290
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v0, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopService: exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5296
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 5291
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5293
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5298
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopService: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5301
    :goto_1
    return-void
.end method

.method private greylist-max-o handleTrimMemory(I)V
    .locals 7
    .param p1, "level"    # I

    .line 7163
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "trimMemory"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B|trimMemory level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 7167
    const/16 v2, 0x50

    if-lt p1, v2, :cond_0

    .line 7168
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->onTrimMemory()V

    .line 7171
    :cond_0
    nop

    .line 7172
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 7174
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7175
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 7176
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentCallbacks2;

    invoke-interface {v6, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 7175
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7179
    .end local v5    # "i":I
    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 7180
    const-string v5, "E|trimMemory"

    invoke-static {v5, v3}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 7181
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7183
    const-string v0, "debug.am.run_gc_trim_level"

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 7184
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 7185
    const-string/jumbo v0, "tm"

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->doGcIfNeeded(Ljava/lang/String;)V

    .line 7187
    :cond_2
    const-string v0, "debug.am.run_mallopt_trim_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, p1, :cond_3

    .line 7189
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unschedulePurgeIdler()V

    .line 7190
    invoke-direct {p0}, Landroid/app/ActivityThread;->purgePendingResources()V

    .line 7192
    :cond_3
    return-void
.end method

.method private greylist-max-o handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 6
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 5125
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 5126
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5127
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_2

    .line 5129
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5130
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 5131
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 5130
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5132
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5134
    .local v2, "doRebind":Z
    if-eqz v2, :cond_0

    .line 5135
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 5138
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v5, v5}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5143
    :goto_0
    nop

    .line 5150
    .end local v2    # "doRebind":Z
    goto :goto_1

    .line 5141
    .restart local v2    # "doRebind":Z
    :catch_0
    move-exception v3

    .line 5142
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5144
    .end local v2    # "doRebind":Z
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    :catch_1
    move-exception v2

    .line 5145
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 5146
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5148
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5152
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private greylist-max-o handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .line 5964
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5965
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    .line 5966
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 5968
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5969
    if-eqz v0, :cond_1

    .line 5970
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 5972
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V

    .line 5973
    return-void
.end method

.method private blacklist handleWindowingModeChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 6750
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 6751
    .local v0, "newWindowingMode":I
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 6752
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    .line 6753
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6752
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6754
    .local v2, "oldWindowingMode":I
    if-ne v2, v0, :cond_0

    return-void

    .line 6756
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 6757
    const/4 v3, 0x1

    invoke-virtual {p1, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    goto :goto_0

    .line 6758
    :cond_1
    if-ne v2, v4, :cond_2

    .line 6759
    invoke-virtual {p1, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 6761
    :cond_2
    :goto_0
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    .line 6763
    .local v3, "wasInMultiWindowMode":Z
    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    .line 6765
    .local v4, "nowInMultiWindowMode":Z
    if-eq v3, v4, :cond_3

    .line 6766
    invoke-virtual {p1, v4, p2}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 6768
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6769
    return-void
.end method

.method private blacklist hasResumedPopOver()Z
    .locals 6

    .line 9199
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9200
    return v1

    .line 9202
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 9203
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 9204
    .local v3, "activity":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual {v3}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 9206
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9207
    return v2

    .line 9202
    .end local v3    # "activity":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9210
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method private final greylist-max-o incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 4
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    .line 7928
    const/16 v0, 0x83

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 7929
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 7930
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v3, v2, :cond_3

    .line 7933
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_0

    .line 7937
    const/4 v3, -0x1

    .line 7943
    .local v3, "unstableDelta":I
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7946
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 7948
    .end local v3    # "unstableDelta":I
    :cond_0
    const/4 v3, 0x0

    .line 7956
    .restart local v3    # "unstableDelta":I
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v1, v1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7960
    goto :goto_1

    .line 7958
    :catch_0
    move-exception v0

    .line 7961
    .end local v3    # "unstableDelta":I
    :goto_1
    goto :goto_2

    .line 7963
    :cond_1
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 7964
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v3, v2, :cond_3

    .line 7966
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_2

    .line 7975
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7976
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_2

    .line 7985
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v3, v1, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7989
    goto :goto_2

    .line 7987
    :catch_1
    move-exception v0

    .line 7993
    :cond_3
    :goto_2
    return-void
.end method

.method private blacklist initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    .locals 10
    .param p1, "ii"    # Landroid/content/pm/InstrumentationInfo;
    .param p2, "data"    # Landroid/app/ActivityThread$AppBindData;
    .param p3, "appContext"    # Landroid/app/ContextImpl;

    .line 7742
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 7743
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 7742
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7746
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 7744
    .end local v0    # "instrApp":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 7745
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 7747
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    .line 7748
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object v0, v1

    .line 7750
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    .line 7751
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 7752
    iget-object v3, p2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 7753
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 7752
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v1

    .line 7758
    .local v1, "pi":Landroid/app/LoadedApk;
    nop

    .line 7759
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7758
    invoke-static {p0, v1, v2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object v2

    .line 7762
    .local v2, "instrContext":Landroid/app/ContextImpl;
    :try_start_1
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 7763
    .local v3, "cl":Ljava/lang/ClassLoader;
    iget-object v4, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 7764
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Instrumentation;

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7769
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    nop

    .line 7771
    new-instance v7, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7772
    .local v7, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v9, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object v4, p0

    move-object v5, v2

    move-object v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 7775
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v3, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v3, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_1

    .line 7777
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 7778
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v4, v4, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7779
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 7780
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x800000

    invoke-static {v4, v5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 7782
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    return-void

    .line 7765
    .end local v7    # "component":Landroid/content/ComponentName;
    :catch_1
    move-exception v3

    .line 7766
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate instrumentation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7768
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static blacklist initializeMainlineModules()V
    .locals 1

    .line 8767
    new-instance v0, Landroid/os/TelephonyServiceManager;

    invoke-direct {v0}, Landroid/os/TelephonyServiceManager;-><init>()V

    invoke-static {v0}, Landroid/telephony/TelephonyFrameworkInitializer;->setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V

    .line 8768
    new-instance v0, Landroid/os/StatsServiceManager;

    invoke-direct {v0}, Landroid/os/StatsServiceManager;-><init>()V

    invoke-static {v0}, Landroid/os/StatsFrameworkInitializer;->setStatsServiceManager(Landroid/os/StatsServiceManager;)V

    .line 8769
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkPlatformInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 8770
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 8771
    new-instance v0, Landroid/os/BluetoothServiceManager;

    invoke-direct {v0}, Landroid/os/BluetoothServiceManager;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBluetoothServiceManager(Landroid/os/BluetoothServiceManager;)V

    .line 8772
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBinderCallsStatsInitializer(Ljava/util/function/Consumer;)V

    .line 8774
    return-void
.end method

.method private greylist installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 7817
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7819
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 7828
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v3

    .line 7830
    .local v3, "cph":Landroid/app/ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 7831
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 7832
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7834
    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v3    # "cph":Landroid/app/ContentProviderHolder;
    :cond_0
    goto :goto_0

    .line 7837
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 7838
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 7837
    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7841
    nop

    .line 7842
    return-void

    .line 7839
    :catch_0
    move-exception v1

    .line 7840
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private greylist installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    .line 8262
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    const/4 v5, 0x0

    .line 8264
    .local v5, "localProvider":Landroid/content/ContentProvider;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8333
    :cond_0
    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object/from16 v10, p1

    move-object v13, v0

    move-object v12, v5

    .local v0, "provider":Landroid/content/IContentProvider;
    goto/16 :goto_3

    .line 8265
    .end local v0    # "provider":Landroid/content/IContentProvider;
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 8266
    const-string v0, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8269
    :cond_2
    const/4 v8, 0x0

    .line 8270
    .local v8, "c":Landroid/content/Context;
    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8271
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8272
    move-object/from16 v8, p1

    move-object/from16 v10, p1

    goto :goto_1

    .line 8273
    :cond_3
    iget-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_4

    .line 8274
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8275
    iget-object v8, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object/from16 v10, p1

    goto :goto_1

    .line 8278
    :cond_4
    :try_start_0
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v10, v0, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    .line 8282
    goto :goto_1

    .line 8280
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v10, p1

    .line 8284
    :goto_1
    const/4 v11, 0x0

    if-nez v8, :cond_5

    .line 8285
    const-string v0, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get context for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while loading content provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8289
    return-object v11

    .line 8292
    :cond_5
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 8294
    :try_start_2
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v0

    .line 8297
    goto :goto_2

    .line 8295
    :catch_2
    move-exception v0

    .line 8296
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 8299
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    :goto_2
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 8300
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    aget-object v0, v0, v6

    .line 8301
    .local v0, "attributionTag":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    .line 8305
    .end local v0    # "attributionTag":Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 8306
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v12, v7}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v12

    .line 8307
    .local v12, "packageInfo":Landroid/app/LoadedApk;
    if-nez v12, :cond_8

    .line 8309
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    move-object v12, v13

    .line 8311
    :cond_8
    invoke-virtual {v12}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v13

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 8312
    invoke-virtual {v13, v0, v14}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v13

    move-object v5, v13

    .line 8313
    invoke-virtual {v5}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v13

    .line 8314
    .local v13, "provider":Landroid/content/IContentProvider;
    if-nez v13, :cond_9

    .line 8315
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to instantiate class "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " from sourceDir "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8318
    return-object v11

    .line 8323
    :cond_9
    invoke-virtual {v5, v8, v3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 8331
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v12    # "packageInfo":Landroid/app/LoadedApk;
    nop

    .line 8332
    .end local v8    # "c":Landroid/content/Context;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    move-object v12, v5

    .line 8340
    .end local v5    # "localProvider":Landroid/content/ContentProvider;
    .local v12, "localProvider":Landroid/content/ContentProvider;
    :goto_3
    iget-object v14, v1, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 8343
    :try_start_4
    invoke-interface {v13}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v5, v0

    .line 8344
    .local v5, "jBinder":Landroid/os/IBinder;
    if-eqz v12, :cond_b

    .line 8345
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8346
    .local v0, "cname":Landroid/content/ComponentName;
    iget-object v6, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8347
    .local v6, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_a

    .line 8352
    iget-object v7, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    move-object v13, v7

    .end local v13    # "provider":Landroid/content/IContentProvider;
    .local v7, "provider":Landroid/content/IContentProvider;
    goto :goto_4

    .line 8354
    .end local v7    # "provider":Landroid/content/IContentProvider;
    .restart local v13    # "provider":Landroid/content/IContentProvider;
    :cond_a
    new-instance v8, Landroid/app/ContentProviderHolder;

    invoke-direct {v8, v3}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v8

    .line 8355
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v2, "holder":Landroid/app/ContentProviderHolder;
    :try_start_5
    iput-object v13, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 8356
    iput-boolean v7, v2, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 8357
    invoke-direct {p0, v13, v12, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v7

    move-object v6, v7

    .line 8358
    iget-object v7, v1, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8359
    iget-object v7, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8361
    :goto_4
    iget-object v7, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v7

    .line 8362
    .end local v6    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .local v0, "retHolder":Landroid/app/ContentProviderHolder;
    goto :goto_9

    .line 8363
    .end local v0    # "retHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :cond_b
    :try_start_6
    iget-object v0, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    move-object v8, v0

    .line 8364
    .local v8, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v8, :cond_c

    .line 8372
    if-nez p5, :cond_f

    .line 8373
    invoke-direct {p0, v8, v4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 8375
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v6, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v6, v4}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 8377
    :catch_3
    move-exception v0

    .line 8379
    :goto_5
    goto :goto_8

    .line 8382
    :cond_c
    :try_start_8
    invoke-direct {p0, v13, v12, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v0

    .line 8384
    .local v0, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_d

    .line 8385
    new-instance v6, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v7, 0x3e8

    invoke-direct {v6, v2, v0, v7, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    move-object v8, v6

    .end local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .local v6, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_7

    .line 8387
    .end local v6    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_d
    if-eqz v4, :cond_e

    .line 8388
    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v9, v2, v0, v7, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    goto :goto_6

    .line 8389
    :cond_e
    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v9, v2, v0, v6, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    :goto_6
    move-object v6, v9

    move-object v8, v6

    .line 8391
    :goto_7
    iget-object v6, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8393
    .end local v0    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_f
    :goto_8
    iget-object v0, v8, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 8395
    .end local v5    # "jBinder":Landroid/os/IBinder;
    .end local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v0, "retHolder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "holder":Landroid/app/ContentProviderHolder;
    :goto_9
    :try_start_9
    monitor-exit v14

    .line 8396
    return-object v0

    .line 8395
    .end local v0    # "retHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_0
    move-exception v0

    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "holder":Landroid/app/ContentProviderHolder;
    :goto_a
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_a

    .line 8324
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .end local v12    # "localProvider":Landroid/content/ContentProvider;
    .end local v13    # "provider":Landroid/content/IContentProvider;
    .local v5, "localProvider":Landroid/content/ContentProvider;
    .local v8, "c":Landroid/content/Context;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catch_4
    move-exception v0

    .line 8325
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v11, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 8330
    return-object v11

    .line 8326
    :cond_10
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get provider "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8328
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private greylist-max-o installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 10
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/ContentProviderHolder;

    .line 8209
    iget-object v0, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8210
    .local v0, "auths":[Ljava/lang/String;
    iget-object v1, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 8212
    .local v1, "userId":I
    const/4 v8, 0x0

    if-eqz p1, :cond_1

    .line 8215
    array-length v2, v0

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 8216
    .local v4, "auth":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "com.android.blockednumber"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "downloads"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "telephony"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_3
    const-string v6, "call_log_shadow"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_4
    const-string v6, "call_log"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_5
    const-string v6, "com.android.calendar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_6
    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v8

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 8224
    :pswitch_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 8215
    .end local v4    # "auth":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8229
    :cond_1
    new-instance v9, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V

    .line 8231
    .local v2, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    array-length v3, v0

    :goto_3
    if-ge v8, v3, :cond_3

    aget-object v4, v0, v8

    .line 8232
    .restart local v4    # "auth":Ljava/lang/String;
    new-instance v5, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v5, v4, v1}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 8233
    .local v5, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8234
    .local v6, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_2

    .line 8235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content provider "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    iget-object v9, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " already published as "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ActivityThread"

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8238
    :cond_2
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8231
    .end local v4    # "auth":Ljava/lang/String;
    .end local v5    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v6    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 8241
    :cond_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3260a241 -> :sswitch_6
        -0x1b2f0756 -> :sswitch_5
        -0xa45121d -> :sswitch_4
        0x3cfb2fc -> :sswitch_3
        0x2eaeb418 -> :sswitch_2
        0x4e3e48eb -> :sswitch_1
        0x76f32249 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isDexMode()Z
    .locals 3

    .line 9127
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9128
    return v1

    .line 9130
    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static blacklist isFixedAppContextDisplay()Z
    .locals 1

    .line 9091
    sget-boolean v0, Landroid/app/ActivityThread;->sFixedAppContextDisplay:Z

    return v0
.end method

.method public static blacklist isInDexDisplay()Z
    .locals 2

    .line 8923
    sget v0, Landroid/app/ActivityThread;->sProcessDisplayId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z
    .locals 12
    .param p0, "loadedApk"    # Landroid/app/LoadedApk;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3077
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 3078
    .local v0, "packageResources":Landroid/content/res/Resources;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 3079
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3080
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3078
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 3081
    .local v1, "resourceDirsUpToDate":Z
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 3082
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3083
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3081
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 3085
    .local v2, "overlayPathsUpToDate":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    .line 3088
    .local v5, "isUpToDate":Z
    :goto_0
    if-eqz v5, :cond_2

    .line 3089
    return v4

    .line 3093
    :cond_2
    const/4 v6, 0x0

    .line 3094
    .local v6, "hasSamsungThemeDir":Z
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3095
    .local v7, "resourceDirs":[Ljava/lang/String;
    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 3096
    .local v10, "dir":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v11, "/data/overlays/currentstyle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3097
    const/4 v6, 0x1

    .line 3098
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 3099
    return v4

    .line 3095
    .end local v10    # "dir":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3103
    :cond_4
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 3104
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 3105
    .local v8, "samsungThemeOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    if-nez v6, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 3106
    invoke-static {v8}, Landroid/app/ActivityThread;->isSamsungThemeOverlaysPathExist(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3107
    return v4

    .line 3111
    .end local v6    # "hasSamsungThemeDir":Z
    .end local v7    # "resourceDirs":[Ljava/lang/String;
    .end local v8    # "samsungThemeOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    return v3
.end method

.method public static blacklist isProtectedBroadcast(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 8832
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8836
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8837
    :catch_0
    move-exception v0

    .line 8839
    return v1
.end method

.method public static blacklist isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 8788
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ci"    # Landroid/content/pm/ComponentInfo;
    .param p1, "permission"    # Ljava/lang/String;

    .line 8810
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8813
    :cond_0
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 8814
    return v2

    .line 8816
    :cond_1
    if-eqz p1, :cond_3

    .line 8818
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 8819
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 8818
    invoke-interface {v0, p1, v3, v1}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 8820
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 8821
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 8824
    :cond_3
    return v1
.end method

.method public static blacklist isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .line 8797
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isSamsungThemeOverlaysPathExist(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 9006
    .local p0, "samsungThemeOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9007
    .local v1, "overlay":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9008
    const/4 v0, 0x0

    return v0

    .line 9010
    .end local v1    # "overlay":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 9011
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-o isSystem()Z
    .locals 1

    .line 2684
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$handleRequestDirectActions$0(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;Ljava/util/List;)V
    .locals 5
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "actions"    # Ljava/util/List;

    .line 4496
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4497
    const-string v0, "actions"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 4498
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4499
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4500
    .local v0, "actionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4501
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DirectAction;

    .line 4502
    .local v2, "action":Landroid/app/DirectAction;
    iget-object v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    iget-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/DirectAction;->setSource(ILandroid/os/IBinder;)V

    .line 4500
    .end local v2    # "action":Landroid/app/DirectAction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4504
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4505
    .local v1, "result":Landroid/os/Bundle;
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const-string v3, "actions_list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4507
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4508
    .end local v0    # "actionCount":I
    .end local v1    # "result":Landroid/os/Bundle;
    goto :goto_1

    .line 4509
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4511
    :goto_1
    return-void
.end method

.method static synthetic blacklist lambda$initializeMainlineModules$3(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 8773
    invoke-static {p0}, Lcom/android/internal/os/BinderCallsStats;->startForBluetooth(Landroid/content/Context;)V

    return-void
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 8698
    const-wide/16 v0, 0x40

    const-string v2, "ActivityThreadMain"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8701
    invoke-static {}, Landroid/app/ActivityThread$AndroidOs;->install()V

    .line 8706
    const/4 v2, 0x0

    invoke-static {v2}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 8708
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 8711
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 8712
    .local v3, "configDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 8715
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 8717
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 8719
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 8723
    const-wide/16 v4, 0x0

    .line 8724
    .local v4, "startSeq":J
    if-eqz p0, :cond_1

    .line 8725
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 8726
    aget-object v7, p0, v6

    if-eqz v7, :cond_0

    aget-object v7, p0, v6

    const-string/jumbo v8, "seq="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8727
    aget-object v7, p0, v6

    .line 8728
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 8727
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 8725
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 8734
    .end local v6    # "i":I
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->addUcmKeyStoreProviderForAppContext()V

    .line 8740
    invoke-static {}, Landroid/app/ActivityThread;->setConscryptValidator()V

    .line 8743
    new-instance v6, Landroid/app/ActivityThread;

    invoke-direct {v6}, Landroid/app/ActivityThread;-><init>()V

    .line 8744
    .local v6, "thread":Landroid/app/ActivityThread;
    invoke-direct {v6, v2, v4, v5}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 8746
    sget-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 8747
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sput-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 8756
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8757
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 8759
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native blacklist nInitZygoteChildHeapProfiling()V
.end method

.method private native blacklist nPurgePendingResources()V
.end method

.method private blacklist notifyMultiWindowCoreStateChanges(I)V
    .locals 3
    .param p1, "changes"    # I

    .line 8906
    iget-object v0, p0, Landroid/app/ActivityThread;->mMultiWindowCoreStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 8907
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mMultiWindowCoreStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;

    .line 8908
    .local v2, "listener":Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;
    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;->onMultiWindowCoreStateChanged(I)V

    .line 8909
    .end local v2    # "listener":Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;
    goto :goto_0

    .line 8910
    :cond_0
    monitor-exit v0

    .line 8911
    return-void

    .line 8910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o onCoreSettingsChange()V
    .locals 2

    .line 5929
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5931
    const/4 v0, 0x0

    const-string/jumbo v1, "onCoreSettingsChange"

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->relaunchAllActivities(ZLjava/lang/String;)V

    .line 5936
    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultNavigationBarColor()V

    .line 5939
    return-void
.end method

.method private blacklist performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "amOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayId"    # I

    .line 6580
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    .line 6585
    .local v10, "activityToken":Landroid/os/IBinder;
    invoke-direct/range {p0 .. p2}, Landroid/app/ActivityThread;->handleWindowingModeChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 6589
    invoke-direct/range {p0 .. p2}, Landroid/app/ActivityThread;->handleFreeformTaskPinningChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 6595
    invoke-direct/range {p0 .. p2}, Landroid/app/ActivityThread;->handleFreeformTaskStashingChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 6597
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v2, :cond_0

    .line 6598
    invoke-direct/range {p0 .. p2}, Landroid/app/ActivityThread;->handleDexTaskDockingChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 6602
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getDisplayId()I

    move-result v2

    invoke-static {v2, v9}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v11

    .line 6604
    .local v11, "movedToDifferentDisplay":Z
    iget-object v12, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6605
    .local v12, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v12, v8}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v13

    .line 6606
    .local v13, "diff":I
    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v13, :cond_1

    move v2, v14

    goto :goto_0

    :cond_1
    move v2, v15

    :goto_0
    move/from16 v16, v2

    .line 6607
    .local v16, "hasPublicConfigChange":Z
    invoke-virtual {v0, v10}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v17

    .line 6610
    .local v17, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v16, :cond_3

    .line 6612
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 6611
    move-object v2, v10

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v11

    invoke-static/range {v2 .. v7}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v14, v15

    goto :goto_2

    :cond_3
    :goto_1
    nop

    :goto_2
    move v2, v14

    .line 6613
    .local v2, "shouldUpdateResources":Z
    nop

    .line 6614
    const/4 v3, 0x0

    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    iget-object v5, v1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6615
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    .line 6613
    invoke-static {v13, v12, v8, v4, v5}, Landroid/app/ActivityThread;->shouldReportChange(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;I)Z

    move-result v4

    .line 6617
    .local v4, "shouldReportChange":Z
    if-nez v2, :cond_6

    .line 6619
    iget-object v5, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6620
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v5

    iget-object v6, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6621
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v6

    if-eq v5, v6, :cond_5

    goto :goto_4

    .line 6626
    :cond_5
    return-object v3

    .line 6634
    :cond_6
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 6642
    .local v3, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    move-object/from16 v5, p3

    invoke-static {v5, v3}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v6

    .line 6644
    .local v6, "finalOverrideConfig":Landroid/content/res/Configuration;
    iget-object v7, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v7, v10, v6, v9}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 6646
    iput v15, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 6647
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v7, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6651
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 6652
    .local v7, "win":Landroid/view/Window;
    instance-of v14, v7, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v14, :cond_7

    .line 6653
    move-object v14, v7

    check-cast v14, Lcom/android/internal/policy/PhoneWindow;

    iget-object v15, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/PhoneWindow;->setActivityCurrentConfig(Landroid/content/res/Configuration;)V

    .line 6665
    .end local v7    # "win":Landroid/view/Window;
    :cond_7
    invoke-static {v8, v3}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v7

    .line 6668
    .local v7, "configToReport":Landroid/content/res/Configuration;
    if-eqz v11, :cond_8

    .line 6669
    invoke-virtual {v1, v9, v7}, Landroid/app/Activity;->dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 6672
    :cond_8
    if-eqz v4, :cond_a

    .line 6673
    const/4 v14, 0x0

    iput-boolean v14, v1, Landroid/app/Activity;->mCalled:Z

    .line 6674
    invoke-virtual {v1, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6675
    iget-boolean v14, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v14, :cond_9

    goto :goto_5

    .line 6676
    :cond_9
    new-instance v14, Landroid/util/SuperNotCalledException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 6681
    :cond_a
    :goto_5
    return-object v7
.end method

.method private blacklist performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newBaseConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 6558
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6559
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 6560
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 6562
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v1, v2, p3}, Landroid/app/ActivityThread;->performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v0

    .line 6564
    .local v0, "reportedConfig":Landroid/content/res/Configuration;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {v1}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 6565
    return-object v0
.end method

.method private greylist-max-o performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 29
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .line 4016
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4017
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    const/4 v11, 0x1

    if-nez v0, :cond_0

    .line 4018
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v15, v0, v1, v11}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 4022
    :cond_0
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4023
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 4024
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v2, v15, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4025
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4024
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4026
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4029
    :cond_1
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4030
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object v9, v0

    goto :goto_0

    .line 4029
    :cond_2
    move-object v9, v0

    .line 4034
    .end local v0    # "component":Landroid/content/ComponentName;
    .local v9, "component":Landroid/content/ComponentName;
    :goto_0
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 4035
    .local v8, "appContext":Landroid/app/ContextImpl;
    const/4 v1, 0x0

    .line 4037
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 4038
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4039
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4038
    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    move-object v1, v2

    .line 4040
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 4041
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4042
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    .line 4043
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4042
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4044
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 4045
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4053
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_3
    move-object v6, v1

    goto :goto_1

    .line 4047
    :catch_0
    move-exception v0

    .line 4048
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v6, v1

    .line 4056
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "activity":Landroid/app/Activity;
    .local v6, "activity":Landroid/app/Activity;
    :goto_1
    :try_start_1
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16

    :try_start_2
    iget-object v1, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v7

    .line 4069
    .local v7, "app":Landroid/app/Application;
    iget-object v1, v15, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16

    .line 4070
    :try_start_3
    iget-object v0, v15, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4071
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4073
    if-eqz v6, :cond_d

    .line 4075
    :try_start_4
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;
    :try_end_4
    .catch Landroid/util/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16

    if-eqz v0, :cond_4

    .line 4076
    :try_start_5
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v15, v14, v0}, Landroid/app/ActivityThread;->updateConfigurationForDexCompatIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V
    :try_end_5
    .catch Landroid/util/SuperNotCalledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 4165
    .end local v7    # "app":Landroid/app/Application;
    :catch_1
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v5, v14

    move-object v3, v15

    goto/16 :goto_12

    .line 4162
    :catch_2
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v5, v14

    move-object v3, v15

    goto/16 :goto_14

    .line 4079
    .restart local v7    # "app":Landroid/app/Application;
    :cond_4
    :goto_2
    :try_start_6
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 4080
    .local v10, "title":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, v15, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 4081
    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4082
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;
    :try_end_6
    .catch Landroid/util/SuperNotCalledException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_16

    if-eqz v1, :cond_5

    .line 4083
    :try_start_7
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_7
    .catch Landroid/util/SuperNotCalledException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 4087
    :cond_5
    const/4 v1, 0x0

    .line 4088
    .local v1, "window":Landroid/view/Window;
    :try_start_8
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;
    :try_end_8
    .catch Landroid/util/SuperNotCalledException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_16

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    :try_start_9
    iget-boolean v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v2, :cond_6

    .line 4089
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    move-object v1, v2

    .line 4090
    iput-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4091
    iput-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;
    :try_end_9
    .catch Landroid/util/SuperNotCalledException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v21, v1

    goto :goto_3

    .line 4096
    :cond_6
    move-object/from16 v21, v1

    .end local v1    # "window":Landroid/view/Window;
    .local v21, "window":Landroid/view/Window;
    :goto_3
    :try_start_a
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4097
    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v2

    new-array v3, v5, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/loader/ResourcesLoader;

    .line 4096
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 4099
    invoke-virtual {v8, v6}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 4100
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v16

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v11, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_a
    .catch Landroid/util/SuperNotCalledException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_16

    move-object/from16 v18, v12

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_b
    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;
    :try_end_b
    .catch Landroid/util/SuperNotCalledException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    :try_start_c
    iget-object v13, v14, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;
    :try_end_c
    .catch Landroid/util/SuperNotCalledException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    :try_start_d
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    move-object/from16 v22, v7

    .end local v7    # "app":Landroid/app/Application;
    .local v22, "app":Landroid/app/Application;
    iget-object v7, v14, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v23, v10

    .end local v10    # "title":Ljava/lang/CharSequence;
    .local v23, "title":Ljava/lang/CharSequence;
    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v19, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    move-object/from16 v20, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    move-object/from16 v24, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;
    :try_end_d
    .catch Landroid/util/SuperNotCalledException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    move-object/from16 v25, v1

    move-object v1, v6

    move/from16 v26, v2

    move-object v2, v8

    move-object/from16 v27, v3

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v5, v27

    move-object/from16 v27, v6

    .end local v6    # "activity":Landroid/app/Activity;
    .local v27, "activity":Landroid/app/Activity;
    move/from16 v6, v26

    move-object/from16 v26, v8

    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .local v26, "appContext":Landroid/app/ContextImpl;
    move-object/from16 v8, v25

    move-object/from16 v28, v9

    .end local v9    # "component":Landroid/content/ComponentName;
    .local v28, "component":Landroid/content/ComponentName;
    move-object v9, v11

    move-object v11, v12

    move-object/from16 v25, v18

    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object v12, v13

    move-object v13, v15

    move-object v15, v14

    move-object v14, v0

    move-object v15, v7

    move-object/from16 v16, v19

    move-object/from16 v17, v21

    move-object/from16 v18, v20

    move-object/from16 v19, v24

    move-object/from16 v20, v10

    move-object/from16 v7, v22

    move-object/from16 v10, v23

    .end local v22    # "app":Landroid/app/Application;
    .end local v23    # "title":Ljava/lang/CharSequence;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :try_start_e
    invoke-virtual/range {v1 .. v20}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 4106
    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4107
    .local v1, "win":Landroid/view/Window;
    instance-of v2, v1, Lcom/android/internal/policy/PhoneWindow;
    :try_end_e
    .catch Landroid/util/SuperNotCalledException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    if-eqz v2, :cond_7

    .line 4108
    :try_start_f
    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;
    :try_end_f
    .catch Landroid/util/SuperNotCalledException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 4110
    .local v2, "phoneWindow":Lcom/android/internal/policy/PhoneWindow;
    move-object/from16 v3, p0

    :try_start_10
    iget-object v4, v3, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v5, "navigationbar_current_color"

    .line 4112
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v6

    .line 4110
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 4113
    .local v4, "settingsColor":I
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/PhoneWindow;->setSettingsNavigationBarColor(I)V
    :try_end_10
    .catch Landroid/util/SuperNotCalledException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 4116
    .end local v4    # "settingsColor":I
    move-object/from16 v4, v27

    .end local v27    # "activity":Landroid/app/Activity;
    .local v4, "activity":Landroid/app/Activity;
    :try_start_11
    iget-object v5, v4, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/PhoneWindow;->setActivityCurrentConfig(Landroid/content/res/Configuration;)V
    :try_end_11
    .catch Landroid/util/SuperNotCalledException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_6

    .line 4165
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "win":Landroid/view/Window;
    .end local v2    # "phoneWindow":Lcom/android/internal/policy/PhoneWindow;
    .end local v7    # "app":Landroid/app/Application;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v21    # "window":Landroid/view/Window;
    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    goto/16 :goto_12

    .line 4162
    :catch_4
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    goto/16 :goto_11

    .line 4165
    .end local v4    # "activity":Landroid/app/Activity;
    .restart local v27    # "activity":Landroid/app/Activity;
    :catch_5
    move-exception v0

    goto :goto_4

    .line 4162
    :catch_6
    move-exception v0

    goto :goto_5

    .line 4165
    :catch_7
    move-exception v0

    move-object/from16 v3, p0

    :goto_4
    move-object/from16 v4, v27

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    goto/16 :goto_9

    .line 4162
    :catch_8
    move-exception v0

    move-object/from16 v3, p0

    :goto_5
    move-object/from16 v4, v27

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    goto/16 :goto_a

    .line 4107
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "win":Landroid/view/Window;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v21    # "window":Landroid/view/Window;
    :cond_7
    move-object/from16 v3, p0

    move-object/from16 v4, v27

    .line 4125
    .end local v27    # "activity":Landroid/app/Activity;
    .restart local v4    # "activity":Landroid/app/Activity;
    :goto_6
    move-object/from16 v2, p2

    if-eqz v2, :cond_8

    .line 4126
    :try_start_12
    iput-object v2, v4, Landroid/app/Activity;->mIntent:Landroid/content/Intent;
    :try_end_12
    .catch Landroid/util/SuperNotCalledException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_7

    .line 4165
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "win":Landroid/view/Window;
    .end local v7    # "app":Landroid/app/Application;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v21    # "window":Landroid/view/Window;
    :catch_9
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_12

    .line 4162
    :catch_a
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_11

    .line 4128
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "win":Landroid/view/Window;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v21    # "window":Landroid/view/Window;
    :cond_8
    :goto_7
    move-object/from16 v5, p1

    const/4 v6, 0x0

    :try_start_13
    iput-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 4129
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4130
    const/4 v8, 0x0

    iput-boolean v8, v4, Landroid/app/Activity;->mStartedActivity:Z

    .line 4131
    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v9

    .line 4132
    .local v9, "theme":I
    if-eqz v9, :cond_9

    .line 4133
    invoke-virtual {v4, v9}, Landroid/app/Activity;->setTheme(I)V

    .line 4136
    :cond_9
    iget-object v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v11, :cond_a

    .line 4137
    iget-object v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    iput-object v11, v4, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 4138
    iput-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 4140
    :cond_a
    iget-boolean v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mLaunchedFromBubble:Z

    iput-boolean v6, v4, Landroid/app/Activity;->mLaunchedFromBubble:Z

    .line 4141
    iput-boolean v8, v4, Landroid/app/Activity;->mCalled:Z

    .line 4146
    iput-object v4, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4147
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 4148
    iget-object v6, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v4, v8, v11}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_8

    .line 4150
    :cond_b
    iget-object v6, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v6, v4, v8}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4152
    :goto_8
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-eqz v6, :cond_c

    .line 4157
    iget-object v6, v3, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    iget-object v11, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4158
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 4157
    invoke-interface {v6, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 4153
    :cond_c
    new-instance v6, Landroid/util/SuperNotCalledException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4154
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " did not call through to super.onCreate()"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v4    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "customIntent":Landroid/content/Intent;
    throw v6

    .line 4165
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "win":Landroid/view/Window;
    .end local v7    # "app":Landroid/app/Application;
    .end local v9    # "theme":I
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v21    # "window":Landroid/view/Window;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v27    # "activity":Landroid/app/Activity;
    .restart local v28    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "customIntent":Landroid/content/Intent;
    :catch_b
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v27

    .end local v27    # "activity":Landroid/app/Activity;
    .restart local v4    # "activity":Landroid/app/Activity;
    :goto_9
    goto/16 :goto_12

    .line 4162
    .end local v4    # "activity":Landroid/app/Activity;
    .restart local v27    # "activity":Landroid/app/Activity;
    :catch_c
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v27

    :goto_a
    move-object/from16 v7, v28

    .end local v27    # "activity":Landroid/app/Activity;
    .restart local v4    # "activity":Landroid/app/Activity;
    goto/16 :goto_14

    .line 4165
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .local v9, "component":Landroid/content/ComponentName;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_d
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v2, p2

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object v5, v14

    goto :goto_c

    .line 4162
    :catch_e
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v2, p2

    move-object v4, v6

    move-object/from16 v26, v8

    move-object v5, v14

    goto :goto_e

    .line 4165
    :catch_f
    move-exception v0

    move-object/from16 v2, p2

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    goto :goto_b

    .line 4162
    :catch_10
    move-exception v0

    move-object/from16 v2, p2

    move-object v4, v6

    move-object/from16 v26, v8

    goto :goto_d

    .line 4165
    :catch_11
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object v2, v13

    :goto_b
    move-object v5, v14

    move-object v3, v15

    :goto_c
    move-object/from16 v25, v18

    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "component":Landroid/content/ComponentName;
    goto/16 :goto_12

    .line 4162
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_12
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object v2, v13

    :goto_d
    move-object v5, v14

    move-object v3, v15

    :goto_e
    move-object/from16 v25, v18

    move-object v7, v9

    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "component":Landroid/content/ComponentName;
    goto/16 :goto_14

    .line 4073
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_d
    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v5, v14

    move-object v3, v15

    .line 4160
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "component":Landroid/content/ComponentName;
    :goto_f
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V
    :try_end_13
    .catch Landroid/util/SuperNotCalledException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 4171
    .end local v7    # "app":Landroid/app/Application;
    goto :goto_13

    .line 4071
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v5, v14

    move-object v3, v15

    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "component":Landroid/content/ComponentName;
    :goto_10
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .end local v4    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "customIntent":Landroid/content/Intent;
    :try_start_15
    throw v0
    :try_end_15
    .catch Landroid/util/SuperNotCalledException; {:try_start_15 .. :try_end_15} :catch_14
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    .line 4165
    .end local v7    # "app":Landroid/app/Application;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "customIntent":Landroid/content/Intent;
    :catch_13
    move-exception v0

    goto :goto_12

    .line 4162
    :catch_14
    move-exception v0

    :goto_11
    move-object/from16 v7, v28

    goto/16 :goto_14

    .line 4071
    .restart local v7    # "app":Landroid/app/Application;
    :catchall_1
    move-exception v0

    goto :goto_10

    .line 4162
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v7    # "app":Landroid/app/Application;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_15
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v5, v14

    move-object v3, v15

    move-object v7, v9

    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "component":Landroid/content/ComponentName;
    goto :goto_14

    .line 4165
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_16
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v5, v14

    move-object v3, v15

    .line 4166
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "component":Landroid/content/ComponentName;
    :goto_12
    iget-object v1, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    return-object v4

    .line 4167
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, v28

    .end local v28    # "component":Landroid/content/ComponentName;
    .local v7, "component":Landroid/content/ComponentName;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4169
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4162
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_17
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v5, v14

    move-object v3, v15

    .line 4163
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Landroid/util/SuperNotCalledException;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    :goto_14
    throw v0

    .line 4049
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_f
    move-object/from16 v26, v8

    move-object v7, v9

    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4051
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private greylist-max-o performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .locals 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5646
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5647
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_0

    .line 5651
    return-object v1

    .line 5653
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing pause of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5655
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5656
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5658
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 5659
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mFinished:Z

    .line 5663
    :cond_2
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    .line 5664
    .local v0, "shouldSaveState":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 5665
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5668
    :cond_4
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5672
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 5673
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5674
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5675
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_5
    move v2, v3

    .line 5676
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 5677
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v5, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 5676
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5680
    .end local v3    # "i":I
    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/app/servertransaction/PendingTransactionActions;->getOldState()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_2

    :cond_7
    move-object v3, v1

    .line 5681
    .local v3, "oldState":Landroid/os/Bundle;
    :goto_2
    if-eqz v3, :cond_8

    .line 5687
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5688
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5692
    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :cond_9
    return-object v1

    .line 5674
    .end local v2    # "size":I
    .end local v3    # "oldState":Landroid/os/Bundle;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 5696
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v0, :cond_0

    .line 5698
    return-void

    .line 5703
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "pausing"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5706
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mCalled:Z

    .line 5707
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 5708
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_1

    .line 5719
    goto :goto_0

    .line 5709
    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "reason":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5714
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5715
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5720
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5722
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_2

    .line 5724
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->performReleaseActivityFocusIfNeeded(Landroid/os/IBinder;)V

    .line 5727
    :cond_2
    return-void

    .line 5716
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to pause activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5717
    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5712
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 5713
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0
.end method

.method private blacklist performReleaseActivityFocusIfNeeded(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 9163
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 9164
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 9165
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->releaseActivityFocusIfNeeded()V

    .line 9167
    :cond_0
    return-void
.end method

.method private blacklist performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    .param p3, "saveState"    # Z
    .param p4, "finalStateRequest"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5774
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_1

    .line 5775
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_0

    .line 5779
    return-void

    .line 5781
    :cond_0
    if-nez p4, :cond_1

    .line 5782
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is already stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5784
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5785
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5786
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5791
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-direct {p0, p1, p5}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5793
    if-eqz p2, :cond_3

    .line 5798
    :try_start_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5806
    goto :goto_0

    .line 5799
    :catch_0
    move-exception v0

    .line 5800
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5801
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5803
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5804
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5809
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p3, p5}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5813
    iget-object v0, p0, Landroid/app/ActivityThread;->mAbnormalUsage:Landroid/app/AbnormalUsage;

    invoke-virtual {v0}, Landroid/app/AbnormalUsage;->checkAbnormalUsage()V

    .line 5816
    return-void
.end method

.method private blacklist prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;
    .locals 5
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7710
    :try_start_0
    new-instance v0, Landroid/app/ApplicationPackageManager;

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    .line 7711
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7715
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    nop

    .line 7718
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7719
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7720
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uses different ABI(s) than its instrumentation: package["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " instrumentation["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7727
    :cond_1
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 7728
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 7729
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 7730
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 7731
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 7732
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 7733
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 7735
    return-object v0

    .line 7712
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_0
    move-exception v0

    .line 7713
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find instrumentation info for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static varargs blacklist printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 3314
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    return-void
.end method

.method private blacklist purgePendingResources()V
    .locals 3

    .line 8777
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "purgePendingResources"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8778
    invoke-direct {p0}, Landroid/app/ActivityThread;->nPurgePendingResources()V

    .line 8779
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8780
    return-void
.end method

.method private blacklist relaunchAllActivities(ZLjava/lang/String;)V
    .locals 2
    .param p1, "preserveWindows"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 5957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relaunch all activities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5959
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5958
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5961
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .locals 2
    .param p1, "transport"    # Landroid/app/ActivityThread$SafeCancellationTransport;

    .line 2182
    monitor-enter p0

    .line 2183
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    .line 2184
    .local v0, "cancellation":Landroid/os/CancellationSignal;
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2185
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2187
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2188
    .end local v0    # "cancellation":Landroid/os/CancellationSignal;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4345
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4347
    return-void

    .line 4349
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    .line 4350
    .local v0, "configurations":[Landroid/content/res/Configuration;
    if-nez v0, :cond_1

    .line 4351
    return-void

    .line 4353
    :cond_1
    new-instance v1, Landroid/window/SizeConfigurationBuckets;

    invoke-direct {v1, v0}, Landroid/window/SizeConfigurationBuckets;-><init>([Landroid/content/res/Configuration;)V

    invoke-static {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fputmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SizeConfigurationBuckets;)V

    .line 4354
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityClient;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 4355
    return-void
.end method

.method private blacklist reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4675
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->reportSplashScreenAttached(Landroid/os/IBinder;)V

    .line 4676
    monitor-enter p0

    .line 4677
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_0

    .line 4678
    invoke-virtual {v0, p1, p2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->handOverSplashScreenView(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    .line 4680
    :cond_0
    monitor-exit p0

    .line 4681
    return-void

    .line 4680
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .locals 1
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "onTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5606
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    if-eq v0, p2, :cond_0

    .line 5607
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    .line 5608
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->performTopResumedActivityChanged(ZLjava/lang/String;)V

    .line 5610
    :cond_0
    return-void
.end method

.method private static blacklist resetAIDFlag()V
    .locals 1

    .line 5421
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThread;->sDisableAID:Z

    .line 5422
    return-void
.end method

.method private static greylist-max-o safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 6101
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6102
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string v1, "[Unknown]"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private blacklist schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4704
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 4705
    .local v0, "prevState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4706
    return-void

    .line 4709
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4717
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4718
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_0

    .line 4712
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4713
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4714
    nop

    .line 4721
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4724
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 4725
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 4727
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 4728
    return-void
.end method

.method private blacklist scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "preserveWindow"    # Z

    .line 6380
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_2

    .line 6383
    :cond_1
    return-void

    .line 6385
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_3

    .line 6386
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6388
    :cond_3
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 6389
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 6390
    return-void
.end method

.method private blacklist scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4731
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 4732
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 4733
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 4734
    return-void
.end method

.method private blacklist scheduleVsyncSS(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "willBeVisible"    # Z

    .line 5403
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5404
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 5405
    .local v0, "decor":Landroid/view/View;
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 5406
    .local v1, "choreographer":Landroid/view/Choreographer;
    invoke-virtual {v0}, Landroid/view/View;->isFrameMetricsObservers()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5412
    invoke-virtual {v1}, Landroid/view/Choreographer;->scheduleVsyncSS()V

    .line 5415
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "choreographer":Landroid/view/Choreographer;
    :cond_0
    if-eqz p2, :cond_1

    .line 5416
    invoke-static {}, Landroid/app/ActivityThread;->resetAIDFlag()V

    .line 5418
    :cond_1
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 3982
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3983
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 3986
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3987
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;IIZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .line 3994
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3995
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3996
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3997
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3998
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 3999
    if-eqz p5, :cond_0

    .line 4000
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4002
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 4003
    return-void
.end method

.method private static blacklist setConscryptValidator()V
    .locals 7

    .line 8685
    const-string v0, "ActivityThread"

    const-string/jumbo v1, "setConscryptValidator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8686
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 8687
    .local v4, "p":Ljava/security/Provider;
    instance-of v5, v4, Lcom/android/org/conscrypt/OpenSSLProvider;

    if-eqz v5, :cond_0

    .line 8688
    const-string/jumbo v5, "setConscryptValidator - put"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8689
    const-string v5, "CertPathValidator.PKIX"

    const-string v6, "android.sec.enterprise.certificate.DelegatingCertPathValidator"

    invoke-virtual {v4, v5, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8690
    const-string v5, "CertPathValidator.PKIX ImplementedIn"

    const-string v6, "Software"

    invoke-virtual {v4, v5, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8691
    const-string v5, "CertPathValidator.PKIX ValidationAlgorithm"

    const-string v6, "RFC3280"

    invoke-virtual {v4, v5, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8686
    .end local v4    # "p":Ljava/security/Provider;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8694
    :cond_1
    return-void
.end method

.method private greylist-max-o setupGraphicsSupport(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 7195
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "setupGraphicsSupport"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7202
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 7203
    .local v2, "cacheDir":Ljava/io/File;
    const-string v3, "ActivityThread"

    if-eqz v2, :cond_0

    .line 7205
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 7206
    .local v4, "tmpdir":Ljava/lang/String;
    const-string v5, "java.io.tmpdir"

    invoke-static {v5, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7208
    :try_start_0
    const-string v5, "TMPDIR"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7211
    goto :goto_0

    .line 7209
    :catch_0
    move-exception v5

    .line 7210
    .local v5, "ex":Landroid/system/ErrnoException;
    const-string v6, "Unable to initialize $TMPDIR"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7212
    .end local v4    # "tmpdir":Ljava/lang/String;
    .end local v5    # "ex":Landroid/system/ErrnoException;
    :goto_0
    goto :goto_1

    .line 7213
    :cond_0
    const-string v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7218
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 7219
    .local v4, "deviceContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v5

    .line 7220
    .local v5, "codeCacheDir":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 7222
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 7223
    .local v3, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 7224
    .local v6, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 7225
    invoke-static {v5}, Landroid/graphics/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 7226
    invoke-static {v5}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7231
    .end local v3    # "uid":I
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 7228
    :catch_1
    move-exception v3

    .line 7229
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7230
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 7233
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v6, "Unable to use shader/script cache: missing code-cache directory"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7239
    .end local v2    # "cacheDir":Ljava/io/File;
    .end local v4    # "deviceContext":Landroid/content/Context;
    .end local v5    # "codeCacheDir":Ljava/io/File;
    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v3}, Landroid/os/GraphicsEnvironment;->setup(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 7240
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7241
    return-void
.end method

.method public static blacklist shouldReportChange(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;I)Z
    .locals 4
    .param p0, "publicDiff"    # I
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "sizeBuckets"    # Landroid/window/SizeConfigurationBuckets;
    .param p4, "handledConfigChanges"    # I

    .line 6702
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 6703
    return v0

    .line 6705
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/window/SizeConfigurationBuckets;->filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I

    move-result v1

    .line 6711
    .local v1, "diffWithBucket":I
    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, p0

    .line 6715
    .local v2, "diff":I
    :goto_0
    not-int v3, p4

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private blacklist syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "view"    # Landroid/window/SplashScreenView;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "decorView"    # Landroid/view/View;
    .param p4, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4689
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4690
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4692
    invoke-virtual {p3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 4693
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->syncTransferSurfaceOnDraw()V

    .line 4695
    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;-><init>(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4696
    return-void
.end method

.method public static greylist systemMain()Landroid/app/ActivityThread;
    .locals 4

    .line 8489
    invoke-static {}, Landroid/view/ThreadedRenderer;->initForSystemProcess()V

    .line 8490
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 8491
    .local v0, "thread":Landroid/app/ActivityThread;
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 8492
    return-object v0
.end method

.method private blacklist throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2214
    packed-switch p2, :pswitch_data_0

    .line 2234
    new-instance v0, Landroid/app/RemoteServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (with unwknown typeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2231
    :pswitch_0
    new-instance v0, Landroid/app/RemoteServiceException$CrashedByAdbException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CrashedByAdbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2228
    :pswitch_1
    new-instance v0, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2225
    :pswitch_2
    new-instance v0, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2222
    :pswitch_3
    new-instance v0, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2219
    :pswitch_4
    new-instance v0, Landroid/app/RemoteServiceException$CannotDeliverBroadcastException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CannotDeliverBroadcastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2216
    :pswitch_5
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateConfigurationForDexCompatIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "activityOverrideConfig"    # Landroid/content/res/Configuration;

    .line 9100
    invoke-virtual {p0}, Landroid/app/ActivityThread;->isDexCompatMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9101
    return-void

    .line 9103
    :cond_0
    iget v0, p2, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 9104
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 9105
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disableLocalDisplayInfoCaches()V

    .line 9107
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 9108
    .local v1, "threadConfig":Landroid/content/res/Configuration;
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I

    move-result v2

    .line 9109
    .local v2, "changes":I
    if-eqz v2, :cond_2

    .line 9110
    const/4 v3, 0x0

    iput v3, v1, Landroid/content/res/Configuration;->seq:I

    .line 9112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DexCompat] updateConfigurationForDexCompatIfNeeded: threadConfig, changes=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9113
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", override="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9116
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9112
    const-string v4, "ActivityThread"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9118
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingThreadConfig:Landroid/content/res/Configuration;

    .line 9119
    if-eqz p1, :cond_2

    .line 9120
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9124
    .end local v0    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v1    # "threadConfig":Landroid/content/res/Configuration;
    .end local v2    # "changes":I
    :cond_2
    return-void
.end method

.method private blacklist updateDebugViewAttributeState()Z
    .locals 5

    .line 5942
    sget-boolean v0, Landroid/view/View;->sDebugViewAttributes:Z

    .line 5946
    .local v0, "previousState":Z
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v2, "debug_view_attributes_application_package"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 5948
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 5949
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "<unknown-app>"

    .line 5950
    .local v1, "currentPackage":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 5951
    const-string v3, "debug_view_attributes"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    sget-object v2, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 5952
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    sput-boolean v2, Landroid/view/View;->sDebugViewAttributes:Z

    .line 5953
    sget-boolean v2, Landroid/view/View;->sDebugViewAttributes:Z

    if-eq v0, v2, :cond_3

    move v4, v3

    :cond_3
    return v4
.end method

.method private blacklist updateDefaultNavigationBarColor()V
    .locals 6

    .line 8877
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

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

    .line 8878
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8879
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    instance-of v3, v3, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_0

    .line 8880
    iget-object v3, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v4, Lcom/android/internal/policy/PhoneWindow;

    .line 8882
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v4

    .line 8880
    const-string/jumbo v5, "navigationbar_current_color"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 8883
    .local v3, "settingsColor":I
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v4, Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/PhoneWindow;->setSettingsNavigationBarColor(I)V

    .line 8884
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v4, Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->updateDefaultNavigationBarColor()V

    .line 8886
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "settingsColor":I
    :cond_0
    goto :goto_0

    .line 8887
    :cond_1
    return-void
.end method

.method public static blacklist updateHttpProxy(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 8496
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8497
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V

    .line 8498
    return-void
.end method

.method private blacklist updatePackageInfosLocked(Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;)V"
        }
    .end annotation

    .line 8981
    .local p1, "packageInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 8982
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 8983
    .local v2, "pkgInfo":Landroid/app/LoadedApk;
    :goto_1
    if-eqz v2, :cond_2

    .line 8986
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 8987
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 8989
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 8986
    invoke-interface {v3, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 8990
    .local v3, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    .line 8991
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resetting overlays for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " overlays = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 8992
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", overlayPaths = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8991
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8993
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/LoadedApk;->setOverlayDirs([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9000
    .end local v3    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_2

    .line 8997
    :catch_0
    move-exception v3

    .line 8999
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9002
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v2    # "pkgInfo":Landroid/app/LoadedApk;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_0

    .line 9003
    :cond_3
    return-void
.end method

.method private blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 4793
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4794
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 4795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUiTranslationState(): no activity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    return-void

    .line 4798
    :cond_0
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 4800
    return-void
.end method

.method private greylist-max-o updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    .line 5854
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5855
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 5856
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 5857
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v2, :cond_1

    .line 5858
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5859
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5860
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_1

    .line 5861
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    goto :goto_0

    .line 5865
    :cond_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_1

    .line 5866
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5867
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5868
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5872
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateVmProcessState(I)V
    .locals 2
    .param p1, "processState"    # I

    .line 3944
    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 3945
    const/4 v0, 0x0

    goto :goto_0

    .line 3946
    :cond_0
    const/4 v0, 0x1

    :goto_0
    nop

    .line 3947
    .local v0, "state":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    .line 3948
    return-void
.end method


# virtual methods
.method public final greylist acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 7998
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7999
    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 8000
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8001
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 8002
    monitor-exit v0

    return-object v3

    .line 8005
    :cond_0
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 8006
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 8007
    .local v5, "jBinder":Landroid/os/IBinder;
    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8010
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquiring provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": existing object\'s process dead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8012
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 8013
    monitor-exit v0

    return-object v3

    .line 8018
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8019
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    .line 8020
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 8022
    :cond_2
    monitor-exit v0

    return-object v4

    .line 8023
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    .end local v5    # "jBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final greylist acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 18
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 7847
    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v9

    .line 7848
    .local v9, "provider":Landroid/content/IContentProvider;
    if-eqz v9, :cond_0

    .line 7849
    return-object v9

    .line 7858
    :cond_0
    const/4 v10, 0x0

    .line 7859
    .local v10, "holder":Landroid/app/ContentProviderHolder;
    move-object/from16 v15, p0

    invoke-direct {v15, v7, v8}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v14

    .line 7861
    .local v14, "key":Landroid/app/ActivityThread$ProviderKey;
    const/4 v11, 0x0

    :try_start_0
    monitor-enter v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7862
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 7863
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7862
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v1, v0

    .line 7866
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v1, :cond_2

    :try_start_2
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroid/app/ContentProviderHolder;->mLocal:Z

    if-nez v0, :cond_2

    .line 7867
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7868
    :try_start_3
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7873
    :cond_1
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 7875
    :goto_0
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    move-object v1, v0

    .line 7876
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7877
    if-eqz v1, :cond_2

    :try_start_4
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_2

    .line 7879
    const/4 v1, 0x0

    .line 7881
    const-string v0, "ActivityThread"

    const-string v2, "holder\'s provider is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 7876
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    :try_start_6
    throw v0

    .line 7885
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :cond_2
    :goto_1
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 7895
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7896
    :try_start_7
    iput-object v11, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7897
    monitor-exit v2

    .line 7898
    goto :goto_3

    .line 7897
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 7885
    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_2

    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_3
    move-exception v0

    :goto_2
    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 7886
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :catch_0
    move-exception v0

    move-object v4, v14

    goto/16 :goto_6

    .line 7895
    :catchall_4
    move-exception v0

    move-object v4, v14

    goto/16 :goto_7

    .line 7888
    :catch_1
    move-exception v0

    .line 7889
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    .line 7891
    :try_start_a
    const-string v1, "ActivityThread"

    const-string v2, "Interrupted "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 7895
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v1, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7896
    :try_start_b
    iput-object v11, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7897
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 7898
    move-object v1, v10

    .line 7899
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    :goto_3
    if-nez v1, :cond_4

    .line 7900
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7901
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7903
    :cond_3
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (user not unlocked)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7905
    :goto_4
    return-object v11

    .line 7910
    :cond_4
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v2, 0x1

    iget-boolean v3, v1, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v1

    move-object v4, v14

    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .local v4, "key":Landroid/app/ActivityThread$ProviderKey;
    move-object v14, v0

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, p4

    invoke-direct/range {v11 .. v17}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    .line 7912
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .local v0, "holder":Landroid/app/ContentProviderHolder;
    iget-object v1, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v1

    .line 7897
    .end local v0    # "holder":Landroid/app/ContentProviderHolder;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catchall_5
    move-exception v0

    move-object v4, v14

    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :goto_5
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_5

    .line 7895
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catchall_7
    move-exception v0

    move-object v4, v14

    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    goto :goto_7

    .line 7886
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catch_2
    move-exception v0

    move-object v4, v14

    .line 7887
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :goto_6
    :try_start_d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 7895
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :catchall_8
    move-exception v0

    :goto_7
    iget-object v1, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7896
    :try_start_e
    iput-object v11, v4, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7897
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 7898
    throw v0

    .line 7897
    :catchall_9
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v0
.end method

.method final greylist-max-o appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 8194
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8195
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8196
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_0

    .line 8198
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 8199
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8202
    goto :goto_0

    .line 8200
    :catch_0
    move-exception v2

    .line 8201
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "provider":Landroid/os/IBinder;
    throw v3

    .line 8204
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "provider":Landroid/os/IBinder;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 8205
    return-void

    .line 8204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final greylist-max-o applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 6719
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6721
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    .line 6722
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 6723
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Landroid/app/ActivityThread;->updatePackageInfosLocked(Landroid/util/ArrayMap;)V

    .line 6724
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Landroid/app/ActivityThread;->updatePackageInfosLocked(Landroid/util/ArrayMap;)V

    .line 6727
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 6728
    monitor-exit v0

    .line 6729
    return-void

    .line 6728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist collectComponentCallbacks(Z)Ljava/util/ArrayList;
    .locals 7
    .param p1, "includeUiContexts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .line 6509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6512
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6513
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6514
    .local v2, "NAPP":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 6515
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6514
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6517
    .end local v3    # "i":I
    :cond_0
    if-eqz p1, :cond_2

    .line 6518
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 6519
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6520
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_1

    iget-boolean v5, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_1

    .line 6521
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6518
    .end local v4    # "a":Landroid/app/Activity;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 6525
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 6526
    .local v3, "NSVC":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 6527
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 6530
    .local v5, "service":Landroid/app/Service;
    if-nez p1, :cond_3

    instance-of v6, v5, Landroid/window/WindowProviderService;

    if-nez v6, :cond_4

    .line 6531
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6526
    .end local v5    # "service":Landroid/app/Service;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6534
    .end local v2    # "NAPP":I
    .end local v3    # "NSVC":I
    .end local v4    # "i":I
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6535
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 6536
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 6537
    .local v1, "NPRV":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_6

    .line 6538
    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6537
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6540
    .end local v1    # "NPRV":I
    .end local v3    # "i":I
    :cond_6
    monitor-exit v2

    .line 6542
    return-object v0

    .line 6540
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6534
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method final greylist-max-o completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 8
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    .line 8114
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8115
    :try_start_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v1, :cond_0

    .line 8121
    monitor-exit v0

    return-void

    .line 8127
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8129
    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 8130
    .local v2, "jBinder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8131
    .local v3, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v3, p1, :cond_1

    .line 8132
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8135
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 8136
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8137
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 8138
    .local v6, "myBinder":Landroid/os/IBinder;
    if-ne v6, v2, :cond_2

    .line 8139
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8135
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v6    # "myBinder":Landroid/os/IBinder;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 8142
    .end local v2    # "jBinder":Landroid/os/IBinder;
    .end local v3    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "i":I
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8149
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8153
    goto :goto_1

    .line 8151
    :catch_0
    move-exception v0

    .line 8154
    :goto_1
    return-void

    .line 8142
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist countLaunchingActivities(I)V
    .locals 1
    .param p1, "num"    # I

    .line 3952
    iget-object v0, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 3953
    return-void
.end method

.method greylist-max-o doGcIfNeeded()V
    .locals 1

    .line 3286
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->doGcIfNeeded(Ljava/lang/String;)V

    .line 3287
    return-void
.end method

.method blacklist doGcIfNeeded(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 3290
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3294
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 3296
    invoke-static {p1}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 3298
    :cond_0
    return-void
.end method

.method public blacklist dumpProcessAdjustmentInfo(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 8930
    const-string v0, "  ProcessConfig"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8936
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8937
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 8938
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8939
    .local v0, "resConfig":Landroid/content/res/Configuration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Application ResourcesConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8941
    .end local v0    # "resConfig":Landroid/content/res/Configuration;
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mActiveRotationAdjustments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mActiveRotationAdjustments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mActiveRotationAdjustments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8945
    :cond_1
    return-void
.end method

.method final greylist-max-o finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 7797
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7798
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    .line 7800
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 7805
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7808
    nop

    .line 7809
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    if-eqz v1, :cond_1

    .line 7810
    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 7812
    :cond_1
    return-void

    .line 7806
    :catch_0
    move-exception v1

    .line 7807
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getActivitiesToBeDestroyed()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .line 6107
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    return-object v0
.end method

.method public final greylist getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3871
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3872
    .local v0, "activityRecord":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3877
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    return-object v0
.end method

.method public greylist getApplication()Landroid/app/Application;
    .locals 1

    .line 3179
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public greylist getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .line 3149
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 3882
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method blacklist getCoreSettings()Landroid/os/Bundle;
    .locals 2

    .line 8511
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8512
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    .line 8513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDssScale()F
    .locals 1

    .line 9083
    iget v0, p0, Landroid/app/ActivityThread;->mDssScale:F

    return v0
.end method

.method public greylist-max-o getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 3173
    iget-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method blacklist getFloatCoreSetting(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 8538
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8539
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 8540
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    monitor-exit v0

    return v1

    .line 8542
    :cond_0
    monitor-exit v0

    return p2

    .line 8543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getHandler()Landroid/os/Handler;
    .locals 1

    .line 2821
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public blacklist getIdsController()Landroid/app/IdsController;
    .locals 2

    .line 5427
    iget-object v0, p0, Landroid/app/ActivityThread;->idsController:Landroid/app/IdsController;

    if-nez v0, :cond_0

    .line 5428
    new-instance v0, Landroid/app/IdsController;

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/IdsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->idsController:Landroid/app/IdsController;

    .line 5430
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->idsController:Landroid/app/IdsController;

    return-object v0
.end method

.method public greylist getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .line 3155
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public greylist-max-o getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 8517
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8518
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 8519
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 8521
    :cond_0
    monitor-exit v0

    return p2

    .line 8522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getLooper()Landroid/os/Looper;
    .locals 1

    .line 3169
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final greylist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 11
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2879
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2880
    .local v0, "includeCode":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2882
    invoke-static {v3, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    move v10, v3

    .line 2884
    .local v10, "securityViolation":Z
    if-eqz v0, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p3

    if-eqz v3, :cond_3

    move v9, v2

    goto :goto_2

    :cond_3
    move v9, v1

    .line 2885
    .local v9, "registerPackage":Z
    :goto_2
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v2, :cond_5

    .line 2888
    if-eqz v10, :cond_5

    .line 2889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting code from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (with uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2891
    .local v1, "msg":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_4

    .line 2892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to be run in process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2896
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2899
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v10

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v1

    return-object v1
.end method

.method public final greylist-max-p getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2827
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 2832
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2833
    .local v0, "differentUser":Z
    :goto_0
    const-wide/32 v1, 0x10000400

    .line 2837
    if-gez p4, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, p4

    .line 2833
    :goto_1
    invoke-static {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2838
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 2840
    if-eqz v0, :cond_2

    .line 2842
    const/4 v3, 0x0

    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_2

    .line 2843
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    .line 2844
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_2

    .line 2846
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 2849
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_2
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk;

    goto :goto_3

    :cond_4
    move-object v5, v4

    .line 2850
    .local v5, "packageInfo":Landroid/app/LoadedApk;
    :goto_3
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    .line 2851
    invoke-static {v5, v1}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2852
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2853
    .local v4, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v1, v4}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2854
    invoke-virtual {v5, v1, v4}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2857
    .end local v4    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v5}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v4

    if-eqz v4, :cond_7

    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_6

    goto :goto_4

    .line 2859
    :cond_6
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting code from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to be run in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "differentUser":Z
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    throw v4

    .line 2865
    .restart local v0    # "differentUser":Z
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    :cond_7
    :goto_4
    monitor-exit v2

    return-object v5

    .line 2867
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v5    # "packageInfo":Landroid/app/LoadedApk;
    :cond_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2869
    if-eqz v1, :cond_9

    .line 2870
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v2

    return-object v2

    .line 2873
    :cond_9
    return-object v4

    .line 2867
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public final greylist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 2907
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public greylist getProcessName()Ljava/lang/String;
    .locals 1

    .line 3184
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getProfileFilePath()Ljava/lang/String;
    .locals 1

    .line 3164
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStringCoreSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 8529
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8530
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 8531
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 8533
    :cond_0
    monitor-exit v0

    return-object p2

    .line 8534
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getSystemContext()Landroid/app/ContextImpl;
    .locals 1

    .line 3190
    monitor-enter p0

    .line 3191
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    .line 3192
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 3194
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 3195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o getSystemUiContext()Landroid/app/ContextImpl;
    .locals 1

    .line 3200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemUiContext(I)Landroid/app/ContextImpl;
    .locals 2
    .param p1, "displayId"    # I

    .line 3210
    monitor-enter p0

    .line 3211
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 3212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    .line 3214
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    .line 3215
    .local v0, "systemUiContext":Landroid/app/ContextImpl;
    if-nez v0, :cond_1

    .line 3216
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/app/ContextImpl;

    move-result-object v1

    move-object v0, v1

    .line 3217
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3219
    :cond_1
    monitor-exit p0

    return-object v0

    .line 3220
    .end local v0    # "systemUiContext":Landroid/app/ContextImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getSystemUiContextNoCreate()Landroid/app/ContextImpl;
    .locals 2

    .line 3226
    monitor-enter p0

    .line 3227
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 3228
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 3229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getThemeAppIconMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2767
    sget-object v0, Landroid/app/ActivityThread;->sThemeSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2768
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 2769
    invoke-direct {p0}, Landroid/app/ActivityThread;->getThemeResourceFromMappingTable()V

    .line 2771
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2772
    iget-object v0, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    return-object v0

    .line 2771
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 13
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p4, "overlayPaths"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 2746
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2747
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 2748
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 2746
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method blacklist getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 14
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p4, "overlayPaths"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "packageName"    # Ljava/lang/String;

    .line 2755
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2756
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 2757
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 2755
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v1 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
    .locals 1

    .line 3974
    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method public blacklist handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 6881
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6882
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 6883
    .local v1, "pendingOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p2, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6889
    monitor-exit v0

    return-void

    .line 6891
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6892
    nop

    .end local v1    # "pendingOverrideConfig":Landroid/content/res/Configuration;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6894
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 6897
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result p3

    .line 6899
    :cond_1
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6900
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result v0

    .line 6899
    invoke-static {v0, p3}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v0

    .line 6901
    .local v0, "movedToDifferentDisplay":Z
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 6908
    return-void

    .line 6912
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->updateConfigurationForDexCompatIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 6917
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6918
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 6919
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 6927
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 6928
    invoke-virtual {v2}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6929
    if-eqz v0, :cond_4

    move v3, p3

    goto :goto_1

    :cond_4
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getDisplayId()I

    move-result v3

    .line 6927
    :goto_1
    invoke-direct {p0, p1, v2, v3}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6932
    .local v2, "reportedConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_7

    .line 6933
    if-eqz v0, :cond_5

    .line 6934
    invoke-virtual {v1, p3, v2}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 6938
    :cond_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6939
    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6940
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    .line 6941
    .local v5, "v":Landroid/view/ViewRootImpl;
    invoke-virtual {v5, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 6942
    .end local v5    # "v":Landroid/view/ViewRootImpl;
    goto :goto_2

    .line 6943
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 6944
    invoke-virtual {v1, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 6951
    .end local v3    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6952
    return-void

    .line 6892
    .end local v0    # "movedToDifferentDisplay":Z
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "reportedConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 9
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6791
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6792
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 6793
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 6794
    .local v3, "apk":Landroid/app/LoadedApk;
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v1, v4

    .line 6795
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    move-object v1, v4

    .line 6796
    .local v1, "resApk":Landroid/app/LoadedApk;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6799
    const/4 v0, 0x0

    .line 6801
    .local v0, "localeOverlaysChanged":Z
    if-eqz v3, :cond_2

    .line 6802
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6803
    .local v4, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6805
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/content/om/SamsungThemeConstants;->localeDirsChanged([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 6807
    invoke-virtual {v3, p1, v4}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6809
    .end local v4    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 6810
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6811
    .restart local v4    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6813
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/content/om/SamsungThemeConstants;->localeDirsChanged([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 6815
    invoke-virtual {v1, p1, v4}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    move v4, v0

    goto :goto_2

    .line 6809
    .end local v4    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move v4, v0

    .line 6818
    .end local v0    # "localeOverlaysChanged":Z
    .local v4, "localeOverlaysChanged":Z
    :goto_2
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v5

    .line 6820
    if-eqz v4, :cond_4

    .line 6821
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->updatePackageInfosLocked(Landroid/util/ArrayMap;)V

    .line 6822
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->updatePackageInfosLocked(Landroid/util/ArrayMap;)V

    .line 6824
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6828
    if-eqz v4, :cond_6

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 6829
    const-string v0, "ActivityThread"

    const-string v5, "handleApplicationInfoChanged: updating resDirs from appInfo to activityInfo for locale overlays"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6830
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6831
    .local v5, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v2, v7}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v6

    .line 6832
    .local v6, "pInfo":Landroid/app/LoadedApk;
    if-eqz v6, :cond_5

    .line 6833
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 6835
    .end local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v6    # "pInfo":Landroid/app/LoadedApk;
    :cond_5
    goto :goto_3

    .line 6839
    :cond_6
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6841
    :try_start_2
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 6842
    monitor-exit v0

    .line 6843
    return-void

    .line 6842
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 6824
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 6796
    .end local v1    # "resApk":Landroid/app/LoadedApk;
    .end local v3    # "apk":Landroid/app/LoadedApk;
    .end local v4    # "localeOverlaysChanged":Z
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public blacklist handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .locals 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p3, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4637
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 4638
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 4639
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/ActivityThread;->createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    goto :goto_0

    .line 4642
    :cond_0
    const-string v1, "ActivityThread"

    const-string v2, "handleAttachSplashScreenView failed, unable to attach"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    :goto_0
    return-void
.end method

.method public greylist-max-o handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 6733
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6736
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6737
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6738
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 6740
    return-void
.end method

.method public blacklist handleCoreStatesChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "states"    # Landroid/os/Bundle;

    .line 8850
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->onCoreStatesChange(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0

    .line 8852
    .local v0, "coreStateChanges":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    const-class v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8853
    .local v1, "changes":I
    if-eqz v1, :cond_0

    .line 8854
    invoke-direct {p0, v1}, Landroid/app/ActivityThread;->notifyMultiWindowCoreStateChanges(I)V

    .line 8856
    :cond_0
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_1

    .line 8858
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HEADER_TYPE:I

    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->handleFreeformHeaderTypeChanged(I)V

    .line 8860
    :cond_1
    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_2

    .line 8862
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEXSTAR_SHOWING_DELAY_TIME:I

    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->handleDexStarShowingDelayTimeChanged(I)V

    .line 8865
    .end local v1    # "changes":I
    :cond_2
    return-void
.end method

.method public blacklist handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V
    .locals 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 6113
    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V

    .line 6114
    invoke-static {p1, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6115
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 6116
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 6117
    .local v1, "v":Landroid/view/View;
    const/4 v2, 0x1

    const-string v3, "Activity"

    if-eqz v1, :cond_7

    .line 6118
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v4, :cond_0

    .line 6119
    iget v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 6121
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 6122
    .local v4, "wtoken":Landroid/os/IBinder;
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 6123
    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v5, :cond_1

    .line 6125
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 6126
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 6130
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->clearContentView()V

    goto :goto_0

    .line 6132
    :cond_1
    instance-of v5, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v5, :cond_2

    .line 6133
    move-object v5, v1

    check-cast v5, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->destroy()V

    .line 6135
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    .line 6136
    .local v5, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v5, :cond_3

    .line 6139
    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 6141
    :cond_3
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 6144
    .end local v5    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v5, :cond_5

    .line 6145
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6146
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 6145
    invoke-virtual {v5, v4, v7, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6147
    :cond_5
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v5, :cond_6

    .line 6152
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6153
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 6152
    invoke-virtual {v5, v7, v1, v8, v3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 6155
    :cond_6
    :goto_1
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 6158
    .end local v4    # "wtoken":Landroid/os/IBinder;
    :cond_7
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v4, :cond_8

    if-nez v1, :cond_8

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v4, :cond_8

    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6160
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 6161
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 6162
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 6163
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->clearContentView()V

    .line 6166
    :cond_8
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v4, :cond_9

    .line 6173
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6174
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 6173
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 6181
    :cond_9
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 6182
    .local v4, "c":Landroid/content/Context;
    instance-of v5, v4, Landroid/app/ContextImpl;

    if-eqz v5, :cond_a

    .line 6183
    move-object v5, v4

    check-cast v5, Landroid/app/ContextImpl;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 6185
    :cond_a
    if-eqz p2, :cond_b

    .line 6186
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Landroid/app/ActivityClient;->activityDestroyed(Landroid/os/IBinder;)V

    .line 6188
    :cond_b
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6189
    return-void
.end method

.method final greylist-max-o handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 16
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 7026
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 7027
    .local v4, "hasPkgInfo":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 7058
    :pswitch_1
    if-nez v3, :cond_0

    .line 7059
    goto/16 :goto_9

    .line 7062
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 7064
    .local v7, "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v8

    .line 7065
    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int/2addr v0, v6

    move v9, v4

    move v4, v0

    .local v4, "i":I
    .local v9, "hasPkgInfo":Z
    :goto_0
    if-ltz v4, :cond_9

    .line 7066
    :try_start_1
    aget-object v0, v3, v4

    move-object v10, v0

    .line 7067
    .local v10, "packageName":Ljava/lang/String;
    iget-object v0, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 7068
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v11, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    move-object v12, v11

    .line 7069
    .local v12, "pkgInfo":Landroid/app/LoadedApk;
    :goto_1
    if-eqz v12, :cond_2

    .line 7070
    const/4 v9, 0x1

    move v11, v9

    move-object v9, v0

    goto :goto_2

    .line 7072
    :cond_2
    iget-object v13, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    move-object v0, v13

    .line 7073
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/LoadedApk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_3
    move-object v12, v11

    .line 7074
    if-eqz v12, :cond_4

    .line 7075
    const/4 v9, 0x1

    move v11, v9

    move-object v9, v0

    goto :goto_2

    .line 7074
    :cond_4
    move v11, v9

    move-object v9, v0

    .line 7082
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .local v11, "hasPkgInfo":Z
    :goto_2
    if-eqz v12, :cond_8

    .line 7083
    :try_start_2
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7085
    :try_start_3
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v13, 0x400

    .line 7089
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 7086
    invoke-interface {v0, v10, v13, v14, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v13, v0

    .line 7092
    .local v13, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v13, :cond_5

    .line 7093
    const-string v0, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "aInfo is null : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7094
    goto :goto_4

    .line 7098
    :cond_5
    iget-object v0, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 7099
    iget-object v0, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7100
    .local v14, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7101
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 7102
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v13, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7103
    iput-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 7105
    .end local v14    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_6
    goto :goto_3

    .line 7108
    :cond_7
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {v12}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v5

    move-object v14, v0

    .line 7110
    .local v14, "oldResDirs":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 7111
    .local v15, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v1, v0, v15}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7112
    invoke-virtual {v12, v13, v15}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7114
    iget-object v6, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7116
    :try_start_4
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0, v14, v13}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 7118
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 7119
    monitor-exit v6

    .line 7121
    .end local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "oldResDirs":[Ljava/lang/String;
    .end local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4

    .line 7119
    .restart local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "oldResDirs":[Ljava/lang/String;
    .restart local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "i":I
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "hasPkgInfo":Z
    .end local v12    # "pkgInfo":Landroid/app/LoadedApk;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "cmd":I
    .end local p2    # "packages":[Ljava/lang/String;
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 7120
    .end local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "oldResDirs":[Ljava/lang/String;
    .end local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "hasPkgInfo":Z
    .restart local v12    # "pkgInfo":Landroid/app/LoadedApk;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "cmd":I
    .restart local p2    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 7124
    .end local v4    # "i":I
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "pkgInfo":Landroid/app/LoadedApk;
    :catchall_1
    move-exception v0

    move v4, v11

    goto :goto_6

    .line 7065
    .restart local v4    # "i":I
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, -0x1

    move v9, v11

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 7124
    .end local v4    # "i":I
    .end local v11    # "hasPkgInfo":Z
    .local v9, "hasPkgInfo":Z
    :cond_9
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 7127
    :try_start_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/String;

    .line 7128
    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 7127
    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 7130
    goto :goto_5

    .line 7129
    :catch_1
    move-exception v0

    .line 7132
    nop

    .line 7135
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    move v4, v9

    goto :goto_9

    .line 7124
    .restart local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move v4, v9

    goto :goto_6

    .end local v9    # "hasPkgInfo":Z
    .local v4, "hasPkgInfo":Z
    :catchall_3
    move-exception v0

    :goto_6
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 7031
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    if-nez v2, :cond_a

    const/4 v5, 0x1

    .line 7032
    .local v5, "killApp":Z
    :cond_a
    if-nez v3, :cond_b

    .line 7033
    goto :goto_9

    .line 7035
    :cond_b
    iget-object v6, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6

    .line 7036
    :try_start_9
    array-length v0, v3

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_f

    .line 7037
    if-nez v4, :cond_d

    .line 7038
    iget-object v7, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 7039
    .local v7, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 7040
    const/4 v4, 0x1

    goto :goto_8

    .line 7042
    :cond_c
    iget-object v8, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v7, v8

    .line 7043
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 7044
    const/4 v4, 0x1

    .line 7048
    .end local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_d
    :goto_8
    if-eqz v5, :cond_e

    .line 7049
    iget-object v7, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7050
    iget-object v7, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7036
    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 7053
    .end local v0    # "i":I
    :cond_f
    monitor-exit v6

    .line 7054
    goto :goto_9

    .line 7053
    :catchall_4
    move-exception v0

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 7135
    .end local v5    # "killApp":Z
    :goto_9
    invoke-static {v2, v3, v4}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 7136
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public greylist-max-o handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .line 4549
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4551
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4553
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4554
    nop

    .line 4555
    return-void

    .line 4553
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4554
    throw v1
.end method

.method public greylist-max-o handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "customIntent"    # Landroid/content/Intent;

    .line 4301
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4304
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v1, :cond_0

    .line 4305
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 4306
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 4310
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4316
    sget-boolean v1, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    .line 4318
    invoke-static {}, Landroid/graphics/HardwareRenderer;->preload()V

    .line 4320
    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 4323
    invoke-static {}, Landroid/os/GraphicsEnvironment;->hintActivityLaunch()V

    .line 4325
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    .line 4327
    .local v1, "a":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 4328
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 4329
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4330
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    .line 4331
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    .line 4332
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    .line 4333
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    goto :goto_0

    .line 4337
    :cond_2
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 4341
    :cond_3
    :goto_0
    return-object v1
.end method

.method final greylist-max-o handleLowMemory()V
    .locals 4

    .line 7139
    nop

    .line 7140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 7142
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7143
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 7143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7148
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    .line 7149
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v2

    .line 7150
    .local v2, "sqliteReleased":I
    const v3, 0x124fb

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7154
    .end local v2    # "sqliteReleased":I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 7157
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 7159
    const-string/jumbo v2, "mem"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 7160
    return-void
.end method

.method public blacklist handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 0
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 4371
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4372
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4373
    return-void
.end method

.method public blacklist handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p6, "reason"    # Ljava/lang/String;

    .line 5615
    if-eqz p3, :cond_0

    .line 5616
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5619
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v1, p4

    iput v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5620
    invoke-direct {p0, p1, p2, p6, p5}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 5623
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5624
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 5626
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5627
    return-void
.end method

.method public blacklist handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 1
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4599
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    .line 4600
    .local v0, "receivedByApp":Z
    if-nez v0, :cond_0

    .line 4606
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4608
    :cond_0
    return-void
.end method

.method public blacklist handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V
    .locals 1
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 4613
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 4614
    return-void
.end method

.method final greylist-max-o handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 4
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 6955
    if-eqz p1, :cond_0

    .line 6957
    nop

    .line 6959
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 6960
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6967
    nop

    :goto_0
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 6968
    goto :goto_2

    .line 6967
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6963
    :catch_0
    move-exception v0

    .line 6964
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6967
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 6968
    throw v0

    .line 6970
    :cond_0
    nop

    .line 6972
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 6976
    :goto_2
    return-void
.end method

.method public greylist-max-o handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 16
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 6245
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 6246
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6248
    const/4 v1, 0x0

    .line 6253
    .local v1, "configChanges":I
    iget-object v2, v10, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 6254
    :try_start_0
    iget-object v3, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 6255
    .local v3, "N":I
    move-object/from16 v4, p1

    :try_start_1
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6256
    .local v5, "token":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 6257
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v6, 0x0

    move v13, v1

    move-object v12, v4

    .end local v1    # "configChanges":I
    .end local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v6, "i":I
    .local v12, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v13, "configChanges":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 6258
    :try_start_2
    iget-object v1, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6259
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v4, v5, :cond_0

    .line 6260
    move-object v4, v1

    .line 6261
    .end local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_3
    iget v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    or-int/2addr v7, v13

    .line 6262
    .end local v13    # "configChanges":I
    .local v7, "configChanges":I
    :try_start_4
    iget-object v8, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6263
    add-int/lit8 v6, v6, -0x1

    .line 6264
    add-int/lit8 v3, v3, -0x1

    move-object v12, v4

    move v13, v7

    goto :goto_1

    .line 6276
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "i":I
    :catchall_0
    move-exception v0

    move v1, v7

    goto/16 :goto_3

    .end local v7    # "configChanges":I
    .restart local v13    # "configChanges":I
    :catchall_1
    move-exception v0

    move v1, v13

    goto/16 :goto_3

    .line 6257
    .end local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "N":I
    .restart local v5    # "token":Landroid/os/IBinder;
    .restart local v6    # "i":I
    .restart local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    :goto_1
    add-int/2addr v6, v0

    goto :goto_0

    .line 6276
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "i":I
    :catchall_2
    move-exception v0

    move-object v4, v12

    move v1, v13

    goto/16 :goto_3

    .line 6268
    .restart local v3    # "N":I
    .restart local v5    # "token":Landroid/os/IBinder;
    :cond_1
    if-nez v12, :cond_2

    .line 6270
    :try_start_5
    monitor-exit v2

    return-void

    .line 6276
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    :cond_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 6278
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1, v0}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v1

    .line 6280
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-object v2, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 6282
    iget-object v3, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_5

    .line 6286
    iget-object v3, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 6287
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v3, :cond_3

    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6288
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6289
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 6290
    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6291
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6292
    :cond_4
    iget-object v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    move-object v14, v1

    goto :goto_2

    .line 6301
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_5
    move-object v14, v1

    .end local v1    # "changedConfig":Landroid/content/res/Configuration;
    .local v14, "changedConfig":Landroid/content/res/Configuration;
    :goto_2
    if-eqz v14, :cond_6

    .line 6302
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget v3, v14, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v3}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 6303
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1, v14, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 6306
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v1

    iput v1, v10, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6307
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6310
    :cond_6
    iget-object v1, v10, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6312
    .local v15, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v15, :cond_7

    .line 6313
    return-void

    .line 6316
    :cond_7
    iget-object v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, v13

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 6317
    iget-boolean v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    iput-boolean v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6319
    iget-object v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 6333
    :try_start_6
    iget-boolean v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v1, :cond_8

    .line 6334
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iget-object v2, v15, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 6339
    :cond_8
    nop

    .line 6341
    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v5, v12, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-boolean v7, v12, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iget-object v8, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    const-string v9, "handleRelaunchActivity"

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v13

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread;->handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V

    .line 6343
    if-eqz v11, :cond_9

    .line 6345
    invoke-virtual {v11, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setReportRelaunchToWindowManager(Z)V

    .line 6347
    :cond_9
    return-void

    .line 6337
    :catch_0
    move-exception v0

    .line 6338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6276
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v13    # "configChanges":I
    .end local v14    # "changedConfig":Landroid/content/res/Configuration;
    .end local v15    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v1, "configChanges":I
    .restart local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v4, p1

    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method public greylist-max-o handleRelaunchActivityLocally(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6394
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6395
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string v1, "ActivityThread"

    if-nez v0, :cond_0

    .line 6396
    const-string v2, "Activity to relaunch no longer exists"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    return-void

    .line 6401
    :cond_0
    const/4 v2, 0x1

    .line 6402
    .local v2, "shouldReportLocalRelaunch":Z
    iget-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLocalRelaunchReportedOnRecreate:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 6405
    const-string v3, "LocalRelaunch was already reported."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6406
    const/4 v2, 0x0

    .line 6407
    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLocalRelaunchReportedOnRecreate:Z

    .line 6411
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v3

    .line 6413
    .local v3, "prevState":I
    const/4 v5, 0x2

    if-lt v3, v5, :cond_6

    const/4 v6, 0x5

    if-le v3, v6, :cond_2

    goto :goto_2

    .line 6420
    :cond_2
    if-eqz v2, :cond_3

    .line 6422
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v6}, Landroid/app/ActivityClient;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 6425
    :cond_3
    new-instance v1, Landroid/util/MergedConfiguration;

    .line 6426
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v6, :cond_4

    .line 6427
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    goto :goto_0

    :cond_4
    iget-object v6, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v6}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    :goto_0
    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v6, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 6429
    .local v1, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-boolean v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    const/4 v7, 0x0

    invoke-static {v7, v7, v4, v1, v6}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v6

    .line 6435
    .local v6, "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    if-ne v3, v5, :cond_5

    invoke-direct {p0}, Landroid/app/ActivityThread;->hasResumedPopOver()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6436
    invoke-static {v4}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4

    goto :goto_1

    .line 6438
    :cond_5
    invoke-static {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v4

    :goto_1
    nop

    .line 6440
    .local v4, "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    iget-object v5, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v5, v7}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 6441
    .local v5, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 6442
    invoke-virtual {v5, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 6443
    invoke-virtual {p0, v5}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 6444
    return-void

    .line 6414
    .end local v1    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v4    # "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v6    # "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    :cond_6
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity state must be in [ON_START..ON_STOP] in order to be relaunched,current state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6416
    return-void
.end method

.method public greylist-max-o handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 19
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    .line 4380
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v5, v0

    .line 4382
    .local v5, "forAutofill":Z
    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    move v6, v0

    .line 4385
    .local v6, "requestedOnlyContent":Z
    iget v0, v1, Landroid/app/ActivityThread;->mLastSessionId:I

    iget v7, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    if-eq v0, v7, :cond_3

    .line 4387
    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput v0, v1, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 4388
    iget-object v0, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_3

    .line 4389
    iget-object v7, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/assist/AssistStructure;

    .line 4390
    .local v7, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v7, :cond_2

    .line 4391
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 4393
    :cond_2
    iget-object v8, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4388
    .end local v7    # "structure":Landroid/app/assist/AssistStructure;
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 4397
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    .line 4398
    .local v13, "data":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 4399
    .local v0, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v5, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    new-instance v7, Landroid/app/assist/AssistContent;

    invoke-direct {v7}, Landroid/app/assist/AssistContent;-><init>()V

    :goto_3
    move-object v14, v7

    .line 4400
    .local v14, "content":Landroid/app/assist/AssistContent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4401
    .local v11, "startTime":J
    iget-object v7, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4402
    .local v15, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v7, 0x0

    .line 4403
    .local v7, "referrer":Landroid/net/Uri;
    if-eqz v15, :cond_e

    .line 4404
    if-nez v5, :cond_5

    .line 4405
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v13}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4406
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v13}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 4407
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v7

    .line 4409
    :cond_5
    iget v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    if-eq v8, v4, :cond_7

    if-nez v5, :cond_7

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v7

    goto :goto_6

    .line 4411
    :cond_7
    :goto_4
    if-nez v6, :cond_8

    .line 4412
    new-instance v8, Landroid/app/assist/AssistStructure;

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v10, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    invoke-direct {v8, v9, v5, v10}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;ZI)V

    move-object v0, v8

    .line 4414
    :cond_8
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 4415
    .local v8, "activityIntent":Landroid/content/Intent;
    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v9, :cond_9

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4416
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-nez v9, :cond_a

    :cond_9
    move v3, v4

    .line 4418
    .local v3, "notSecure":Z
    :cond_a
    if-eqz v8, :cond_b

    if-eqz v3, :cond_b

    .line 4419
    if-nez v5, :cond_c

    .line 4420
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4421
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, -0x43

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4423
    invoke-virtual {v14, v4}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4424
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_5

    .line 4426
    :cond_b
    if-nez v5, :cond_c

    .line 4427
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v14, v4}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4430
    :cond_c
    :goto_5
    if-nez v5, :cond_d

    .line 4431
    iget-object v4, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v14}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 4436
    .end local v3    # "notSecure":Z
    .end local v8    # "activityIntent":Landroid/content/Intent;
    :cond_d
    move-object v3, v7

    goto :goto_6

    .line 4403
    :cond_e
    move-object v3, v7

    .line 4436
    .end local v7    # "referrer":Landroid/net/Uri;
    .local v3, "referrer":Landroid/net/Uri;
    :goto_6
    if-nez v6, :cond_10

    .line 4437
    if-nez v0, :cond_f

    .line 4438
    new-instance v4, Landroid/app/assist/AssistStructure;

    invoke-direct {v4}, Landroid/app/assist/AssistStructure;-><init>()V

    move-object v0, v4

    .line 4443
    :cond_f
    invoke-virtual {v0, v11, v12}, Landroid/app/assist/AssistStructure;->setAcquisitionStartTime(J)V

    .line 4444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/app/assist/AssistStructure;->setAcquisitionEndTime(J)V

    .line 4446
    iget-object v4, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    goto :goto_7

    .line 4436
    :cond_10
    move-object v4, v0

    .line 4449
    .end local v0    # "structure":Landroid/app/assist/AssistStructure;
    .local v4, "structure":Landroid/app/assist/AssistStructure;
    :goto_7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v16

    .line 4451
    .local v16, "mgr":Landroid/app/IActivityTaskManager;
    :try_start_0
    iget-object v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, v16

    move-object v9, v13

    move-object v10, v4

    move-wide/from16 v17, v11

    .end local v11    # "startTime":J
    .local v17, "startTime":J
    move-object v11, v14

    move-object v12, v3

    :try_start_1
    invoke-interface/range {v7 .. v12}, Landroid/app/IActivityTaskManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4454
    nop

    .line 4455
    return-void

    .line 4452
    :catch_0
    move-exception v0

    goto :goto_8

    .end local v17    # "startTime":J
    .restart local v11    # "startTime":J
    :catch_1
    move-exception v0

    move-wide/from16 v17, v11

    .line 4453
    .end local v11    # "startTime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "startTime":J
    :goto_8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method

.method public blacklist handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStateRequest"    # Z
    .param p3, "isForward"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 5439
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5444
    invoke-virtual {p0, p1, p2, p4}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5445
    return-void

    .line 5447
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5452
    return-void

    .line 5455
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5462
    .local v1, "a":Landroid/app/Activity;
    const/16 v2, 0x100

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    .line 5463
    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 5468
    .local v4, "forwardBit":I
    :goto_0
    iget-boolean v5, v1, Landroid/app/Activity;->mStartedActivity:Z

    xor-int/2addr v5, v0

    .line 5469
    .local v5, "willBeVisible":Z
    if-nez v5, :cond_3

    .line 5470
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v6

    .line 5471
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    .line 5470
    invoke-virtual {v6, v7}, Landroid/app/ActivityClient;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v5

    .line 5473
    :cond_3
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v6, :cond_6

    iget-boolean v6, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_6

    if-eqz v5, :cond_6

    .line 5474
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 5475
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 5476
    .local v6, "decor":Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5477
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    .line 5478
    .local v7, "wm":Landroid/view/ViewManager;
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 5479
    .local v8, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v6, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5480
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5481
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v9, v4

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5482
    iget-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v9, :cond_4

    .line 5483
    iput-boolean v0, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 5484
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5489
    invoke-virtual {v6}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    .line 5490
    .local v9, "impl":Landroid/view/ViewRootImpl;
    if-eqz v9, :cond_4

    .line 5491
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    .line 5494
    .end local v9    # "impl":Landroid/view/ViewRootImpl;
    :cond_4
    iget-boolean v9, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v9, :cond_7

    .line 5495
    iget-boolean v9, v1, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v9, :cond_5

    .line 5496
    iput-boolean v0, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 5497
    invoke-interface {v7, v6, v8}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 5503
    :cond_5
    invoke-virtual {v1, v8}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 5510
    .end local v6    # "decor":Landroid/view/View;
    .end local v7    # "wm":Landroid/view/ViewManager;
    .end local v8    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    if-nez v5, :cond_7

    .line 5512
    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto :goto_2

    .line 5510
    :cond_7
    :goto_1
    nop

    .line 5516
    :goto_2
    invoke-static {p1, v3}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5520
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_a

    if-eqz v5, :cond_a

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v6, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v6, :cond_a

    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v6, :cond_a

    .line 5522
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .line 5523
    .local v6, "impl":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_8

    .line 5524
    iget-object v7, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    goto :goto_3

    :cond_8
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 5525
    .local v7, "l":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/2addr v2, v8

    if-eq v2, v4, :cond_9

    .line 5528
    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    or-int/2addr v2, v4

    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5531
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v2, :cond_9

    .line 5532
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 5533
    .local v2, "wm":Landroid/view/ViewManager;
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 5534
    .local v8, "decor":Landroid/view/View;
    invoke-interface {v2, v8, v7}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5538
    .end local v2    # "wm":Landroid/view/ViewManager;
    .end local v8    # "decor":Landroid/view/View;
    :cond_9
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5539
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5540
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v0, :cond_a

    .line 5541
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->makeVisible()V

    .line 5545
    .end local v6    # "impl":Landroid/view/ViewRootImpl;
    .end local v7    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    iget-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5546
    iput-object p1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5548
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v2, Landroid/app/ActivityThread$Idler;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler-IA;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5551
    iget v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingMultiWindowHelpMode:I

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    instance-of v0, v0, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_b

    .line 5553
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    iget v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingMultiWindowHelpMode:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/PhoneWindow;->setMultiWindowHelpMode(I)V

    .line 5554
    iput v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingMultiWindowHelpMode:I

    .line 5557
    :cond_b
    iget v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mDexNonResizeableAppRestartHelpMode:I

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    instance-of v0, v0, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_c

    .line 5560
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mDexNonResizeableAppRestartHelpMode:I

    invoke-virtual {v0, v2, v6}, Lcom/android/internal/policy/PhoneWindow;->setDexNonResizeableAppRestartHelpMode(Landroid/os/IBinder;I)V

    .line 5562
    iput v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mDexNonResizeableAppRestartHelpMode:I

    .line 5566
    :cond_c
    sget-boolean v0, Landroid/app/ActivityThread;->sDisableAID:Z

    if-nez v0, :cond_d

    .line 5567
    invoke-direct {p0, p1, v5}, Landroid/app/ActivityThread;->scheduleVsyncSS(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5570
    :cond_d
    return-void
.end method

.method public blacklist handleSendResult(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6003
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 6004
    .local v0, "resumed":Z
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 6009
    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6011
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6014
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mCalled:Z

    .line 6015
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 6016
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_1

    .line 6030
    goto :goto_0

    .line 6017
    :cond_1
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6018
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resumed":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local p3    # "reason":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6023
    .restart local v0    # "resumed":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local p3    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 6024
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 6025
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6027
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6028
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6021
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 6022
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 6032
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 6033
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 6034
    if-eqz v0, :cond_4

    .line 6035
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 6037
    :cond_4
    return-void
.end method

.method public blacklist handleShowDexCompatRestartDialog(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 9068
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 9069
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 9070
    return-void

    .line 9072
    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    instance-of v1, v1, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v1, :cond_1

    .line 9073
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->requestToggleFreeformWindowingMode()V

    .line 9075
    :cond_1
    return-void
.end method

.method public blacklist handleShowDexNonResizeableAppRestartHelp(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 9185
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 9186
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 9187
    return-void

    .line 9189
    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    instance-of v1, v1, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v1, :cond_1

    .line 9190
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setDexNonResizeableAppRestartHelpMode(Landroid/os/IBinder;I)V

    goto :goto_0

    .line 9192
    :cond_1
    iput p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mDexNonResizeableAppRestartHelpMode:I

    .line 9194
    :goto_0
    return-void
.end method

.method public blacklist handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 4179
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4180
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_9

    .line 4193
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_0

    .line 4195
    return-void

    .line 4198
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4199
    if-eqz p3, :cond_1

    .line 4200
    iput-object p3, v0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 4204
    :cond_1
    const-string v1, "handleStartActivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    .line 4205
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4207
    if-nez p2, :cond_2

    .line 4209
    return-void

    .line 4213
    :cond_2
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldRestoreInstanceState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4214
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4215
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_5

    .line 4216
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 4219
    :cond_4
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 4220
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4225
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldCallOnPostCreate()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4226
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    .line 4227
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4228
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_1

    .line 4231
    :cond_6
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4233
    :goto_1
    iget-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_7

    goto :goto_2

    .line 4234
    :cond_7
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4235
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onPostCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4240
    :cond_8
    :goto_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4241
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4242
    return-void

    .line 4185
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start activity that is not stopped. mLifecycleState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmLifecycleState(Landroid/app/ActivityThread$ActivityClientRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
    .locals 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "configChanges"    # I
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p4, "finalStateRequest"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5877
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5879
    new-instance v0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    invoke-direct {v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;-><init>()V

    .line 5880
    .local v0, "stopInfo":Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 5886
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5889
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5890
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 5893
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5894
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setState(Landroid/os/Bundle;)V

    .line 5895
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setPersistentState(Landroid/os/PersistableBundle;)V

    .line 5896
    invoke-virtual {p3, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V

    .line 5897
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5898
    return-void
.end method

.method public blacklist handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6777
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    const-string v1, "Must only be called in the system process"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 6778
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 6779
    return-void
.end method

.method public blacklist handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .locals 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "onTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5580
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    if-ne v0, p2, :cond_1

    .line 5581
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "Activity top position already set to onTop="

    const-string v2, "ActivityThread"

    if-nez v0, :cond_0

    .line 5582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5583
    return-void

    .line 5586
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5589
    :cond_1
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    .line 5591
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5592
    const-string/jumbo v0, "topStateChangedWhenResumed"

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5598
    :cond_2
    return-void
.end method

.method public greylist-max-o handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 4535
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4536
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 4537
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 4539
    :cond_0
    return-void
.end method

.method final greylist handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 8158
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8159
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 8160
    monitor-exit v0

    .line 8161
    return-void

    .line 8160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final greylist-max-o handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 8164
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8165
    .local v0, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v0, :cond_2

    .line 8168
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8169
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 8170
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8171
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 8172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dead content provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityThread"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8173
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8169
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8177
    .end local v1    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 8184
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8188
    goto :goto_1

    .line 8186
    :catch_0
    move-exception v1

    .line 8191
    :cond_2
    :goto_1
    return-void
.end method

.method public greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 3243
    monitor-enter p0

    .line 3244
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3245
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3248
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 3249
    monitor-exit p0

    .line 3250
    return-void

    .line 3249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final greylist installSystemProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 8502
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    .line 8503
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 8505
    :cond_0
    return-void
.end method

.method public blacklist isCachedProcessState()Z
    .locals 3

    .line 3902
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    monitor-enter v0

    .line 3903
    :try_start_0
    iget v1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3904
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isDexCompatMode()Z
    .locals 3

    .line 9135
    invoke-direct {p0}, Landroid/app/ActivityThread;->isDexMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9136
    return v1

    .line 9138
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist isHandleSplashScreenExit(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4628
    monitor-enter p0

    .line 4629
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->containsExitListener(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 4630
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist isInDensityCompatMode()Z
    .locals 1

    .line 8844
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    return v0
.end method

.method public greylist-max-o isProfiling()Z
    .locals 1

    .line 3159
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$attach$2$android-app-ActivityThread(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 8466
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 8469
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8471
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8472
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 8471
    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 8475
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 8476
    invoke-virtual {v1, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 8477
    .local v1, "updatedConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 8478
    const/16 v2, 0x76

    invoke-virtual {p0, v2, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 8479
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 8482
    .end local v1    # "updatedConfig":Landroid/content/res/Configuration;
    :cond_0
    monitor-exit v0

    .line 8483
    return-void

    .line 8482
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$syncTransferSplashscreenViewTransaction$1$android-app-ActivityThread(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4695
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public blacklist mayStayActivityFocus(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 9170
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 9171
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v1, :cond_0

    .line 9172
    const/4 v1, 0x1

    return v1

    .line 9174
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onCoreStatesChange(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 1
    .param p1, "states"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8869
    invoke-static {p1}, Lcom/samsung/android/app/CoreStatePool;->updateFrom(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 4542
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4543
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 4544
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    .line 4546
    :cond_0
    return-void
.end method

.method blacklist onSystemUiContextCleanup(Landroid/app/ContextImpl;)V
    .locals 2
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 3233
    monitor-enter p0

    .line 3234
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3235
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 3236
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 3237
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3239
    .end local v0    # "index":I
    :cond_1
    monitor-exit p0

    .line 3240
    return-void

    .line 3239
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final greylist-max-p peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    .line 2917
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 2919
    if-eqz p2, :cond_0

    .line 2920
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 2922
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2924
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return-object v2

    .line 2925
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 6042
    const/4 v0, 0x0

    .line 6044
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 6045
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 6046
    if-eqz p2, :cond_0

    .line 6047
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Activity;->mFinished:Z

    .line 6050
    :cond_0
    const-string v1, "destroy"

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 6052
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6053
    const-string v1, "destroy"

    invoke-direct {p0, p1, v2, v1}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6055
    :cond_1
    if-eqz p4, :cond_3

    .line 6057
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6063
    goto :goto_0

    .line 6058
    :catch_0
    move-exception v1

    .line 6059
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 6060
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6061
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 6066
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    :try_start_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v1, Landroid/app/Activity;->mCalled:Z

    .line 6067
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 6068
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_5

    .line 6072
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_4

    .line 6073
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 6082
    :cond_4
    goto :goto_1

    .line 6069
    :cond_5
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "finishing":Z
    .end local p3    # "configChanges":I
    .end local p4    # "getNonConfigInstance":Z
    .end local p5    # "reason":Ljava/lang/String;
    throw v1
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6077
    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "finishing":Z
    .restart local p3    # "configChanges":I
    .restart local p4    # "getNonConfigInstance":Z
    .restart local p5    # "reason":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 6078
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6083
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 6084
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6085
    invoke-virtual {p0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 6086
    monitor-enter p0

    .line 6087
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v1, :cond_6

    .line 6088
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->tokenDestroyed(Landroid/os/IBinder;)V

    .line 6090
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6094
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6095
    :try_start_3
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6096
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6097
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 6098
    return-void

    .line 6096
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 6090
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 6079
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to destroy activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6080
    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 6075
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 6076
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1
.end method

.method final greylist-max-o performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5636
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5637
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "start"    # Z

    .line 5913
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_0

    .line 5914
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "performRestartActivity"

    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    .line 5915
    if-eqz p2, :cond_0

    .line 5916
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5919
    :cond_0
    return-void
.end method

.method public blacklist performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStateRequest"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5318
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5319
    return v1

    .line 5321
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v2, 0x3

    const-string v3, "ActivityThread"

    if-ne v0, v2, :cond_2

    .line 5322
    if-nez p2, :cond_1

    .line 5323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to resume activity which is already resumed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 5325
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5326
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return v1

    .line 5335
    :cond_2
    if-eqz p2, :cond_3

    .line 5336
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 5337
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v0, Landroid/app/Activity;->mStartedActivity:Z

    .line 5340
    :cond_3
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onStateNotSaved()V

    .line 5341
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 5342
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 5343
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 5344
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 5345
    iput-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5347
    :cond_4
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 5348
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, p1, v1, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 5349
    iput-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5351
    :cond_5
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v1, v5, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 5353
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_LEVEL_LOW:Z

    if-nez v1, :cond_6

    .line 5354
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 5355
    .local v5, "allocatedMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v7, v9

    .line 5356
    .local v7, "thresholdOfHeapSize":D
    sget-boolean v1, Landroid/app/ActivityThread;->mIsAnomalyDetected:Z

    if-nez v1, :cond_6

    long-to-double v9, v5

    cmpl-double v1, v9, v7

    if-lez v1, :cond_6

    .line 5357
    sput-boolean v0, Landroid/app/ActivityThread;->mIsAnomalyDetected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5359
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " is using "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v9, 0x100000

    div-long v9, v5, v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " MB, so start dumping for java heapdump"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/log/core/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ".hprof"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5362
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5366
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 5363
    :catch_0
    move-exception v1

    .line 5364
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "Cannot dump for java heapdump"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5365
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5370
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "allocatedMemory":J
    .end local v7    # "thresholdOfHeapSize":D
    :cond_6
    :goto_0
    iput-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5371
    iput-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 5372
    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5374
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    const-string/jumbo v2, "topWhenResuming"

    invoke-direct {p0, p1, v1, v2}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5380
    goto :goto_1

    .line 5375
    :catch_1
    move-exception v1

    .line 5376
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5381
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 5377
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resume activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5378
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method final greylist-max-r performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5735
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5736
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 5738
    return-void
.end method

.method final greylist-max-o performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5630
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPictureInPictureRequested(Landroid/app/Activity;)V

    .line 5631
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 5632
    return-void
.end method

.method public greylist-max-o prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "config"    # Landroid/util/MergedConfiguration;
    .param p6, "preserveWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z)",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation

    .line 6195
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v0, 0x0

    .line 6196
    .local v0, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    .line 6198
    .local v1, "scheduleRelaunch":Z
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 6199
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 6200
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6202
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_3

    .line 6203
    move-object v0, v4

    .line 6204
    if-eqz p2, :cond_1

    .line 6205
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 6206
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 6208
    :cond_0
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 6211
    :cond_1
    :goto_1
    if-eqz p3, :cond_4

    .line 6212
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 6213
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 6215
    :cond_2
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_2

    .line 6199
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6222
    .end local v3    # "i":I
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 6224
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    move-object v0, v3

    .line 6225
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 6226
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 6227
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 6228
    iput-boolean p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6229
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6230
    const/4 v1, 0x1

    .line 6232
    :cond_5
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6233
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6234
    iget v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v3, p4

    iput v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 6235
    monitor-exit v2

    .line 6237
    if-eqz v1, :cond_6

    move-object v2, v0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return-object v2

    .line 6235
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist registerMultiWindowCoreStateListener(Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;

    .line 8893
    iget-object v0, p0, Landroid/app/ActivityThread;->mMultiWindowCoreStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 8894
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mMultiWindowCoreStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8895
    monitor-exit v0

    .line 8896
    return-void

    .line 8895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 3803
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3804
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3805
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v1, :cond_0

    .line 3806
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3807
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3809
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3810
    nop

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v0

    .line 3811
    return-void

    .line 3810
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerSplashScreenManager(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)V
    .locals 1
    .param p1, "manager"    # Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 4621
    monitor-enter p0

    .line 4622
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 4623
    monitor-exit p0

    .line 4624
    return-void

    .line 4623
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final greylist releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 9
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    .line 8028
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 8029
    return v0

    .line 8032
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 8033
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 8034
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8035
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v3, :cond_1

    .line 8037
    monitor-exit v2

    return v0

    .line 8040
    :cond_1
    const/4 v4, 0x0

    .line 8041
    .local v4, "lastRef":Z
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p2, :cond_5

    .line 8042
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_2

    .line 8045
    monitor-exit v2

    return v0

    .line 8047
    :cond_2
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 8048
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_8

    .line 8055
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v0

    :goto_0
    move v4, v7

    .line 8061
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 8062
    if-eqz v4, :cond_4

    move v0, v6

    .line 8061
    :cond_4
    invoke-interface {v7, v8, v5, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 8063
    :catch_0
    move-exception v0

    .line 8065
    :goto_1
    goto :goto_3

    .line 8068
    :cond_5
    :try_start_2
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_6

    .line 8071
    monitor-exit v2

    return v0

    .line 8073
    :cond_6
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 8074
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_8

    .line 8078
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_7

    move v7, v6

    goto :goto_2

    :cond_7
    move v7, v0

    :goto_2
    move v4, v7

    .line 8079
    if-nez v4, :cond_8

    .line 8085
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v7, v8, v0, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8089
    goto :goto_3

    .line 8087
    :catch_1
    move-exception v0

    .line 8094
    :cond_8
    :goto_3
    if-eqz v4, :cond_a

    .line 8095
    :try_start_4
    iget-boolean v0, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v0, :cond_9

    .line 8102
    iput-boolean v6, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8103
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x83

    invoke-virtual {v0, v5, v3}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8104
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v0, v7, v8}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8105
    nop

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_4

    .line 8106
    :cond_9
    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate remove pending of provider "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v7, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8109
    :cond_a
    :goto_4
    monitor-exit v2

    return v6

    .line 8110
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "lastRef":Z
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public blacklist reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 6489
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->activityRelaunched(Landroid/os/IBinder;)V

    .line 6490
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldReportRelaunchToWindowManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 6491
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->reportActivityRelaunched()V

    .line 6493
    :cond_0
    return-void
.end method

.method public greylist-max-o reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2
    .param p1, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5908
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1}, Landroid/app/servertransaction/PendingTransactionActions;->getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 5909
    return-void
.end method

.method public final greylist-max-o resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3825
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3826
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3825
    const/16 v1, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3827
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 3829
    const/16 v1, -0x5c

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 3832
    :cond_0
    return-object v0
.end method

.method final greylist-max-o scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 4007
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 4008
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 4009
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 4010
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 4011
    const/16 v1, 0x77

    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 4012
    return-void
.end method

.method greylist scheduleGcIdler()V
    .locals 2

    .line 3254
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 3255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3256
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3258
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3259
    return-void
.end method

.method blacklist schedulePurgeIdler()V
    .locals 2

    .line 3270
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 3271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 3272
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3274
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3275
    return-void
.end method

.method greylist-max-o scheduleRelaunchActivity(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6350
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6351
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 6352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule relaunch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6354
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLocalRelaunchReportedOnRecreate:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6355
    invoke-virtual {v1}, Landroid/app/Activity;->canUseLocalRelaunchTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleRelaunchActivity: report local relaunch, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6362
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/app/ActivityClient;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 6363
    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLocalRelaunchReportedOnRecreate:Z

    .line 6364
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    goto :goto_0

    .line 6367
    :cond_0
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    xor-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6370
    :cond_1
    :goto_0
    return-void
.end method

.method public final greylist sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .line 3961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3962
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3963
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {v1, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v1

    .line 3964
    .local v1, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 3966
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$ApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3969
    goto :goto_0

    .line 3967
    :catch_0
    move-exception v2

    .line 3970
    :goto_0
    return-void
.end method

.method greylist-max-o sendMessage(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3978
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3979
    return-void
.end method

.method public final greylist-max-p startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p8, "assistToken"    # Landroid/os/IBinder;
    .param p9, "shareableActivityToken"    # Landroid/os/IBinder;

    .line 3840
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 3841
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3842
    iput-object p8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    .line 3843
    iput-object p9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    .line 3844
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 3845
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3846
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3847
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 3848
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 3849
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3850
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3866
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o stopProfiling()V
    .locals 1

    .line 6985
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    .line 6986
    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 6988
    :cond_0
    return-void
.end method

.method public blacklist unregisterMultiWindowCoreStateListener(Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;

    .line 8900
    iget-object v0, p0, Landroid/app/ActivityThread;->mMultiWindowCoreStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 8901
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mMultiWindowCoreStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8902
    monitor-exit v0

    .line 8903
    return-void

    .line 8902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 3816
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3817
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3818
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v1, :cond_0

    .line 3819
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3821
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_0
    monitor-exit v0

    .line 3822
    return-void

    .line 3821
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o unscheduleGcIdler()V
    .locals 2

    .line 3262
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 3263
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3264
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3266
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3267
    return-void
.end method

.method blacklist unschedulePurgeIdler()V
    .locals 2

    .line 3278
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 3279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 3280
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3282
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3283
    return-void
.end method

.method public blacklist updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 6853
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6854
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 6855
    .local v1, "pendingOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 6856
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6862
    monitor-exit v0

    return-void

    .line 6864
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6865
    nop

    .end local v1    # "pendingOverrideConfig":Landroid/content/res/Configuration;
    monitor-exit v0

    .line 6866
    return-void

    .line 6865
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3887
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 3888
    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3890
    .local v0, "updatedConfig":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 3891
    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3893
    :cond_0
    return-void
.end method

.method public greylist-max-o updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .line 3910
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    monitor-enter v0

    .line 3911
    :try_start_0
    iget v1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    if-ne v1, p1, :cond_0

    .line 3912
    monitor-exit v0

    return-void

    .line 3914
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->isCachedProcessState()Z

    move-result v1

    .line 3915
    .local v1, "wasCached":Z
    iput p1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 3916
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->updateVmProcessState(I)V

    .line 3921
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3926
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/ActivityThread;->isCachedProcessState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_3

    .line 3927
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v2, 0x0

    .line 3928
    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3929
    .local v0, "pendingConfig":Landroid/content/res/Configuration;
    if-nez v0, :cond_1

    .line 3930
    return-void

    .line 3932
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v3}, Landroid/app/ActivityThread$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 3933
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 3935
    :cond_2
    const/16 v2, 0x76

    invoke-virtual {p0, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 3938
    .end local v0    # "pendingConfig":Landroid/content/res/Configuration;
    :cond_3
    :goto_0
    return-void

    .line 3921
    .end local v1    # "wasCached":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
