.class public final Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final bypassStateChangedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

.field public final configChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

.field public final configPlugin:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final context:Landroid/content/Context;

.field public final datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final deviceProvisionedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;

.field public final execution:Lcom/android/systemui/util/concurrency/Execution;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mSplitShadeEnabled:Z

.field public managedUserHandle:Landroid/os/UserHandle;

.field public final plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final recentSmartspaceData:Ljava/util/Deque;

.field public final regionSamplers:Ljava/util/Map;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public session:Landroid/app/smartspace/SmartspaceSession;

.field public final sessionListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

.field public final settingsObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

.field public showNotifications:Z

.field public showSensitiveContentForCurrentUser:Z

.field public showSensitiveContentForManagedUser:Z

.field public final smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

.field public final smartspaceViews:Ljava/util/Set;

.field public final stateChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final statusBarStateListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

.field public suppressDisconnects:Z

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$wakefulnessLifecycleObserver$1;

.field public final weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Landroid/app/smartspace/SmartspaceManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserTracker;Landroid/content/ContentResolver;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/Execution;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Landroid/app/smartspace/SmartspaceManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel$Factory;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/util/concurrency/Execution;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->context:Landroid/content/Context;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->contentResolver:Landroid/content/ContentResolver;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bgExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    move-object/from16 v3, p22

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-object/from16 v3, p23

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-object/from16 v3, p24

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-object/from16 v3, p25

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configPlugin:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->recentSmartspaceData:Ljava/util/Deque;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->regionSamplers:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->stateChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;

    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->sessionListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTrackerCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

    move-object/from16 v3, p21

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->settingsObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;

    new-instance v3, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassStateChangedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

    new-instance v3, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$wakefulnessLifecycleObserver$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$wakefulnessLifecycleObserver$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$wakefulnessLifecycleObserver$1;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p17

    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static synthetic getSmartspaceViews$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final buildAndConnectDateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildView(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->connectSession()V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot build date view when not decoupled"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot build view when not enabled"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final buildView(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getView(Landroid/view/ViewGroup;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->registerConfigProvider(Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V

    :cond_1
    const-string p3, "lockscreen"

    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setUiSurface(Ljava/lang/String;)V

    new-instance p3, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setTimeChangedDelegate(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    new-instance p2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$buildView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$buildView$2;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setKeyguardBypassEnabled(Z)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const p3, 0x7f0a0d06

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->stateChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final connectSession()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iget-object v2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    new-instance v5, Landroid/app/smartspace/SmartspaceConfig$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->context:Landroid/content/Context;

    const-string v7, "lockscreen"

    invoke-direct {v5, v6, v7}, Landroid/app/smartspace/SmartspaceConfig$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceConfig$Builder;->build()Landroid/app/smartspace/SmartspaceConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/smartspace/SmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;)Landroid/app/smartspace/SmartspaceSession;

    move-result-object v4

    const-string v5, "LockscreenSmartspaceController"

    const-string v6, "Starting smartspace session for lockscreen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->sessionListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

    invoke-virtual {v4, v5, v6}, Landroid/app/smartspace/SmartspaceSession;->addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTrackerCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->contentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v5, "lock_screen_allow_private_notifications"

    invoke-interface {v4, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->settingsObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

    const/4 v8, -0x1

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->contentResolver:Landroid/content/ContentResolver;

    const-string v5, "lock_screen_show_notifications"

    invoke-interface {v4, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassStateChangedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->registerOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V

    sget-object v3, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v5, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$wakefulnessLifecycleObserver$1;

    invoke-virtual {v3, v5}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    new-instance v3, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    :cond_4
    if-eqz v1, :cond_5

    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$2;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    :cond_5
    if-eqz v0, :cond_6

    new-instance v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$3;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setKeyguardBypassEnabled(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->reloadSmartspace()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final disconnect()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->suppressDisconnects:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->sessionListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

    invoke-virtual {v0, v1}, Landroid/app/smartspace/SmartspaceSession;->removeOnTargetsAvailableListener(Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceSession;->close()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTrackerCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->settingsObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassStateChangedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unregisterOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$wakefulnessLifecycleObserver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    :cond_4
    if-eqz v1, :cond_5

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->onTargetsAvailable(Ljava/util/List;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz p0, :cond_6

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    :cond_6
    if-eqz p0, :cond_7

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->onTargetsAvailable(Ljava/util/List;)V

    :cond_7
    const-string p0, "LockscreenSmartspaceController"

    const-string v0, "Ended smartspace session for lockscreen"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p2

    const-string v0, "Region Samplers"

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->regionSamplers:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "[RegionSampler]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionSamplingEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "regionSamplingEnabled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "regionDarkness: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->lightForegroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lightForegroundColor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->darkForegroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "darkForegroundColor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "passed-in sampledView: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calculated samplingBounds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sampledView width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sampledView height: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "screen width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", screen height: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->calculateScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->convertBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sampledRegionWithOffset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->isLockscreen:Z

    if-eqz v2, :cond_0

    const-string v2, "lockscreen"

    goto :goto_1

    :cond_0
    const-string v2, "homescreen"

    :goto_1
    iget-object v1, v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->initialSampling:Landroid/app/WallpaperColors;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialSampling for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Recent BC Smartspace Targets (most recent first)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->recentSmartspaceData:Ljava/util/Deque;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->recentSmartspaceData:Ljava/util/Deque;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "   No data\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->recentSmartspaceData:Ljava/util/Deque;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$dump$2$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$dump$2$1;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2

    throw p0

    :goto_3
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
.end method

.method public final isDateWeatherDecoupled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final reloadSmartspace()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v3, "lock_screen_show_notifications"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showNotifications:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    const-string v5, "lock_screen_allow_private_notifications"

    invoke-interface {v2, v5, v4, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showSensitiveContentForCurrentUser:Z

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v6

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->managedUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_4
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v5, v4, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_5

    move v4, v3

    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showSensitiveContentForManagedUser:Z

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    :cond_7
    return-void
.end method
