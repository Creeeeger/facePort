.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public final mContext:Landroid/content/Context;

.field public mListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$3;

.field public mMenuAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public final mMenuSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

.field public final mRootView:Landroid/view/ViewGroup;

.field public mScrimView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mRootView:Landroid/view/ViewGroup;

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const p2, 0x44bb8000    # 1500.0f

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p1, p2, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method


# virtual methods
.method public final animateTransition(Ljava/lang/Runnable;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput-object v1, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    new-instance v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    aput-object v1, p2, p0

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public final hideMenu(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mScrimView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    :cond_1
    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;I)V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->animateTransition(Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda0;->run()V

    :cond_3
    :goto_0
    return-void
.end method
