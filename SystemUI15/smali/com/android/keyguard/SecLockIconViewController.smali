.class public final Lcom/android/keyguard/SecLockIconViewController;
.super Lcom/android/keyguard/LegacyLockIconViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mConfigurationListener:Lcom/android/keyguard/SecLockIconViewController$8;

.field public mCurrentOrientation:I

.field public mDisplayType:I

.field public mIsDefaultLockViewMode:Z

.field public mIsLockStarEnabled:Z

.field public final mKeyguardStateCallback:Lcom/android/keyguard/SecLockIconViewController$7;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockStarCallback:Lcom/android/keyguard/SecLockIconViewController$1;

.field public final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public mRunningFace:Z

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mStatusBarStateListener:Lcom/android/keyguard/SecLockIconViewController$5;

.field public mView:Lcom/android/keyguard/SecLockIconView;

.field public final mViewMediatorCallbackLazy:Ldagger/Lazy;


# direct methods
.method public static $r8$lambda$3-mmmdB6ihcNDQifpohr5hGzj84(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    return-void
.end method

.method public static -$$Nest$munregisterCallbacks(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/keyguard/SecLockIconViewController$8;

    iget-object v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mStatusBarStateListener:Lcom/android/keyguard/SecLockIconViewController$5;

    iget-object v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/keyguard/SecLockIconViewController$7;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    new-instance v1, Lcom/android/keyguard/SecLockIconViewController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/SecLockIconViewController$4;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v0, "SecLockIconViewController"

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/SecLockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/biometrics/AuthRippleController;Landroid/content/res/Resources;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/SecLockIconView;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/biometrics/AuthRippleController;",
            "Landroid/content/res/Resources;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    move-object/from16 v19, p21

    move-object/from16 v20, p22

    move-object/from16 v21, p28

    invoke-direct/range {v0 .. v21}, Lcom/android/keyguard/LegacyLockIconViewController;-><init>(Lcom/android/keyguard/LockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/biometrics/AuthRippleController;Landroid/content/res/Resources;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V

    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$1;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$1;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mLockStarCallback:Lcom/android/keyguard/SecLockIconViewController$1;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mIsLockStarEnabled:Z

    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$5;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$5;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mStatusBarStateListener:Lcom/android/keyguard/SecLockIconViewController$5;

    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$6;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$6;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$7;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$7;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/keyguard/SecLockIconViewController$7;

    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$8;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$8;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/keyguard/SecLockIconViewController$8;

    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p16

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v0, p23

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    move-object/from16 v0, p24

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v0, p25

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    move-object/from16 v0, p26

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    move-object/from16 v0, p27

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-void
.end method


# virtual methods
.method public final acceptModifier(Z)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsLockStarEnabled:Z

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v1, v1, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v2, "lockIconVisibility"

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v2

    const-string v3, "lockIconDrawable"

    invoke-interface {v0, v3}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v3

    const-string/jumbo v4, "unlockIconDrawable"

    invoke-interface {v0, v4}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v0

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-interface {v2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_3

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_3
    invoke-interface {v3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->shouldShowLockIcon()Z

    move-result p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    const-string v0, "lock_icon_visibility"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public final onViewModeChanged(I)V
    .locals 2

    const-string v0, "onViewModeChanged mode: "

    const-string v1, "LockIconViewController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    :cond_1
    return-void
.end method

.method public final registerCallbacks$3()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/keyguard/SecLockIconViewController$8;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mStatusBarStateListener:Lcom/android/keyguard/SecLockIconViewController$5;

    iget-object v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/keyguard/SecLockIconViewController$7;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "any_screen_running"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    new-instance v1, Lcom/android/keyguard/SecLockIconViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/SecLockIconViewController$3;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mDisplayType:I

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v1, "SecLockIconViewController"

    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mLockStarCallback:Lcom/android/keyguard/SecLockIconViewController$1;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    return-void
.end method

.method public final shouldShowLockIcon()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getVisibility(I)I

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public final updateVisibility$1()V
    .locals 9

    const-string v0, "SecLockIconViewController"

    const-string/jumbo v1, "updateVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsKeyguardShowing:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->shouldShowLockIcon()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBiometricToastViewAnimating:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    iget-boolean v5, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowUnlockIcon:Z

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    iget-boolean v5, p0, Lcom/android/keyguard/SecLockIconViewController;->mRunningFace:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozing:Z

    if-nez v5, :cond_1

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/SecLockIconViewController;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "Skip update unlock icon on turning off screen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->isLockScreen()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    iput-boolean v7, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowLockIcon:Z

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowUnlockIcon:Z

    const-string/jumbo v5, "updateVisibility : isLockScreen = "

    const-string v7, " mShowLockIcon = "

    invoke-static {v5, v7, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowLockIcon:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mShowUnlockIcon = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowUnlockIcon:Z

    invoke-static {v5, v7, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v4, v1, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    const v7, 0x7f080c71

    invoke-virtual {v2, v7}, Lcom/android/keyguard/SecLockIconView;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v7, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v7, v7, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f13089d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f080791

    goto :goto_3

    :cond_6
    const v2, 0x7f080790

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v2, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/SecLockIconViewController;->acceptModifier(Z)V

    goto :goto_4

    :cond_7
    iget-boolean v7, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowUnlockIcon:Z

    if-eqz v7, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    const v6, 0x7f080c80

    invoke-virtual {v2, v6}, Lcom/android/keyguard/SecLockIconView;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v6, v6, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v6, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v7, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    instance-of v6, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v6, :cond_9

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/keyguard/SecLockIconViewController;->acceptModifier(Z)V

    goto :goto_4

    :cond_a
    iget-boolean v7, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowLockIcon:Z

    if-eqz v7, :cond_c

    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    const v7, 0x7f080c5e

    invoke-virtual {v2, v7}, Lcom/android/keyguard/SecLockIconView;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v7, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v7, v7, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v7, :cond_b

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v7, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/SecLockIconViewController;->acceptModifier(Z)V

    goto :goto_4

    :cond_c
    iget-object v6, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v6, v2}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_d
    if-nez v0, :cond_e

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_e
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/SecLockIconView;->updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    return-void

    :cond_f
    :goto_5
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    return-void
.end method
