.class public final Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

.field public final synthetic $isExpandingFullyAbove:Z

.field public final synthetic $moveBackgroundLayerWhenAppVisibilityChanges:Z

.field public final synthetic $openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

.field public final synthetic $transitionContainerOverlay:Landroid/view/ViewGroupOverlay;

.field public final synthetic $windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;ZLandroid/view/ViewOverlay;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iput-boolean p2, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$isExpandingFullyAbove:Z

    iput-object p3, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    iput-object p4, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$transitionContainerOverlay:Landroid/view/ViewGroupOverlay;

    iput-object p5, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    iput-boolean p6, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$moveBackgroundLayerWhenAppVisibilityChanges:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iget-boolean v0, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$isExpandingFullyAbove:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$transitionContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$moveBackgroundLayerWhenAppVisibilityChanges:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iget-boolean p2, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$isExpandingFullyAbove:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationStart(Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$transitionContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
