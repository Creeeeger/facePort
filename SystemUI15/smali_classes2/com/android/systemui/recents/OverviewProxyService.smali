.class public final Lcom/android/systemui/recents/OverviewProxyService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field static final ACTION_QUICKSTEP:Ljava/lang/String; = "android.intent.action.QUICKSTEP_SERVICE"


# instance fields
.field public mActiveNavBarRegion:Landroid/graphics/Region;

.field public mBound:Z

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mConnectionBackoffAttempts:I

.field public final mConnectionCallbacks:Ljava/util/List;

.field public final mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBoundedUserId:I

.field public final mDeferredConnectionCallback:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

.field public final mHandler:Landroid/os/Handler;

.field public mInputFocusTransferStartMillis:J

.field public mInputFocusTransferStartY:F

.field public mInputFocusTransferStarted:Z

.field public mIsEnabled:Z

.field public final mIsNonPrimaryUser:Z

.field public final mLauncherStateChangedReceiver:Lcom/android/systemui/recents/OverviewProxyService$3;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNavBarControllerLazy:Ldagger/Lazy;

.field public mNavBarMode:I

.field public final mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field public final mOverviewServiceConnection:Lcom/android/systemui/recents/OverviewProxyService$4;

.field public final mOverviewServiceDeathRcpt:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;

.field public final mQsCustomizerContoller:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

.field public final mQuickStepIntent:Landroid/content/Intent;

.field public final mRecentsComponentName:Landroid/content/ComponentName;

.field public final mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

.field public final mScreenLifecycleObserver:Lcom/android/systemui/recents/OverviewProxyService$8;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

.field public final mShadeViewControllerLazy:Ldagger/Lazy;

.field public final mShellInterface:Lcom/android/wm/shell/sysui/ShellInterface;

.field public final mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field public mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mSysuiUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUnfoldTransitionProgressForwarder:Ljava/util/Optional;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserEventReceiver:Lcom/android/systemui/recents/OverviewProxyService$2;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVoiceInteractionSessionListener:Lcom/android/systemui/recents/OverviewProxyService$5;

.field public final mWakefulnessLifecycleObserver:Lcom/android/systemui/recents/OverviewProxyService$9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/wm/shell/sysui/ShellInterface;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/model/SysUiState;Ljavax/inject/Provider;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/dump/DumpManager;Ljava/util/Optional;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/FgsManagerController;Landroid/os/Handler;Lcom/android/systemui/searcle/SearcleManager;Lcom/android/systemui/popup/SamsungScreenPinningRequest;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/wm/shell/sysui/ShellInterface;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;",
            "Lcom/android/internal/app/AssistUtils;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;",
            ">;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/qs/FgsManagerController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/searcle/SearcleManager;",
            "Lcom/android/systemui/popup/SamsungScreenPinningRequest;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService;I)V

    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    const/4 v7, -0x1

    iput v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    iput v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    new-instance v7, Lcom/android/systemui/recents/OverviewProxyService$1;

    invoke-direct {v7, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    new-instance v7, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v7, v0, v9}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService;I)V

    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    new-instance v7, Lcom/android/systemui/recents/OverviewProxyService$2;

    invoke-direct {v7, v0}, Lcom/android/systemui/recents/OverviewProxyService$2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    new-instance v10, Lcom/android/systemui/recents/OverviewProxyService$3;

    invoke-direct {v10, v0}, Lcom/android/systemui/recents/OverviewProxyService$3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v10, v0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Lcom/android/systemui/recents/OverviewProxyService$3;

    new-instance v11, Lcom/android/systemui/recents/OverviewProxyService$4;

    invoke-direct {v11, v0}, Lcom/android/systemui/recents/OverviewProxyService$4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v11, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Lcom/android/systemui/recents/OverviewProxyService$4;

    new-instance v11, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v11, v0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    new-instance v12, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;

    invoke-direct {v12, v0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;

    new-instance v12, Lcom/android/systemui/recents/OverviewProxyService$5;

    invoke-direct {v12, v0}, Lcom/android/systemui/recents/OverviewProxyService$5;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    new-instance v13, Lcom/android/systemui/recents/OverviewProxyService$6;

    invoke-direct {v13, v0}, Lcom/android/systemui/recents/OverviewProxyService$6;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v13, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v14, Lcom/android/systemui/recents/OverviewProxyService$8;

    invoke-direct {v14, v0}, Lcom/android/systemui/recents/OverviewProxyService$8;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    new-instance v15, Lcom/android/systemui/recents/OverviewProxyService$9;

    invoke-direct {v15, v0}, Lcom/android/systemui/recents/OverviewProxyService$9;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    iput-boolean v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mIsNonPrimaryUser:Z

    const-string v9, "OverviewProxyService"

    if-eqz v8, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Unexpected initialization for non-primary user"

    invoke-static {v9, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "OPS not initialized for non-primary user, just return"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mShellInterface:Lcom/android/wm/shell/sysui/ShellInterface;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mShadeViewControllerLazy:Ldagger/Lazy;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarControllerLazy:Ldagger/Lazy;

    iput-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    const v8, 0x104039f

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    move-object/from16 p11, v12

    new-instance v12, Landroid/content/Intent;

    move-object/from16 p17, v15

    const-string v15, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    iput-object v5, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    new-instance v12, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;

    invoke-direct {v12, v0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v5, v12}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    move-object/from16 v12, p14

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object/from16 v12, p20

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUnfoldTransitionProgressForwarder:Ljava/util/Optional;

    move-object/from16 v12, p22

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    move-object/from16 v12, p23

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v12, p27

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mQsCustomizerContoller:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    sget-object v12, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    move-object/from16 v12, p16

    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysuiUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p19

    invoke-static {v12, v9, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    sget-boolean v9, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz v9, :cond_1

    move-object/from16 v9, p24

    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

    :cond_1
    move-object/from16 v9, p8

    invoke-virtual {v9, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    sget-boolean v9, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v12, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v9, v12}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayId()I

    move-result v12

    check-cast v9, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v9, v12}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    :cond_2
    move-object/from16 v9, p25

    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v9, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v12, "package"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v9, v8, v12}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v12, p21

    invoke-virtual {v12, v7, v8, v9, v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    :cond_3
    check-cast v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v4, v11}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    new-instance v4, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v4, v1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$7;

    invoke-direct {v1, v0, v5}, Lcom/android/systemui/recents/OverviewProxyService$7;-><init>(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iput-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, v6

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v13, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    move-object/from16 v1, p26

    invoke-virtual {v1, v14}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object/from16 v1, p13

    move-object/from16 v2, p17

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledAndBinding()V

    move-object/from16 v1, p11

    move-object/from16 v0, p18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public final disconnectFromLauncherService(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disconnectFromLauncherService bound?: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " currentProxy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " disconnectReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "OverviewProxyService"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Lcom/android/systemui/recents/OverviewProxyService$4;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "OverviewProxyService state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  isConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mRecentsComponentName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mQuickStepIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mBound="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCurrentBoundedUserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mConnectionBackoffAttempts="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mInputFocusTransferStarted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mInputFocusTransferStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mInputFocusTransferStartMillis="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  mActiveNavBarRegion="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mNavBarMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/model/SysUiState;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final internalConnectToCurrentUser(Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsNonPrimaryUser:Z

    const-string v1, "OverviewProxyService"

    if-eqz v0, :cond_0

    const-string p0, "Skipping connection to overview service due to non-primary user caller"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Lcom/android/systemui/recents/OverviewProxyService$4;

    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const v5, 0x2000001

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to bind because of security error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    :goto_1
    return-void
.end method

.method public final notifyConnectionChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNavButtonsDarkIntensityChanged(F)V
    .locals 1

    const-string v0, "OverviewProxyService"

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onNavButtonsDarkIntensityChanged(F)V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to get overview proxy to update nav buttons dark intensity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call onNavButtonsDarkIntensityChanged()"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final retryConnectionWithBackoff()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-static {v2, v3}, Ljava/lang/Math;->scalb(FI)F

    move-result v2

    const v3, 0x49127c00    # 600000.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to connect on attempt "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final shouldShowSwipeUpUI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public shutdownForTest()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Lcom/android/systemui/recents/OverviewProxyService$3;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "Shutdown for test"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService(Ljava/lang/String;)V

    return-void
.end method

.method public final startConnectionToCurrentUser()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "startConnectionToCurrentUser"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final updateEnabledAndBinding()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    return-void
.end method
