.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mBatteryLightingBoltDrawable:Landroid/graphics/drawable/Drawable;

.field public final mBatteryProtectionDrawable:Landroid/graphics/drawable/Drawable;

.field public mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

.field public final mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

.field public final mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

.field public mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

.field public final mEditModeListener:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;

.field public final mErrorColor:Landroid/content/res/ColorStateList;

.field public mIndicationArea:Landroid/view/View;

.field public final mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

.field public mIsDefaultLockViewMode:Z

.field public mIsFpGuidePos:Z

.field public mIsScreenOn:Z

.field public mIsUsbRestricted:Z

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mLifeStyleContainer:Landroid/widget/LinearLayout;

.field public mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

.field public mLockHelpTextVisible:Z

.field public final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

.field public mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;


# direct methods
.method public static -$$Nest$mupdateDefaultIndications(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addInitialIndication()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsFpGuidePos:Z

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Landroid/app/AlarmManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/util/IndicationHelper;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V
    .locals 10

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p34

    move-object/from16 v3, p36

    move-object/from16 v4, p37

    invoke-direct/range {p0 .. p31}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Landroid/app/AlarmManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/util/IndicationHelper;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsUsbRestricted:Z

    new-instance v6, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    new-instance v7, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    new-instance v7, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    iget-object v5, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda3;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f080b99

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBatteryLightingBoltDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f080b9c

    invoke-virtual {v1, v5, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBatteryProtectionDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    move-object v1, v4

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    const-string v4, "Indicator"

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    const-wide/16 v3, 0x80

    invoke-static {p0, v3, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v7}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final AddBatteryIcon(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, " "

    if-eqz v0, :cond_1

    const-string v4, "\n"

    const-string v5, "  \n"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v3, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_7

    new-instance v3, Landroid/text/style/ImageSpan;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBatteryProtectionDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBatteryLightingBoltDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    :goto_3
    move v6, v5

    goto :goto_4

    :cond_3
    move v5, v1

    goto :goto_3

    :goto_4
    if-lez v5, :cond_4

    goto :goto_5

    :cond_4
    move v5, v2

    :goto_5
    if-lez v6, :cond_5

    goto :goto_6

    :cond_5
    move v6, v2

    :goto_6
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p2, v1, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p2, v1, v1, p0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p0, 0x2

    invoke-direct {v3, p2, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int p2, p1, v0

    if-eqz v0, :cond_6

    move v2, p0

    :cond_6
    add-int/2addr p1, v2

    const/16 p0, 0x21

    invoke-virtual {v4, v3, p2, p1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-object v4
.end method

.method public final addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "KeyguardSecIndicationController"

    const-string p1, "addIndication() returned - unlocking"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/adaptiveauth/Flags;->enableAdaptiveAuth()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v0, 0x7f130864

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v0, 0x7f130863

    invoke-virtual {p3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->ADAPTIVE_AUTH:Lcom/android/systemui/statusbar/IndicationEventType;

    const-wide/16 v7, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    move-object v3, p1

    move-object v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    const-wide/16 v7, -0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :cond_2
    return-void
.end method

.method public final addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 6

    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public final addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "KeyguardSecIndicationController"

    const-string p1, "addIndicationTimeout() returned - unlocking"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz v0, :cond_1

    const-wide/16 v5, 0xbb8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :cond_1
    return-void
.end method

.method public final addInitialIndication()V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addTrustAgentHelp "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->hasTrust()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardSecIndicationController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->hasTrust()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v3, 0x7f13089d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addUsbRestriction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    move-result-object v0

    const/16 v4, 0x20

    if-nez v0, :cond_2

    const-string v0, "addBatteryAndOwnerInfoIndication() no status"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addBatteryAndOwnerInfoIndication() battery status = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    iget v6, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    const/16 v7, 0x14

    const/4 v9, 0x1

    if-ge v6, v7, :cond_3

    move v6, v9

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    sget-boolean v7, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    and-int/lit8 v11, v7, 0x10

    if-eqz v11, :cond_4

    const/16 v7, 0x10

    goto :goto_1

    :cond_4
    and-int/2addr v7, v4

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    iget-wide v11, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    sget-object v13, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v14, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v13, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v13, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v13, v13, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const/4 v14, 0x2

    if-eqz v13, :cond_7

    iget v13, v13, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/2addr v13, v14

    if-eqz v13, :cond_6

    goto :goto_2

    :cond_6
    move v13, v9

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_9

    iget-boolean v15, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-nez v15, :cond_a

    iget-boolean v15, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v15, :cond_8

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v15

    if-nez v15, :cond_a

    :cond_8
    iget-boolean v15, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mProtectedFullyCharged:Z

    if-eqz v15, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_a
    :goto_4
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChangingType:I

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v13, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6, v13}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->getProtectBatterySetValue()I

    move-result v6

    iget-boolean v13, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    const/4 v15, 0x4

    const/16 v4, 0x64

    const-string v8, "Fail to getChargingText"

    const-string v16, ""

    const/16 v10, 0xa

    const v14, 0x7f130207

    if-eqz v13, :cond_10

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v0, v16

    :cond_b
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_c
    iget v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    const v7, 0x7f1309c9

    if-ne v2, v4, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v4, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v14, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    :cond_d
    sget-boolean v4, Lcom/android/systemui/LsRune;->LOCKUI_ECO_BATTERY:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    if-eq v6, v4, :cond_e

    if-ne v6, v15, :cond_f

    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1309c0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->AddBatteryIcon(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    goto :goto_5

    :cond_f
    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    :cond_10
    iget-boolean v13, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mProtectedFullyCharged:Z

    if-eqz v13, :cond_17

    iget-object v13, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    if-nez v13, :cond_11

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    sget-boolean v8, Lcom/android/systemui/LsRune;->LOCKUI_ECO_BATTERY:Z

    if-eqz v8, :cond_16

    if-eq v6, v9, :cond_15

    const/4 v8, 0x2

    if-eq v6, v8, :cond_15

    if-eq v6, v15, :cond_12

    goto/16 :goto_8

    :cond_12
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEvent:Ljava/lang/String;

    if-eqz v6, :cond_17

    const-string v8, "off"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEventFinishTime:Ljava/lang/String;

    if-eqz v6, :cond_17

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v14, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    if-eq v6, v4, :cond_14

    iget-object v4, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEventFinishTime:Ljava/lang/String;

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEventFinishTime:Ljava/lang/String;

    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v7, "ParseException"

    invoke-static {v2, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_7
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f1309b7

    invoke-virtual {v6, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_14
    invoke-virtual {v1, v0, v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->AddBatteryIcon(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    goto/16 :goto_5

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v4, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v14, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1309be

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->AddBatteryIcon(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    goto/16 :goto_5

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1309bf

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1309bc

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5

    :cond_17
    :goto_8
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsNeededShowChargingType:Z

    const v4, 0x7f1303cc

    if-eqz v2, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1309cb

    invoke-virtual {v2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_a

    :pswitch_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1309ca

    invoke-virtual {v2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_a

    :pswitch_2
    sget-boolean v2, Lcom/android/systemui/CscRune;->LOCKUI_HELP_TEXT_FOR_CHN:Z

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1309c8

    invoke-virtual {v2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object/from16 v16, v2

    goto/16 :goto_a

    :cond_18
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1309c5

    invoke-virtual {v2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :pswitch_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1309c1

    invoke-virtual {v2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_a

    :pswitch_4
    sget-boolean v2, Lcom/android/systemui/CscRune;->LOCKUI_HELP_TEXT_FOR_CHN:Z

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1309c4

    invoke-virtual {v2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_19
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1309c3

    invoke-virtual {v2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :pswitch_5
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1309b6

    invoke-virtual {v2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_a

    :cond_1a
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :goto_a
    move-object/from16 v2, v16

    goto :goto_b

    :cond_1b
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v14, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_a

    :goto_b
    sget-boolean v6, Lcom/android/systemui/PowerUiRune;->BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz v6, :cond_22

    const/4 v6, 0x2

    if-eq v0, v6, :cond_22

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_21

    if-nez v7, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long/2addr v11, v6

    const-wide/16 v6, 0xe10

    cmp-long v2, v11, v6

    if-ltz v2, :cond_1c

    div-long v13, v11, v6

    long-to-int v2, v13

    int-to-long v13, v2

    mul-long/2addr v13, v6

    sub-long/2addr v11, v13

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    :goto_c
    const-wide/16 v6, 0x3c

    cmp-long v4, v11, v6

    if-ltz v4, :cond_1d

    div-long v13, v11, v6

    long-to-int v4, v13

    int-to-long v13, v4

    mul-long/2addr v13, v6

    sub-long/2addr v11, v13

    goto :goto_d

    :cond_1d
    const/4 v4, 0x0

    :goto_d
    long-to-int v8, v11

    if-nez v2, :cond_1e

    const/4 v10, 0x2

    if-lt v4, v10, :cond_1e

    const/16 v10, 0x1e

    if-lt v8, v10, :cond_1e

    add-int/lit8 v4, v4, 0x1

    int-to-long v10, v4

    cmp-long v6, v10, v6

    if-nez v6, :cond_1e

    move v2, v9

    const/4 v4, 0x0

    :cond_1e
    if-lez v2, :cond_1f

    if-lez v4, :cond_1f

    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f1309ce

    invoke-virtual {v6, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_1f
    if-lez v2, :cond_20

    iget-object v4, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v6, 0x7f1309cd

    invoke-virtual {v4, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_20
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f1309cf

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_21
    const/16 v0, 0x10

    if-ne v7, v0, :cond_22

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5

    :cond_22
    move-object v0, v2

    :goto_f
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsNeededShowChargingType:Z

    if-nez v2, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto/16 :goto_6

    :cond_23
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->AddBatteryIcon(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    :goto_10
    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_24

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    if-eqz v5, :cond_24

    move v8, v9

    goto :goto_11

    :cond_24
    move v8, v2

    :goto_11
    invoke-virtual {v1, v4, v0, v6, v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_14

    :goto_12
    if-eqz v13, :cond_26

    if-eqz v6, :cond_26

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1309c2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_25

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    if-eqz v5, :cond_25

    move v8, v9

    goto :goto_13

    :cond_25
    move v8, v2

    :goto_13
    invoke-virtual {v1, v4, v0, v6, v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_26
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :goto_14
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v0, :cond_27

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_2a

    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-eqz v0, :cond_27

    goto :goto_15

    :cond_27
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_28
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_29
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_2a
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final addUsbRestriction()Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addUsbRestriction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsUsbRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/isSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure(I)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardSecIndicationController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsUsbRestricted:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->USB_RESTRICTION:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v2, 0x7f130b37

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->USB_RESTRICTION:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v2, 0x7f130b36

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :goto_1
    return v5

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->USB_RESTRICTION:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return v4
.end method

.method public final changeIndication(Ljava/lang/CharSequence;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-nez v2, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v11

    new-instance v12, Landroid/text/StaticLayout;

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v3, v12

    move-object v5, v2

    move v6, v11

    move-object v7, v13

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v4, v12, :cond_2

    if-ne v3, v15, :cond_1

    goto :goto_0

    :cond_1
    move v10, v14

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v15

    :goto_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v1, :cond_3

    move-object v4, v12

    goto :goto_2

    :cond_3
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_4
    if-eqz p2, :cond_5

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b011c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b011e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b011d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    invoke-static {v1, v15, v6}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_5

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez v4, :cond_6

    move-object v4, v3

    goto :goto_3

    :cond_6
    const-string v5, "UpdatehelptextScale"

    invoke-interface {v4, v5}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_7

    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    iget-object v1, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    const-string v3, "UpdatehelptextColor"

    invoke-interface {v1, v3}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_9

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-interface {v3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v16, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v3, v1

    move-object v5, v2

    move v6, v11

    move-object v7, v13

    move v2, v10

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    if-eq v3, v12, :cond_a

    if-ne v1, v15, :cond_b

    :cond_a
    move v14, v15

    :cond_b
    if-eq v2, v14, :cond_c

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdatePosition:Ljava/util/function/Consumer;

    if-eqz v0, :cond_c

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    return-object p0
.end method

.method public final getUnlockGuideText()Ljava/lang/CharSequence;
    .locals 8

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    :goto_2
    const-string v4, ""

    if-nez v0, :cond_15

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CONTINUITY_LOCKSCREEN_VI:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mForceIsDismissible:Z

    if-eqz v0, :cond_3

    goto/16 :goto_c

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->hasTrust()Z

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v5, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v0, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    if-eqz v6, :cond_5

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsFpGuidePos:Z

    if-nez v7, :cond_9

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->hasTrust()Z

    move-result v6

    if-eqz v6, :cond_7

    const v6, 0x7f13089d

    goto :goto_8

    :cond_7
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    move-result v6

    if-nez v6, :cond_8

    const v6, 0x7f130a24

    goto :goto_8

    :cond_8
    const v6, 0x7f130a22

    goto :goto_8

    :cond_9
    :goto_5
    if-eqz v7, :cond_b

    if-eqz v2, :cond_b

    :cond_a
    move v6, v1

    goto :goto_7

    :cond_b
    if-eqz v7, :cond_a

    if-eqz v5, :cond_c

    const v6, 0x7f1308e3

    goto :goto_6

    :cond_c
    move v6, v1

    :goto_6
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsFpGuidePos:Z

    :goto_7
    if-eqz v6, :cond_d

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_8
    if-eqz v5, :cond_14

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUnlockCompleted()Z

    move-result v5

    if-nez v5, :cond_f

    if-nez v7, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    const v6, 0x7f130a8d

    goto :goto_b

    :cond_f
    if-nez v0, :cond_11

    if-nez v7, :cond_11

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    const v1, 0x7f130a8c

    :cond_11
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    move v6, v1

    goto :goto_b

    :cond_13
    :goto_a
    const v6, 0x7f130a8b

    :cond_14
    :goto_b
    if-eqz v6, :cond_15

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_c
    return-object v4
.end method

.method public final hasTrust()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p0

    return p0
.end method

.method public final hideTransientIndication()V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public final hideTransientIndicationDelayed(J)V
    .locals 9

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v1, "item is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableJust;

    invoke-direct {v3, v0}, Lio/reactivex/internal/operators/observable/ObservableJust;-><init>(Ljava/lang/Object;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lio/reactivex/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/Scheduler;

    const-string/jumbo v0, "unit is null"

    invoke-static {v6, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scheduler is null"

    invoke-static {v7, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDelay;

    const/4 v8, 0x0

    move-object v2, v0

    move-wide v4, p1

    invoke-direct/range {v2 .. v8}, Lio/reactivex/internal/operators/observable/ObservableDelay;-><init>(Lio/reactivex/ObservableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)V

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    sget p2, Lio/reactivex/Flowable;->BUFFER_SIZE:I

    if-lez p2, :cond_0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, p2}, Lio/reactivex/internal/operators/observable/ObservableObserveOn;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/Scheduler;ZI)V

    new-instance p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    sget-object p0, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;

    sget-object p2, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/internal/functions/Functions$EmptyAction;

    sget-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex/internal/functions/Functions$EmptyConsumer;

    const-string v2, "onError is null"

    invoke-static {p0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onComplete is null"

    invoke-static {p2, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onSubscribe is null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v2, p1, p0, p2, v0}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize > 0 required but it was "

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAuthenticatedWithBiometric()Z
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result p0

    return p0
.end method

.method public final onIndicationChanged(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 5

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "KeyguardSecIndicationController"

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "onIndicationChanged() return - keyguard is not visible, pos = %7s, item = %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OWNER_INFO"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "onIndicationChanged() return - keyguard is not visible, skip ownerInfo"

    :cond_2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const-string p1, "onIndicationChanged() returned - unlocking"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeIndication(Ljava/lang/CharSequence;ZZ)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-nez p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "onIndicationChanged() returned - EditMode VIrunning"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget v0, p2, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/IndicationEventType;->getPriority()I

    move-result v1

    const/4 v4, 0x1

    if-lt v0, v1, :cond_8

    iget-object v0, p2, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v4

    goto :goto_2

    :cond_8
    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$com$android$systemui$statusbar$IndicationPosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    iget-object p1, p2, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    iget-object p2, p2, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    if-ne p2, v1, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeIndication(Ljava/lang/CharSequence;ZZ)V

    goto :goto_3

    :cond_b
    iget-object p1, p2, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-nez p2, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_3

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 2

    const-string v0, "onViewModeChanged mode: "

    const-string v1, "KeyguardSecIndicationController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz p0, :cond_0

    const-string v1, "remove Item"

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%12s pos = %7s, type = %20s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/IndicationEventType;I)V

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    :cond_0
    return-void
.end method

.method public final setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    :cond_0
    return-void
.end method

.method public final setIndicationArea(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationArea:Landroid/view/View;

    const v0, 0x7f0a0639

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a05a4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a0e05

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a05d2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const-string v0, "bottom"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const v0, 0x7f080fc8

    goto :goto_0

    :cond_0
    const v0, 0x7f080fc7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0a05ce

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-void
.end method

.method public final setNowBarExpandMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-void
.end method

.method public final setVisible(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isNowBarExpandMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x5

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockData;->getVisibility(I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move p1, v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addInitialIndication()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    if-eqz p1, :cond_5

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-static {v1, v2, p1, v0}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const-string v0, ""

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_5

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v0, 0x7f0101b6

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public final showTransientIndication(I)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateDynamicLockData(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    return-void
.end method

.method public final updateLifeStyleInfo(Landroid/content/Intent;)V
    .locals 2

    const-string p0, "mode_is_running"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string p0, "mode_display_name"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "mode_icon_byte_array"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const-string p1, "bottom"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const p1, 0x7f080fc8

    goto :goto_0

    :cond_0
    const p1, 0x7f080fc7

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
