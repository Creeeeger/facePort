.class public final Lcom/android/systemui/shared/rotation/RotationButtonController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final OEM_DISALLOW_ROTATION_IN_SUW:Z


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

.field public mBehavior:I

.field public mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mCancelPendingRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mDarkIconColor:I

.field public mDocked:Z

.field public final mDockedReceiver:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

.field public mHomeRotationEnabled:Z

.field public mHoveringRotationSuggestion:Z

.field public final mIconCcwStart0ResId:I

.field public final mIconCcwStart90ResId:I

.field public final mIconCwStart0ResId:I

.field public final mIconCwStart90ResId:I

.field public mIconResId:I

.field public mIsNavigationBarShowing:Z

.field public mIsRecentsAnimationRunning:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastRotationSuggestion:I

.field public mLastUnknownRotationProposedTick:J

.field public final mLightIconColor:I

.field public mListenersRegistered:Z

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public mNavBarMode:I

.field public mPendingRotationSuggestion:Z

.field public final mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

.field public mRotateHideAnimator:Landroid/animation/Animator;

.field public final mRotateSuggestionButtonShowRunnable:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

.field public mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

.field public final mRotationLockCallback:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda3;

.field public final mRotationWatcher:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

.field public mRotationWatcherRegistered:Z

.field public mSamsungIconCCWStart0ResId:I

.field public mSamsungIconCCWStart180ResId:I

.field public mSamsungIconCCWStart90ResId:I

.field public mSamsungIconCWStart0ResId:I

.field public mSamsungIconCWStart180ResId:I

.field public mSamsungIconCWStart90ResId:I

.field public mSamsungRotateButtonResId:I

.field public mSkipOverrideUserLockPrefsOnce:Z

.field public mStyleRes:I

.field public final mTaskStackListener:Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mViewRippler:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

.field public final mWindowRotationProvider:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.setupwizard.rotation_locked"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->OEM_DISALLOW_ROTATION_IN_SUW:Z

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIIILjava/util/function/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIIII",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/ViewRippler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mViewRippler:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationWatcherRegistered:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mCancelPendingRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$1;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    iput-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDockedReceiver:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$2;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    iput-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationWatcher:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastUnknownRotationProposedTick:J

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateSuggestionButtonShowRunnable:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    iput-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationLockCallback:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda3;

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLightIconColor:I

    iput p3, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDarkIconColor:I

    iput p4, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart0ResId:I

    iput p5, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart90ResId:I

    iput p6, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart0ResId:I

    iput p7, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart90ResId:I

    iput p5, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconResId:I

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance p2, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;I)V

    iput-object p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

    iput-object p8, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mWindowRotationProvider:Ljava/util/function/Supplier;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBgExecutor:Ljava/util/concurrent/Executor;

    sget-boolean p1, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public canShowRotationButton()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsNavigationBarShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mNavBarMode:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mStyleRes:I

    invoke-direct {v0, v1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public final isRotationLocked()Ljava/lang/Boolean;
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    check-cast p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLocked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string v0, "RotationButtonController"

    const-string v1, "Failed to get isRotationLocked"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onRotationWatcherChanged(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->isRotationLocked()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-eqz v1, :cond_6

    iget-boolean v1, v1, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-eqz v1, :cond_6

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDocked:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->isRotationLocked()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "RotationButtonController#onRotationWatcherChanged"

    invoke-static {v1, v0, p1, v3}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZILjava/lang/String;)V

    :cond_5
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :cond_6
    return-void
.end method

.method public final rescheduleRotationTimeout(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-boolean p1, p1, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-boolean p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mHoveringRotationSuggestion:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x3e80

    goto :goto_0

    :cond_2
    const/16 p0, 0x1388

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setRotateSuggestionButtonState(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateSuggestionButtonShowRunnable:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :goto_0
    return-void
.end method

.method public final setRotateSuggestionButtonState(ZZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-boolean v2, v2, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v3, v2, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v2, v2, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez v2, :cond_3

    return-void

    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    iget-object v4, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mCancelPendingRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mViewRippler:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v3, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "num_rotation_suggestions_accepted"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lt p1, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    iget-object p2, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRipple:Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iput-object v3, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    const-wide/16 v5, 0x32

    invoke-virtual {v3, p2, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    const-wide/16 v2, 0xfa0

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    const-wide/16 v2, 0x1770

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    const-wide/16 v2, 0x1f40

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-boolean p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->adjustViewPositionAndCreateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonContainer:Landroid/view/ViewGroup;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_8
    new-instance p1, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/rotation/FloatingRotationButton;I)V

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    invoke-static {p0, p1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_9
    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    if-eqz p1, :cond_a

    iget-object v2, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRipple:Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    if-eqz p2, :cond_c

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->hide()V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    new-array p1, v1, [F

    const/4 p2, 0x0

    aput p2, p1, v0

    const-string p2, "alpha"

    invoke-static {v3, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/systemui/shared/rotation/RotationButtonController;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/shared/rotation/RotationButtonController$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$3;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    return-void
.end method

.method public final showAndLogRotationSuggestion()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-boolean v1, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->hide()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->rescheduleRotationTimeout(Z)V

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/shared/rotation/RotationButtonController$RotationButtonEvent;->ROTATION_SUGGESTION_SHOWN:Lcom/android/systemui/shared/rotation/RotationButtonController$RotationButtonEvent;

    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastUnknownRotationProposedTick:J

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    check-cast p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/android/internal/logging/MetricsLogger;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/MetricsLogger;

    if-eqz p0, :cond_1

    const/16 v0, 0x508

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    :cond_1
    return-void
.end method
