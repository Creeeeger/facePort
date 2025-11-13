.class public final Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$1;

.field public mCurrentOrientation:I

.field public final mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public mIsCoverClosed:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

.field public mKeyguardUnlocking:Z

.field public final mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

.field public mLastKeyguardUnlocking:Z

.field public mLaunchEditMode:Z

.field public mLockIconContainer:Landroid/view/ViewGroup;

.field public mNotificationContainer:Landroid/view/View;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mShadeControllerLazy:Ldagger/Lazy;

.field public mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mSystemUIWidgetCallback:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$3;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/ui/BouncerView;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;Ldagger/Lazy;Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/dreams/DreamOverlayStateController;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;",
            "Ldagger/Lazy;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Lcom/android/systemui/bouncer/ui/BouncerView;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    move-object/from16 v13, p17

    move-object/from16 v14, p18

    move-object/from16 v15, p19

    move-object/from16 v16, p20

    move-object/from16 v17, p21

    move-object/from16 v18, p22

    move-object/from16 v19, p23

    move-object/from16 v20, p24

    move-object/from16 v21, p25

    move-object/from16 v22, p26

    move-object/from16 v23, p27

    move-object/from16 v24, p28

    move-object/from16 v25, p29

    move-object/from16 v26, p30

    move-object/from16 v27, p31

    move-object/from16 v28, p32

    move-object/from16 v29, p33

    move-object/from16 v30, p34

    invoke-direct/range {v0 .. v30}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/ui/BouncerView;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;Ldagger/Lazy;Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor;)V

    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mCurrentOrientation:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$1;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$3;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mSystemUIWidgetCallback:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$3;

    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v0, p22

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    move-object/from16 v0, p18

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mShadeControllerLazy:Ldagger/Lazy;

    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isWakeAndUnlocking()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p5, :cond_0

    iget-boolean p5, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz p5, :cond_1

    :cond_0
    new-instance p4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 p5, 0x0

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    move-result p5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isActiveDismissAction()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    :cond_2
    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->setDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->setDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final folderOpenAndDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissAndCollapse()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mShadeControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->makeExpandedInvisible()V

    :goto_0
    return-void
.end method

.method public final getBouncerMessage()Landroid/os/Bundle;
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/android/keyguard/KeyguardPluginControllerImpl$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "bouncer_message"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mPromptReason:I

    const-string v5, ""

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    goto :goto_2

    :cond_1
    iget v3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mPromptReason:I

    invoke-virtual {v2, v0, v3}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mPromptReason:I

    if-eq v6, v4, :cond_3

    const/4 v4, 0x7

    if-eq v6, v4, :cond_3

    const/16 v4, 0x11

    if-ne v6, v4, :cond_2

    goto :goto_0

    :cond_2
    iput-object v5, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mStrongAuthPopupMessage:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mStrongAuthPopupMessage:Ljava/lang/String;

    :goto_1
    move-object v5, v3

    :cond_4
    :goto_2
    const-string/jumbo v0, "strong_auth_message"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "strong_auth_popup_message"

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mStrongAuthPopupMessage:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    return-object v1
.end method

.method public final getIncorrectBouncerMessage()Landroid/os/Bundle;
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/android/keyguard/KeyguardPluginControllerImpl$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v3, v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v7, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f130902

    goto :goto_0

    :cond_2
    const v1, 0x7f130903

    goto :goto_0

    :cond_3
    const v1, 0x7f130904

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-lez v8, :cond_4

    const-string v1, " ("

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7f110006

    invoke-virtual {v1, v5, v8, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ")"

    invoke-static {v0, v1, v3}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "bouncer_incorrect_message"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {v4, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    invoke-interface {v4, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    if-lez v0, :cond_5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string p0, ""

    :goto_1
    const-string v0, "auto_wipe_warning_message"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method

.method public final getLastNavBarVisible()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLastKeyguardUnlocking:Z

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getLastNavBarVisible()Z

    move-result p0

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final getLockIconContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final hide(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->start(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "SecStatusBarKeyguardViewManager"

    const-string v1, "leaveOpenOnKeyguardHide true"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    return-void
.end method

.method public final hideBouncer(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isUnlockOnFoldOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isSwipeBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SecStatusBarKeyguardViewManager"

    const-string p1, "do not hideBouncer when folder is opening"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->setShowSwipeBouncer(Z)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->hide()V

    iget-object v0, v1, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast v0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->setSecurityContainerVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, v1, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast p1, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerInflate:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPostAuthActions()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    return-void
.end method

.method public final interceptRestKey(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->interceptRestKey(Landroid/view/KeyEvent;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public final isLaunchEditMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLaunchEditMode:Z

    return p0
.end method

.method public final isNavBarVisible()Z
    .locals 7

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mIsCoverClosed:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUnlocking:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsDlsOverlay:Z

    if-eqz v6, :cond_1

    iget v5, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    move-object v6, v4

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v6, :cond_2

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v4, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v4}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-nez v0, :cond_3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    if-nez v3, :cond_4

    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public final isPanelFullyCollapsed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->isFullyCollapsed()Z

    move-result p0

    return p0
.end method

.method public final needsFullscreenBouncer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    return p0
.end method

.method public final onBackPressed()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->resetKeyguardDismissAction()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/CameraLauncher;

    iget-object v1, v1, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->clearESimRemoved()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isScrimmed()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {v0, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {v0, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->resetViews(Z)V

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v5, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isSwipeBouncer()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->hideBouncer(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->reset(Z)V

    :goto_2
    move-object p0, v3

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)V

    :cond_7
    return-void
.end method

.method public final onCoverSwitchStateChanged(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isSwipeBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->setShowSwipeBouncer(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mIsCoverClosed:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->hideBouncer(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->updateLockContainerMargin()V

    return-void
.end method

.method public final onDismissCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->onDismissCancelled()V

    return-void
.end method

.method public final onFinishedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->onPause()V

    :cond_0
    return-void
.end method

.method public final onKeyguardFadedAway$1()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-eqz v0, :cond_0

    const-string v0, "SecStatusBarKeyguardViewManager"

    const-string v1, "onKeyguardFadedAway"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->resetViewGroupFade()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->finishKeyguardFadingAway()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->finishKeyguardFadingAway()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLaunchEditMode:Z

    const/16 p0, 0x28

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 3

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "KeyguardVisible"

    const-string v2, "cancelAll"

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    :goto_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedGoingToSleep()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->updateLockContainerMargin()V

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedWakingUp()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateResources$1()V

    :cond_1
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public final onWakeAndUnlock()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    return-void
.end method

.method public final postSetOccluded(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardState(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isEarlyWakeUp()Z

    move-result v0

    const-class v1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->reset(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_2

    const-string v0, "SecStatusBarKeyguardViewManager"

    const-string v2, "hideBounce even though fold opened"

    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->reset(Z)V

    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    :cond_4
    return-void
.end method

.method public final registerCentralSurfaces(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;)V
    .locals 0

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerCentralSurfaces(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mCurrentOrientation:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$1;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 p2, 0x0

    const-wide/16 p3, 0x200

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mSystemUIWidgetCallback:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$3;

    invoke-virtual {p1, p2, p5, p3, p4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    new-instance p2, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public final registerLockIconContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public final requestUnlock(Ljava/lang/String;)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardPluginController"

    const-string/jumbo v1, "requestUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    const-string p0, "credential null : failed to get credential type"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCredentialTypeForUser(I)I

    move-result v5

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_5

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v5, v7

    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq v5, v7, :cond_7

    const-string p0, "credential none, but credentialType is "

    invoke-static {v5, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    const/4 v4, 0x4

    const/4 v6, 0x3

    if-eq v5, v0, :cond_9

    const/4 v7, 0x2

    if-eq v5, v7, :cond_9

    if-eq v5, v6, :cond_9

    if-eq v5, v4, :cond_9

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    if-ne p1, v3, :cond_8

    move p1, v0

    goto :goto_1

    :cond_8
    move p1, v2

    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0, v3, v2, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-eqz p1, :cond_b

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, v2, v3, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, v6}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;-><init>(Lcom/android/keyguard/KeyguardPluginControllerImpl;ILcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v0, p1, v3, v1}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_b
    :goto_2
    return-void
.end method

.method public final reset(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_6

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->resetViews(Z)V

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/android/systemui/keyguard/VisibilityController;->resetForceInvisible(Z)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isEarlyWakeUp()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->hideKeyguard()Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->hideBouncer(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    iget-object p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x138

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->resetKeyguardDismissAction()V

    :cond_6
    return-void
.end method

.method public final resetKeyguardDismissAction()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->willDismissWithAction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-static {v2}, Lcom/android/systemui/util/LogUtil;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SecStatusBarKeyguardViewManager"

    const-string/jumbo v3, "resetKeyguardDismissAction hasDismissAction=%d hasGoneAction=%d"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isActiveDismissAction()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->sendKeyguardStateUpdated(ZZZZ)V

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast v0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v4, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    :cond_3
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    return-void
.end method

.method public final sendKeyguardViewState(ZZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    if-eq p3, v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    if-eq p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->sendKeyguardStateUpdated(ZZZZ)V

    :cond_2
    return-void
.end method

.method public final setLaunchEditMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLaunchEditMode:Z

    return-void
.end method

.method public final setOccluded(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eq p1, v0, :cond_0

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->start(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(ZZ)V

    return-void
.end method

.method public final setShowSwipeBouncer(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setShowSwipeBouncer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrimaryBouncerInteractor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast v0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iput-boolean p1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsSwipeBouncer:Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mIsSwipeBouncer:Z

    return-void
.end method

.method public final shouldSubtleWindowAnimationsForUnlock()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    nop

    :cond_0
    return-void
.end method

.method public final show(Landroid/os/Bundle;)V
    .locals 3

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "KeyguardVisible"

    const-string v2, "cancelAll"

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    return-void
.end method

.method public final showBouncerOrKeyguard(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->hideKeyguard()Z

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-ne v0, v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "SecStatusBarKeyguardViewManager"

    const-string/jumbo v1, "showBouncerOrKeyguard dozing is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->showKeyguard()V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->hideBouncer(Z)V

    iget-object p1, v1, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast p1, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerInflate:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final updateBouncerNavigationBar(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final updateDlsNaviBarVisibility()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateNavigationBarVisibility(Z)V

    return-void
.end method

.method public final updateKeyguardUnlocking()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUnlocking:Z

    return-void
.end method

.method public final updateLastKeyguardUnlocking()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUnlocking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLastKeyguardUnlocking:Z

    return-void
.end method

.method public final updateLockContainerMargin()V
    .locals 10

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const v5, 0x7f070591

    const v6, 0x7f07148f

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x7f070592

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_3
    :goto_0
    add-int/2addr v8, v1

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_8
    :goto_3
    add-int/2addr v6, v1

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    return-void
.end method

.method public final updateLockoutWarningMessage()V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const-string v3, ""

    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {v4, v0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f130a6c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1, v0, v3, v3}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final updateNavigationBarVisibility()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method
