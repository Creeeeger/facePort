.class public final Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final mAnimationDuration:I

.field public final mAnimationType:I

.field public final mAppRevealDuration:I

.field public final mBrandingStartAlpha:F

.field public mFinishCallback:Ljava/lang/Runnable;

.field public final mFirstWindowFrame:Landroid/graphics/Rect;

.field public final mFirstWindowSurface:Landroid/view/SurfaceControl;

.field public final mIconFadeOutDuration:I

.field public final mIconStartAlpha:F

.field public final mMainWindowShiftLength:I

.field public final mRoundedCornerRadius:F

.field public final mSplashScreenView:Landroid/window/SplashScreenView;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;ILcom/android/wm/shell/common/TransactionPool;Ljava/lang/Runnable;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    iput p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRoundedCornerRadius:F

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0b0110

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object p4

    const/4 p8, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    goto :goto_0

    :cond_2
    iput p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    :goto_0
    iput p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    iput p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    iput p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    :goto_2
    iput p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0112

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationType:I

    iget p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    iput p5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    iput-object p7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/window/SplashScreenView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/window/SplashScreenView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    const/16 v0, 0x27

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method
