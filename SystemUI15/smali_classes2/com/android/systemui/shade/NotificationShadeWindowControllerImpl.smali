.class public final Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeWindowController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mCommunalInteractor:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

.field public mDeferWindowLayoutParams:I

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

.field public mHasTopUi:Z

.field public mHasTopUiChanged:Z

.field public final mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

.field public final mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardMaxRefreshRate:F

.field public final mKeyguardPreferredRefreshRate:F

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public mLastKeyguardRotationAllowed:Z

.field public mListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

.field public final mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public mScreenBrightnessDoze:F

.field public mScrimsVisibilityListener:Ljava/util/function/Consumer;

.field public final mSecNotificationShadeWindowStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

.field public final mShadeInteractorLazy:Ldagger/Lazy;

.field public final mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

.field public final mStateListener:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;

.field public final mUserInteractor:Ldagger/Lazy;

.field public final mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

.field public final mWindowRootViewComponentFactory:Lcom/android/systemui/scene/ui/view/WindowRootViewComponent$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Landroid/content/Context;Lcom/android/systemui/scene/ui/view/WindowRootViewComponent$Factory;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeWindowLogger;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;Ldagger/Lazy;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/scene/ui/view/WindowRootViewComponent$Factory;",
            "Landroid/view/WindowManager;",
            "Landroid/app/IActivityManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/ShadeWindowLogger;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/systemui/shade/NotificationShadeWindowState;

    invoke-direct {v4}, Lcom/android/systemui/shade/NotificationShadeWindowState;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;-><init>(I)V

    iput-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    new-instance v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    new-instance v5, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    iput-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v13, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    new-instance v7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;

    const/4 v6, 0x0

    invoke-direct {v7, p0, v6}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    new-instance v8, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;

    const/4 v6, 0x1

    invoke-direct {v8, p0, v6}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    new-instance v9, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;

    const/4 v6, 0x2

    invoke-direct {v9, p0, v6}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    new-instance v10, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v10, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    new-instance v11, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v11, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    new-instance v12, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;

    const/4 v6, 0x0

    invoke-direct {v12, p0, v6}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Predicate;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;)V

    iput-object v13, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isSystemUser:Z

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootViewComponentFactory:Lcom/android/systemui/scene/ui/view/WindowRootViewComponent$Factory;

    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v6, p19

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v6, 0x10e0136

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v2, v6

    iput v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const-string/jumbo v2, "{slow}NotificationShadeWindowControllerImpl"

    move-object/from16 v6, p14

    invoke-virtual {v6, v2, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mUserInteractor:Ldagger/Lazy;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCommunalInteractor:Ldagger/Lazy;

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mShadeInteractorLazy:Ldagger/Lazy;

    move-object/from16 v2, p7

    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v3, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v2, v4, v6}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p8

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Landroid/multiuser/Flags;->useAllCpusDuringUserSwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p21

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    move-object/from16 v3, p11

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getSystemSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    sub-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_1

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v6}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mSecNotificationShadeWindowStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->glanceableHubShowing:Z

    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    iget-boolean v11, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    iget-boolean v12, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    iget-boolean v13, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    iget-boolean v14, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    move/from16 v16, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    move/from16 v17, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    move/from16 v18, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    move/from16 v19, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    move/from16 v20, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    move/from16 v21, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    move/from16 v22, v15

    iget-object v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    move-object/from16 v23, v15

    iget-object v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    move-object/from16 v24, v15

    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    move/from16 v25, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    move/from16 v26, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    move/from16 v27, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    move/from16 v28, v15

    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    move/from16 v29, v15

    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    move/from16 v30, v15

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->communalVisible:Z

    move/from16 v31, v14

    move/from16 v32, v15

    iget-wide v14, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {v1}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    iput-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    iput-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    iput-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    iput-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->glanceableHubShowing:Z

    iput-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    iput-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    iput-boolean v11, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    iput-boolean v12, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    iput-boolean v13, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    move/from16 v2, v31

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    move/from16 v2, v16

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    move/from16 v2, v17

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    move/from16 v2, v18

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    move/from16 v2, v19

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    move/from16 v2, v20

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    move/from16 v2, v21

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    move/from16 v2, v22

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    move-object/from16 v3, v23

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    move-object/from16 v3, v24

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move/from16 v2, v25

    iput v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    move/from16 v2, v26

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    move/from16 v2, v27

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    move/from16 v2, v28

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    move/from16 v2, v29

    iput v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    move/from16 v2, v30

    iput v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    move/from16 v2, v32

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->communalVisible:Z

    iput-wide v14, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wallpaper"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v2, v5, v6, v6}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_1

    :cond_2
    iget-object v2, v4, Lcom/android/systemui/shade/ShadeWindowLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v6, v2, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v2, v2, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    const-string v7, "Cannot set wallpaper offset. mWindowRootView or it\'s token is null"

    invoke-virtual {v6, v2, v5, v7, v3}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x100001

    and-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v6, -0x80001

    and-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_2
    iget v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_6

    iget v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    if-ne v6, v8, :cond_5

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    if-nez v6, :cond_5

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mUserInteractor:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v6, v7}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v9, v6}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v9, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    if-eqz v6, :cond_5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_5

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    float-to-long v5, v2

    const-string v2, "display_set_preferred_refresh_rate"

    invoke-static {v2, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    goto :goto_7

    :cond_6
    iget v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    cmpl-float v6, v2, v5

    if-lez v6, :cond_a

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    if-ne v6, v8, :cond_7

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    if-nez v6, :cond_7

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    if-nez v6, :cond_7

    move v6, v8

    goto :goto_4

    :cond_7
    move v6, v7

    :goto_4
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    if-nez v9, :cond_9

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    goto :goto_6

    :cond_9
    :goto_5
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    :goto_6
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    float-to-long v5, v2

    const-string v2, "display_max_refresh_rate"

    invoke-static {v2, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_a
    :goto_7
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    if-eqz v6, :cond_c

    iget-object v6, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    if-nez v6, :cond_b

    move-object v6, v3

    :cond_b
    iget-object v6, v6, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->isDebuggableSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v6}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->securedWindow:Z

    if-eqz v6, :cond_f

    :cond_d
    sget-boolean v6, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    if-eqz v6, :cond_e

    iget-object v6, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    iget-boolean v6, v6, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    if-nez v6, :cond_f

    :cond_e
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_8

    :cond_f
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, -0x2001

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_8
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    if-eqz v5, :cond_10

    move v5, v8

    goto :goto_9

    :cond_10
    move v5, v7

    :goto_9
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    const/16 v9, 0x8

    if-eqz v6, :cond_11

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    if-nez v6, :cond_13

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    if-nez v6, :cond_13

    :cond_11
    sget-boolean v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v6, :cond_12

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    if-nez v6, :cond_13

    :cond_12
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->glanceableHubShowing:Z

    if-eqz v6, :cond_14

    :cond_13
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v10, -0x20009

    and-int/2addr v6, v10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_b

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v6

    const v10, -0x20001

    if-nez v6, :cond_16

    if-eqz v5, :cond_15

    goto :goto_a

    :cond_15
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v6, v9

    and-int/2addr v6, v10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_b

    :cond_16
    :goto_a
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-boolean v11, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    const/high16 v12, 0x20000

    if-eqz v11, :cond_17

    or-int/2addr v6, v12

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_b

    :cond_17
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    if-eqz v5, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_b

    :cond_18
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v6, v12

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_b
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-eqz v5, :cond_19

    goto :goto_d

    :cond_19
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    if-nez v6, :cond_1b

    sget-boolean v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v6, :cond_1a

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    if-eqz v6, :cond_1a

    goto :goto_c

    :cond_1a
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v11

    not-int v11, v11

    and-int/2addr v10, v11

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    goto :goto_d

    :cond_1b
    :goto_c
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    :goto_d
    invoke-virtual {v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    const/4 v11, 0x2

    const/4 v12, 0x5

    if-nez v10, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v10

    if-nez v10, :cond_1f

    sget-boolean v10, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v10, :cond_1c

    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    if-eqz v10, :cond_1c

    move v10, v7

    goto :goto_e

    :cond_1c
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    :goto_e
    if-eqz v10, :cond_1d

    goto :goto_f

    :cond_1d
    if-nez v5, :cond_1e

    iget-boolean v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    if-nez v10, :cond_1e

    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    if-eqz v10, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v12, -0x1

    goto :goto_11

    :cond_1f
    :goto_f
    iget-boolean v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    if-eqz v10, :cond_20

    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->screenOrientationNoSensor:Z

    if-nez v10, :cond_20

    move v10, v8

    goto :goto_10

    :cond_20
    move v10, v7

    :goto_10
    if-eqz v10, :cond_25

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v10

    if-nez v10, :cond_24

    iget v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->rotation:I

    iget-object v13, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v13, v7}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v14

    if-nez v14, :cond_21

    invoke-virtual {v13, v7}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    :cond_21
    iget-object v14, v13, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    if-eq v10, v14, :cond_23

    invoke-virtual {v13, v7}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v10

    if-nez v10, :cond_22

    invoke-virtual {v13, v7}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    :cond_22
    iget-object v10, v13, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    iput v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->rotation:I

    const-string v13, "adjustScreenOrientation: rotation="

    const-string v14, "NotificationShadeWindowController"

    invoke-static {v10, v13, v14}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->rotation:I

    if-ne v10, v11, :cond_24

    goto :goto_11

    :cond_24
    move v12, v11

    :cond_25
    :goto_11
    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v12, Lcom/android/systemui/shade/ShadeWindowLogger$logApplyVisibility$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logApplyVisibility$2;

    const-string/jumbo v13, "systemui.shadewindow"

    iget-object v14, v4, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v14, v13, v10, v12, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v6, v13, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v14, v12}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-boolean v12, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    iget-object v4, v4, Lcom/android/systemui/shade/ShadeWindowLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    if-eqz v12, :cond_27

    iget-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    if-eqz v12, :cond_26

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;->this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;->mOverlays:Landroid/util/ArraySet;

    new-instance v13, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback$$ExternalSyntheticLambda2;

    invoke-direct {v13, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    :cond_26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v4, v4, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    const-string v12, "Visibility forced to be true"

    invoke-virtual {v6, v4, v10, v12, v3}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    move v6, v8

    goto :goto_13

    :cond_27
    iget-boolean v12, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->communalVisible:Z

    if-eqz v12, :cond_28

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v4, v4, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    const-string v12, "Visibility forced to be true by communal"

    invoke-virtual {v6, v4, v10, v12, v3}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_28
    :goto_13
    iget-object v3, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v4, v3, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    if-eqz v4, :cond_2a

    iget-boolean v4, v3, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    if-eq v6, v4, :cond_29

    goto :goto_14

    :cond_29
    invoke-virtual {v3, v8}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    :cond_2a
    :goto_14
    iget-object v3, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2d

    if-eqz v6, :cond_2b

    move v9, v7

    goto :goto_15

    :cond_2b
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    if-eqz v4, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v9, 0x4

    :goto_15
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2d
    invoke-virtual {v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    const-wide/16 v9, -0x1

    if-eqz v4, :cond_35

    iget v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    iget-object v6, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eq v4, v8, :cond_2e

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFullscreenBouncer()Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_2e
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    if-nez v4, :cond_35

    iget-object v4, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v4, :cond_2f

    invoke-interface {v4}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isDynamicLockEnabled()Z

    move-result v4

    goto :goto_16

    :cond_2f
    move v4, v7

    :goto_16
    if-eqz v4, :cond_30

    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->userScreenTimeOut:Z

    if-eqz v4, :cond_30

    iput-wide v9, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v9, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_19

    :cond_30
    if-nez v5, :cond_31

    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    if-eqz v4, :cond_31

    iget-wide v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    const-wide/16 v9, 0x2710

    cmp-long v2, v4, v9

    if-gez v2, :cond_34

    :goto_17
    move-wide v4, v9

    goto :goto_18

    :cond_31
    iget-object v2, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-wide v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    sget-wide v9, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_ACCESSIBILITY:J

    cmp-long v2, v4, v9

    if-gez v2, :cond_32

    goto :goto_17

    :cond_32
    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-wide v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    sget-wide v9, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_FACE:J

    cmp-long v2, v4, v9

    if-gez v2, :cond_33

    goto :goto_17

    :cond_33
    iget-wide v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    :cond_34
    :goto_18
    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_19

    :cond_35
    iput-wide v9, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v9, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    if-ne v2, v8, :cond_36

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    if-nez v2, :cond_36

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    if-nez v2, :cond_36

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/2addr v3, v11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_1a

    :cond_36
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    xor-int/2addr v2, v8

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v3

    if-eq v3, v2, :cond_37

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    :cond_37
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    if-eqz v2, :cond_38

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1b

    :cond_38
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1b
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    if-eqz v2, :cond_39

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1c

    :cond_39
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_1c
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    if-eqz v2, :cond_3b

    :cond_3a
    move v7, v8

    :cond_3b
    iput-boolean v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1d

    :cond_3c
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1d
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1e

    :cond_3d
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x1000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1e
    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Ljava/lang/Object;I)V

    invoke-static {v2, v8}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Ljava/lang/Object;I)V

    invoke-static {v2, v8}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->applyWindowLayoutParams()V

    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    if-eq v2, v3, :cond_3e

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->notifyStateChangedCallbacks()V

    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Ljava/lang/Object;I)V

    invoke-static {v2, v8}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final applyWindowLayoutParams()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateViewLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method public final batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->applyWindowLayoutParams()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p2, "NotificationShadeWindowController:"

    const-string v0, "  mKeyguardMaxRefreshRate="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    const-string v1, "  mKeyguardPreferredRefreshRate="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    const-string v1, "  preferredMinDisplayRefreshRate="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    const-string v1, "  preferredMaxDisplayRefreshRate="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    const-string v1, "  mDeferWindowLayoutParams="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "mWindowRootView.dump()"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    const-string v0, "  "

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    const-string p2, "Table<State>"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/dump/DumpsysTableLogger;

    sget-object v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->TABLE_HEADERS:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;-><init>(Lcom/android/systemui/common/buffer/RingBuffer;)V

    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->asStringList$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "NotificationShadeWindowController"

    invoke-direct {p2, p0, v0, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;Z)Z

    move-result p0

    return p0
.end method

.method public final isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;Z)Z
    .locals 17

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    if-nez v1, :cond_2

    iget v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    if-nez v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    if-gtz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p0

    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v1, p0

    move v4, v2

    :goto_1
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    iget-object v7, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    sget v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {v7, v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/android/systemui/keyguard/VisibilityController;->needToBeInvisibleWindow()Z

    move-result v6

    if-ne v6, v2, :cond_6

    if-eqz v5, :cond_6

    move v4, v3

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_6

    iget-boolean v5, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v5, :cond_5

    iget-object v5, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v5, :cond_6

    invoke-interface {v5, v3}, Lcom/android/systemui/keyguard/VisibilityController;->resetForceInvisible(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    :cond_6
    :goto_2
    sget-boolean v5, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v5, :cond_8

    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_7

    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    if-eqz v5, :cond_7

    move v4, v3

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceInvisible(Z)V

    :cond_8
    :goto_3
    sget-boolean v5, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    if-eqz v5, :cond_9

    if-nez v4, :cond_9

    iget v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->isClearSideViewCoverType(I)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_9
    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    if-nez v4, :cond_a

    iget v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    move v3, v2

    :cond_b
    move v4, v3

    :cond_c
    if-nez p2, :cond_e

    iget-boolean v3, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLastExpanded:Z

    if-eq v3, v4, :cond_d

    goto :goto_4

    :cond_d
    move-object v0, v1

    goto/16 :goto_5

    :cond_e
    :goto_4
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v3

    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    invoke-static {v5}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v5

    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    invoke-static {v6}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v6

    iget-boolean v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    invoke-static {v7}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v7

    iget-boolean v8, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    invoke-static {v8}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v8

    iget v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    iget v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    iget-boolean v11, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    invoke-static {v11}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v11

    iget-boolean v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    invoke-static {v12}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v12

    iget-boolean v13, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    invoke-static {v13}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v13

    iget-boolean v14, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    invoke-static {v14}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v14

    iget-boolean v15, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    invoke-static {v15}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v15

    move-object/from16 p0, v1

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    invoke-static {v1}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v1

    iget v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    move/from16 p1, v0

    const-string v0, "isExpanded="

    move/from16 p2, v1

    const-string v1, "\n!forceCollapsed="

    move/from16 v16, v14

    const-string v14, ", keyguard="

    invoke-static {v0, v2, v1, v4, v14}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", panel="

    const-string v2, ", fadingAway="

    invoke-static {v0, v3, v1, v5, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", bouncer="

    const-string v2, ", headsUp="

    invoke-static {v0, v6, v1, v7, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", scrim="

    const-string v2, ", blur="

    invoke-static {v0, v8, v1, v9, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", launchingActivity="

    const-string v2, ", dozing="

    invoke-static {v0, v10, v1, v11, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", forceInvisible="

    const-string v2, ", forceVisibleForUnlockAnimation="

    invoke-static {v0, v12, v1, v13, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", coverClosed="

    const-string v2, ", coverApp="

    move/from16 v3, v16

    invoke-static {v0, v3, v1, v15, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    :goto_5
    iget-boolean v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLastExpanded:Z

    if-eq v1, v4, :cond_f

    iget-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isExpandedChangedListeners:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    iput-boolean v4, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLastExpanded:Z

    return v4
.end method

.method public final notifyStateChangedCallbacks()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dreaming:Z

    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZZZZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCommunalVisibleChanged(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->communalVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    :cond_0
    return-void
.end method

.method public final onRemoteInputActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public onShadeOrQsExpanded(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_0
    return-void
.end method

.method public final onThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v0, v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v1

    if-eqz v0, :cond_1

    or-int/lit16 v0, v1, 0x2010

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v1, -0x2011

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setForcePluginOpen(Ljava/lang/Object;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    if-eqz p2, :cond_0

    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    iget-boolean p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_1

    iget-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    :cond_1
    return-void
.end method

.method public final setKeyguardFadingAway(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    if-eq v0, v1, :cond_0

    const-string v0, "keyguardFadingAway "

    invoke-static {v0, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final setKeyguardShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final setNotificationShadeFocusable(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/shade/ShadeWindowLogger$logShadeFocusable$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logShadeFocusable$2;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v4, "systemui.shadewindow"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final setPanelVisible(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/shade/ShadeWindowLogger$logShadeVisibleAndFocusable$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logShadeVisibleAndFocusable$2;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v5, "systemui.shadewindow"

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final setRequestTopUi(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    if-eqz p2, :cond_0

    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method
