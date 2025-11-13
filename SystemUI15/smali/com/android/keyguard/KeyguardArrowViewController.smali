.class public final Lcom/android/keyguard/KeyguardArrowViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardArrowViewController$2;

.field public mCurrentPosition:I

.field public final mDisplayLifecycleObserver:Lcom/android/keyguard/KeyguardArrowViewController$1;

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mIsFolderOpened:Z

.field public mIsTableArrowState:Z

.field public mIsTimerRunning:Z

.field public final mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLastOrientation:I

.field public final mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mLeftArrowContainer:Landroid/widget/FrameLayout;

.field public mLeftArrowGD:Landroid/view/GestureDetector;

.field public final mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mRightArrowContainer:Landroid/widget/FrameLayout;

.field public mRightArrowGD:Landroid/view/GestureDetector;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public static -$$Nest$mannounceForArrowAccessibility(Lcom/android/keyguard/KeyguardArrowViewController;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isPatternView()Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    const p1, 0x7f130866

    goto :goto_0

    :cond_0
    const p1, 0x7f130868

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const p1, 0x7f130867

    goto :goto_0

    :cond_2
    const p1, 0x7f130869

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardArrowView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowView;Lcom/android/keyguard/KeyguardArrowViewCallback;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    new-instance p1, Lcom/android/keyguard/KeyguardArrowViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardArrowViewController$1;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mDisplayLifecycleObserver:Lcom/android/keyguard/KeyguardArrowViewController$1;

    new-instance p1, Lcom/android/keyguard/KeyguardArrowViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardArrowViewController$2;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardArrowViewController$2;

    new-instance p1, Lcom/android/keyguard/KeyguardArrowViewController$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardArrowViewController$3;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardArrowView;

    const p2, 0x7f0a061b

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrowContainer:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardArrowView;

    const p2, 0x7f0a061a

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardArrowView;

    const p2, 0x7f0a09d6

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrowContainer:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardArrowView;

    const p2, 0x7f0a09d5

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method public static hideArrow(Landroid/view/View;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v2, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final arrowTouchDownAnimation(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method public final arrowTouchUpAnimation(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final checkArrowVisibility()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final initArrowView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    move-result v0

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyguardArrowViewController"

    const-string v1, "Set force left security view position"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowView()V

    return-void
.end method

.method public final isInvalidArrowView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPatternView()Z
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onInit()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->initMainDisplaySize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardArrowViewController$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mDisplayLifecycleObserver:Lcom/android/keyguard/KeyguardArrowViewController$1;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    const-wide/16 v2, 0x200

    invoke-static {p0, v2, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->initArrowView()V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardArrowViewController$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardArrowViewController$4;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrowGD:Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardArrowViewController$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardArrowViewController$5;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrowGD:Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardArrowViewController$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mDisplayLifecycleObserver:Lcom/android/keyguard/KeyguardArrowViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public final startArrowViewAnimation(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v0, [F

    fill-array-data v4, :array_2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    aput-object p1, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v3, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 p0, 0x0

    invoke-virtual {v3, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateArrowMargin()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isPatternView()Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07051a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    :goto_0
    mul-float/2addr v6, v3

    float-to-int v3, v6

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v3

    if-eq v3, v5, :cond_4

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    goto :goto_1

    :cond_3
    sget v3, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    goto :goto_2

    :cond_4
    :goto_1
    sget v3, Lcom/android/keyguard/SecurityUtils;->sMainDisplayHeight:I

    :goto_2
    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070519

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isPatternView()Z

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    check-cast v9, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    iget-object v9, v9, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$100(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    const v10, 0x7f0a03ff

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/keyguard/EmergencyButton;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    move v5, v4

    :goto_4
    sget-boolean v9, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    const v10, 0x7f070ac0

    if-eqz v9, :cond_6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_6
    const v9, 0x7f070492

    const v11, 0x7f070493

    if-eqz v7, :cond_8

    if-eqz v8, :cond_7

    const v8, 0x7f0705a5

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v12, v8

    const v8, 0x7f0705a1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_5
    add-int/2addr v8, v12

    add-int/2addr v8, v4

    goto :goto_6

    :cond_7
    const v8, 0x7f0705ab

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v12, v8

    const v8, 0x7f0705ad

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_5

    :cond_8
    if-eqz v8, :cond_9

    const v8, 0x7f0705a4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v12, v8

    const v8, 0x7f0705a0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_5

    :cond_9
    sget v8, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v12, v8

    const v8, 0x7f0705ac

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_5

    :goto_6
    if-nez v5, :cond_b

    if-eqz v7, :cond_a

    move v9, v11

    :cond_a
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v8, v5

    :cond_b
    iget-object v5, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v5

    const v7, 0x7f07053f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v4

    add-int/2addr v8, v6

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isPatternView()Z

    move-result v5

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v5, :cond_d

    const v5, 0x7f0705a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/SecurityUtils;->getTabletPINContainerHeight(Landroid/content/Context;)I

    move-result v4

    goto :goto_7

    :cond_e
    if-eqz v5, :cond_f

    const v5, 0x7f0705a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/SecurityUtils;->getFoldPINContainerHeight(Landroid/content/Context;)I

    move-result v4

    :goto_7
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_9

    :cond_10
    :goto_8
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateArrowStyle(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7f080c5b

    goto :goto_0

    :cond_1
    const v0, 0x7f080c59

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_2

    const p1, 0x7f080c5c

    goto :goto_1

    :cond_2
    const p1, 0x7f080c5a

    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final updateArrowView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "background"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowStyle(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowMargin()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateSecurityViewPosition(ZZ)V

    return-void
.end method

.method public final updateArrowVisibility(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    invoke-static {v2}, Lcom/android/keyguard/KeyguardArrowViewController;->hideArrow(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    iget p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    if-ne p0, v4, :cond_5

    invoke-static {v1}, Lcom/android/keyguard/KeyguardArrowViewController;->hideArrow(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/16 p0, 0x8

    invoke-virtual {v2, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    invoke-virtual {v1, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final updateSecurityViewPosition(ZZ)V
    .locals 4

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTimerRunning:Z

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p2

    invoke-static {p2}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget v2, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    invoke-interface {v0, p2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->updateSecurityViewPosition(IZ)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SettingsHelper;->setBouncerOneHandPosition(I)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    iget-object p0, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, p2, :cond_5

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->updateSecurityViewPosition(IZ)V

    :cond_5
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    const-string p1, "background"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowStyle(Z)V

    return-void
.end method
