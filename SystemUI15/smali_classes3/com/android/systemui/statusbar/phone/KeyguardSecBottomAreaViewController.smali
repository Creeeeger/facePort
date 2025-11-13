.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final APPEAR_ANIM_DURATION:J

.field public static final KEY_HELP_TEXT_BOTTOM:Ljava/lang/String;

.field public static final KEY_HELP_TEXT_HEIGHT:Ljava/lang/String;

.field public static final KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final binding$delegate:Lkotlin/Lazy;

.field public final bottomDozeArea$delegate:Lkotlin/Lazy;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final editModeLisner:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;

.field public helpTextAnimSet:Landroid/animation/AnimatorSet;

.field public final indicationArea$delegate:Lkotlin/Lazy;

.field public final indicationText$delegate:Lkotlin/Lazy;

.field public isAllShortcutDisabled:Z

.field public isDozing:Z

.field public isIndicationUpdatable:Z

.field public isKeyguardVisible:Z

.field public isSecure:Z

.field public isShortcutAnimRunning:Z

.field public isUserSetupComplete:Z

.field public final isUsimTextAreaShowing:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallbackForShortcuts:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$keyguardUpdateMonitorCallbackForShortcuts$1;

.field public final leftShortcutArea$delegate:Lkotlin/Lazy;

.field public final leftShortcutEffectview$delegate:Lkotlin/Lazy;

.field public final leftView$delegate:Lkotlin/Lazy;

.field public final mDevicePolicyReceiver:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;

.field public mEasyMode:Z

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public mPermDisableState:Z

.field public mSavingMode:Z

.field private final mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mWakefulnessObserver$1;

.field public nowBarVisible:Z

.field public final quickAffordanceInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

.field public final quickSettingsControllerLazy:Ldagger/Lazy;

.field public final restoreRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;

.field public final rightShortcutArea$delegate:Lkotlin/Lazy;

.field public final rightShortcutEffectview$delegate:Lkotlin/Lazy;

.field public final rightView$delegate:Lkotlin/Lazy;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final shortcutAnimRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutAnimRunnable$1;

.field public final shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

.field public final shortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

.field public showShortcutAnim:Z

.field public final startDelayRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->APPEAR_ANIM_DURATION:J

    const-string v0, "help_text_visibility"

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    const-string v0, "help_text_height"

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_HEIGHT:Ljava/lang/String;

    const-string v0, "help_text_margin"

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_BOTTOM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/flags/FeatureFlagsClassic;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;",
            "Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;",
            "Lcom/android/systemui/flags/FeatureFlagsClassic;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            "Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p14

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    move-object/from16 v2, p15

    move-object/from16 v3, p16

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/flags/FeatureFlagsClassic;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->centralSurfacesLazy:Ldagger/Lazy;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->quickAffordanceInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->quickSettingsControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    invoke-interface/range {p11 .. p11}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->editModeLisner:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$leftView$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$leftView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->leftView$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$rightView$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$rightView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->rightView$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$leftShortcutArea$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$leftShortcutArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->leftShortcutArea$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$rightShortcutArea$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$rightShortcutArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->rightShortcutArea$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$leftShortcutEffectview$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$leftShortcutEffectview$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->leftShortcutEffectview$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$rightShortcutEffectview$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$rightShortcutEffectview$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->rightShortcutEffectview$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$indicationArea$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$indicationArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->indicationArea$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$indicationText$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$indicationText$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->indicationText$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$binding$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$binding$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->binding$delegate:Lkotlin/Lazy;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$bottomDozeArea$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$bottomDozeArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-static {v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->bottomDozeArea$delegate:Lkotlin/Lazy;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isUsimTextAreaShowing:Z

    new-instance v5, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mDevicePolicyReceiver:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;

    invoke-virtual/range {p10 .. p10}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    invoke-virtual/range {p10 .. p10}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mSavingMode:Z

    invoke-virtual/range {p10 .. p10}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mEasyMode:Z

    sget-boolean v2, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v2, :cond_2

    invoke-interface {p7}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mPermDisableState:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v6

    :goto_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isUserSetupComplete:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mShortcutCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mShortcutCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$keyguardUpdateMonitorCallbackForShortcuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$keyguardUpdateMonitorCallbackForShortcuts$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitorCallbackForShortcuts:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$keyguardUpdateMonitorCallbackForShortcuts$1;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isIndicationUpdatable:Z

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move v4, v6

    :goto_4
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isAllShortcutDisabled:Z

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mWakefulnessObserver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mWakefulnessObserver$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mWakefulnessObserver$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutAnimRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutAnimRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutAnimRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutAnimRunnable$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->startDelayRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->restoreRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;

    return-void
.end method

.method public static final access$changeBlurToDim(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setIsDrawBackgroundCircle(Z)V

    :cond_0
    if-eqz p0, :cond_1

    const-string p1, "#2B2B2B"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setDrawBackgroundAlpha(I)V

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v2, v3, v4, v0, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeBlurToDim$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeBlurToDim$1$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static final access$changeDimToBlur(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setIsDrawBackgroundCircle(Z)V

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "#2B2B2B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    if-eqz p0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$lambda$1$$inlined$doOnEnd$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$lambda$1$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$getMView$p$s2038760804(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static final access$isEditorShortcutTransitionNeeded(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final access$setIndicationUpdatable(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isIndicationUpdatable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mCanIndicationAreaUpdate set to "

    const-string v1, "KeyguardSecBottomAreaViewController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isIndicationUpdatable:Z

    :goto_0
    return-void
.end method

.method public static final access$showShortcutsIfPossible(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_2

    move-object v1, p0

    :cond_2
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static final access$updateFinalShortcut(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->restoreRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->startDelayRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNowBarVisible:Z

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->updateShortcutPosition()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isShortcutAnimRunning:Z

    return-void
.end method


# virtual methods
.method public final cancelIndicationAreaAnim()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->helpTextAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->helpTextAnimSet:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    const-string v2, "  CurrentUserId = "

    invoke-static {v2, v1, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    const-string v2, "  isNowBarVisible = "

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const-string v2, "  bottomAreaVisibility = "

    invoke-static {v2, v1, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  bottomAreaAlpha = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shouldDisableShortcut()Z

    move-result v1

    const-string v2, "  shouldDisableShortcut = "

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mPermDisableState:Z

    const-string v2, "  permDisableState = "

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mSavingMode:Z

    const-string v2, "  savingMode = "

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutVisibleForMDM:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  shouldDisableShortcutWithMdm = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isUserUnlocked$2()Z

    move-result v1

    const-string v3, "  isUserUnlocked = "

    invoke-static {v3, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    const-string v3, "  isPluginLockOverlayView = "

    invoke-static {v3, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isDozing:Z

    const-string v3, "  isDozing = "

    invoke-static {v3, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p2

    invoke-static {v1, p2}, Lcom/android/systemui/devicepolicy/DevicePolicyManagerExtKt;->areKeyguardShortcutsDisabled$default(Landroid/app/admin/DevicePolicyManager;I)Z

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  areKeyguardShortcutsDisabled = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p2, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    iget-object v1, p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  shortcutSize = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    const-string v3, "  shortcutBottomMargin = "

    invoke-static {v3, v1, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget p2, p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    const-string v1, "  shortcutSideMargin = "

    invoke-static {v1, p2, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    :cond_0
    const-string p2, "  LeftShortcut:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p2

    const-string v1, ", top = "

    const-string v3, "      left = "

    const/4 v4, 0x2

    const-string v5, "      size = "

    const-string v6, "      alpha = "

    const-string v7, "      visibility = "

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getAlpha()F

    move-result p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-static {v5, p2, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    new-array p2, v4, [I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    aget v8, p2, v0

    aget p2, p2, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string p2, "  RightShortcut:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getAlpha()F

    move-result p2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-static {v5, p2, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    new-array p2, v4, [I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    aget p0, p2, v0

    aget p2, p2, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    return-object p0
.end method

.method public final getIndicationArea()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->indicationArea$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->leftView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    return-object p0
.end method

.method public final getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->rightView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    return-object p0
.end method

.method public final getShortCutAreaViews()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->leftShortcutEffectview$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->rightShortcutEffectview$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final isNoUnlockNeed(Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isSecure:Z

    const-string v1, "isNoUnlockNeed mIsSecure: "

    invoke-static {v1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KeyguardSecBottomAreaViewController"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isSecure:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.sec.android.app.camera"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public final isUserUnlocked$2()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final launchAffordance(Z)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "2"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    const-string v2, "LSE1007"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "LSE1009"

    goto :goto_1

    :cond_1
    const-string v1, "LSE1008"

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/CameraLauncher;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->QUICK_AFFORDANCE:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->cameraLaunchSourceModelToInt(Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;)I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/shade/CameraLauncher;->launchCamera(IZ)V

    goto :goto_5

    :cond_3
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutForPhone(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInManagedCall()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$launchPhone$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$launchPhone$1;-><init>(Landroid/telecom/TelecomManager;)V

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_4
    sget-object p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->PHONE_INTENT:Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    sget-object v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->BOTTOM_END:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->BOTTOM_START:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    :goto_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getQuickAffordanceConfigList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    invoke-interface {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_7

    const-string p1, "bottom_end"

    goto :goto_4

    :cond_7
    const-string p1, "bottom_start"

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->quickAffordanceInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    invoke-virtual {p0, v0, v4, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->onQuickAffordanceTriggered(Ljava/lang/String;Lcom/android/systemui/animation/Expandable;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public final launchApp(Landroid/content/ComponentName;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launchApp pkg: "

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "KeyguardSecBottomAreaViewController"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/CameraLauncher;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->QUICK_AFFORDANCE:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->cameraLaunchSourceModelToInt(Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;)I

    move-result p0

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/shade/CameraLauncher;->launchCamera(IZ)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "isSecure"

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSecure()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10010000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->quickAffordanceInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->launchQuickAffordance(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->onDensityOrFontScaleChanged(Z)V

    return-void
.end method

.method public final onDensityOrFontScaleChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLayout()V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mSavingMode:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mEasyMode:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateDisplayParameters()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateDisplayParameters()V

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onDensityOrFontScaleChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onDensityOrFontScaleChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final onInit()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    const/4 v0, 0x6

    new-array v1, v0, [Landroid/net/Uri;

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "minimal_battery_use"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "easy_mode_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "lock_shortcut_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "display_cutout_hide_notch"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->showShortcutsIfPossible:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->setUsimTextAreaVisibility:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v1, "KeyguardSecBottomAreaViewController"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public final onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_show_shortcut"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const-string/jumbo v3, "shortcut_enable"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_application_shortcut"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "shortcut_info"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    const-string/jumbo v3, "shortcut_bottom"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    const-string/jumbo v3, "shortcut_side"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string/jumbo v3, "shortcut_size"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->setInDisplayFingerprintSensorPosition(Landroid/util/DisplayMetrics;)V

    const-string v1, "finger_print_height"

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "finger_print_image_size"

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "finger_print_margin"

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintMarginBottom()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    const-string v3, "finger_print_enabled"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0704d8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_HEIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_BOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onUiInfoRequested() : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardSecBottomAreaViewController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final onUnlockedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isSecure:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->setUsimTextAreaVisibility()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isKeyguardVisible:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "KeyguardSecBottomAreaViewController"

    const-string v0, "onUnlockMethodStateChanged not keyguardShowing status return!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onViewAttached()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitorCallbackForShortcuts:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$keyguardUpdateMonitorCallbackForShortcuts$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_0

    const-string v2, "KeyguardShortcutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerCallback already registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutCallbacks:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 v2, 0x2

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;->updateShortcutView(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mDevicePolicyReceiver:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/16 v8, 0x30

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mWakefulnessObserver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isSecure:Z

    sget-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->setUsimTextAreaVisibility()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->editModeLisner:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_CAPTURED_BLUR:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final onViewDetached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitorCallbackForShortcuts:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$keyguardUpdateMonitorCallbackForShortcuts$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

    const-string v2, "Callback removed successfully , callback was : "

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutCallbacks:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$unregisterCallback$1$1;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$unregisterCallback$1$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "KeyguardShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->removeListener()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mDevicePolicyReceiver:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mWakefulnessObserver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->editModeLisner:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final onViewModeChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    const-string v0, "onViewModeChanged() ShortcutInvisible: "

    const-string v1, "KeyguardSecBottomAreaViewController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLayout()V

    return-void
.end method

.method public final setAffordanceAlpha(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isIndicationUpdatable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getIndicationArea()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->upperFPIndication$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->upperFPIndication$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->emergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->quickSettingsControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/QuickSettingsController;

    invoke-interface {p1}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded$1()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->cancelIndicationAreaAnim()V

    :cond_4
    return-void
.end method

.method public final setDozing(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isDozing:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->setUsimTextAreaVisibility()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->leftShortcutArea$delegate:Lkotlin/Lazy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->rightShortcutArea$delegate:Lkotlin/Lazy;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->bottomDozeArea$delegate:Lkotlin/Lazy;

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getIndicationArea()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    const-string p0, "KeyguardSecBottomAreaViewController"

    const-string p1, ": "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getIndicationArea()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final setNowBarVisibility(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->showShortcutAnim:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isShortcutAnimRunning:Z

    const-string/jumbo v3, "setNowBarVisibility  isVisible: "

    const-string v4, ", oldVisible: "

    const-string v5, ", showShortcutAnim: "

    invoke-static {v3, v4, v5, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isShortcutAnimRunning: "

    const-string v4, "KeyguardSecBottomAreaViewController"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isNowBarVisible:Z

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->updateIndicationPosition()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-boolean p1, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isNowBarVisible:Z

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->startDelayRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->showShortcutAnim:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$setNowBarVisibility$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$setNowBarVisibility$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$setNowBarVisibility$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$setNowBarVisibility$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setNowBarVisibility(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$setNowBarVisibility$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$setNowBarVisibility$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$setNowBarVisibility$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$setNowBarVisibility$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setNowBarVisibility(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;Z)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isShortcutAnimRunning:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->showShortcutAnimation(JZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setUserSetupComplete$1(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isUserSetupComplete:Z

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setUsimTextAreaVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isDozing:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isUsimTextAreaShowing:Z

    if-eqz v1, :cond_3

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v4, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isSecure:Z

    if-nez p0, :cond_5

    if-eqz v4, :cond_4

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    :goto_0
    return-void
.end method

.method public final shouldDisableShortcut()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mPermDisableState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mSavingMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutVisibleForMDM:Z

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKidsModeRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isUserUnlocked$2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isDozing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/devicepolicy/DevicePolicyManagerExtKt;->areKeyguardShortcutsDisabled$default(Landroid/app/admin/DevicePolicyManager;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final showShortcutAnimation(JZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showShortcutAnimation  show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecBottomAreaViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->startDelayRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$showShortcutAnimation$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$showShortcutAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$showShortcutAnimation$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$showShortcutAnimation$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setNowBarVisibility(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$showShortcutAnimation$3;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$showShortcutAnimation$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$showShortcutAnimation$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$showShortcutAnimation$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setNowBarVisibility(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;Z)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isShortcutAnimRunning:Z

    return-void
.end method

.method public final showShortcutAnimation(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->showShortcutAnimation(JZ)V

    return-void
.end method

.method public final updateAffordanceIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    :goto_0
    move-object v0, p0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final updateBottomView()V
    .locals 2

    const-string v0, "KeyguardSecBottomAreaViewController"

    const-string/jumbo v1, "updateBottomView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->updateIndicationPosition()V

    return-void
.end method

.method public final updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shouldDisableShortcut()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shouldDisableShortcut()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isCameraAllowedByAdmin()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    const-string v4, "com.sec.android.app.camera"

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isUserSetupComplete:Z

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    const-string/jumbo v5, "updateCameraVisibility isCameraDisabled:"

    const-string v6, " visible:"

    const-string v7, "KeyguardSecBottomAreaViewController"

    invoke-static {v5, v6, v7, v3, v4}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz p3, :cond_5

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    move p3, v1

    :cond_6
    const/16 v1, 0x8

    if-eqz p3, :cond_8

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isUserSetupComplete:Z

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v1

    :goto_4
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setVisibility(I)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public final updateIndicationPosition()V
    .locals 2

    const-string v0, "KeyguardSecBottomAreaViewController"

    const-string/jumbo v1, "updateIndicationPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->updateIndicationPosition()V

    return-void
.end method
