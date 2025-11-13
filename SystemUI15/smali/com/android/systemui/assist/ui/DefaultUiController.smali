.class public final Lcom/android/systemui/assist/ui/DefaultUiController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public mAttached:Z

.field public mInvocationAnimator:Landroid/animation/ValueAnimator;

.field public mInvocationInProgress:Z

.field public final mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

.field public mLastInvocationProgress:F

.field public final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mProgressInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mRoot:Landroid/widget/FrameLayout;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/assist/AssistLogger;Landroid/view/WindowManager;Lcom/android/internal/logging/MetricsLogger;Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationBarController;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/assist/AssistLogger;",
            "Landroid/view/WindowManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f570a3d    # 0.84f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f547ae1    # 0.83f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mProgressInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    iput v4, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p5, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAssistManagerLazy:Ldagger/Lazy;

    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x328

    const/4 v8, -0x3

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7e8

    move-object v1, p3

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object p3, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p4, 0x40

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 p4, 0x50

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p3, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p4, "Assist"

    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0135

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/ui/InvocationLightsView;

    iput-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    iput-object p6, p1, Lcom/android/systemui/assist/ui/InvocationLightsView;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final animateInvocationCompletion()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/assist/ui/DefaultUiController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/ui/DefaultUiController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/assist/ui/DefaultUiController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/assist/ui/DefaultUiController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/ui/DefaultUiController$1;-><init>(Lcom/android/systemui/assist/ui/DefaultUiController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final hide()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, v2, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v1, v0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    return-void
.end method

.method public final logInvocationProgressMetrics(FZ)V
    .locals 9

    const/4 v0, 0x1

    const/16 v1, 0x6b4

    iget-object v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    const/4 v3, 0x0

    if-nez p2, :cond_0

    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v4, v5, v5}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v5, Landroid/metrics/LogMaker;

    invoke-direct {v5, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/assist/AssistManager;

    iget-object v7, v7, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v7}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v7

    const/4 v8, 0x2

    shl-int/lit8 v6, v7, 0x4

    or-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    cmpl-float p0, p1, v3

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {v2, p0}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_2
    return-void
.end method

.method public final setProgressInternal(F)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mProgressInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    if-nez v1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v1, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v1

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v4, :cond_2

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {v1, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->getLightBarTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->updateDarkness(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v4, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->updateDarkness(F)V

    iput-boolean v2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object v1, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v1, v1, v4

    iget v1, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v1

    sub-float v4, v1, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v7, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object v6, v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v6, v6, v8

    iget v6, v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v6, v8

    invoke-static {v0, v6, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    neg-float v6, v1

    add-float/2addr v6, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p1

    mul-float/2addr v6, v8

    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget-object p1, p1, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object p1, p1, v7

    iget p1, p1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    invoke-static {v1, v4, v8, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p1

    add-float v1, v6, v0

    invoke-virtual {p0, v6, v1, v3}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(FFI)V

    mul-float/2addr v5, v0

    add-float/2addr v6, v5

    invoke-virtual {p0, v1, v6, v2}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(FFI)V

    sub-float v1, p1, v5

    sub-float v0, p1, v0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(FFI)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(FFI)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
