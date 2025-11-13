.class public Landroid/view/ViewAnimationHostBridge;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewAnimationHostBridge.java"

# interfaces
.implements Landroid/graphics/RenderNode$AnimationHost;


# instance fields
.field private final blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public blacklist isAttached()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->removeThreadedRendererView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addThreadedRendererView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public blacklist registerAnimatingRenderNode(Landroid/graphics/RenderNode;Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    invoke-interface {p1, p0}, Landroid/view/NativeVectorDrawableAnimator;->setThreadedRendererAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
