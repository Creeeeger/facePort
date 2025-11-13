.class public final Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;


# instance fields
.field public final isLaunching:Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;->isLaunching:Z

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->keyguardOcclusionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->showWhenLockedActivityLaunchedFromPowerGesture:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    int-to-float v3, v5

    div-float v1, v3, v1

    new-instance v8, Lcom/android/systemui/animation/TransitionAnimator$State;

    iget v4, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->powerButtonY:I

    int-to-float v4, v4

    div-float/2addr v0, v2

    sub-float v2, v4, v0

    float-to-int v2, v2

    add-float/2addr v4, v0

    float-to-int v0, v4

    sub-float/2addr v3, v1

    float-to-int v4, v3

    iget v7, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->windowCornerRadius:F

    move-object v1, v8

    move v3, v0

    move v6, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFF)V

    return-object v8

    :cond_0
    int-to-float v0, v0

    div-float v1, v0, v2

    int-to-float v3, v5

    div-float v2, v3, v2

    new-instance v11, Lcom/android/systemui/animation/TransitionAnimator$State;

    sub-float/2addr v0, v1

    float-to-int v4, v0

    const/4 v5, 0x2

    div-int/lit8 v6, v4, 0x2

    int-to-float v4, v5

    div-float/2addr v0, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    sub-float/2addr v3, v2

    float-to-int v1, v3

    div-int/lit8 v7, v1, 0x2

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v8, v3

    iget v10, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->windowCornerRadius:F

    move-object v4, v11

    move v5, v6

    move v6, v0

    move v9, v10

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFF)V

    return-object v11
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->keyguardViewController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;->isLaunching:Z

    return p0
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
