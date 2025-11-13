.class public final Lcom/android/settings/widget/LoadingViewController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContentView:Landroid/view/View;

.field public final mEmptyView:Landroid/view/View;

.field public final mFgHandler:Landroid/os/Handler;

.field public final mLoadingView:Landroid/view/View;

.field public final mShowLoadingContainerRunnable:Lcom/android/settings/widget/LoadingViewController$1;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/widget/LoadingViewController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LoadingViewController$1;-><init>(Lcom/android/settings/widget/LoadingViewController;)V

    iput-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Lcom/android/settings/widget/LoadingViewController$1;

    iput-object p1, p0, Lcom/android/settings/widget/LoadingViewController;->mLoadingView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/settings/widget/LoadingViewController;->mContentView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/widget/LoadingViewController;->mEmptyView:Landroid/view/View;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    return-void
.end method

.method public static setViewShown(Landroid/view/View;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_0

    const/high16 v1, 0x10a0000

    goto :goto_0

    :cond_0
    const v1, 0x10a0001

    :goto_0
    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/settings/widget/LoadingViewController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/LoadingViewController$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final handleLoadingContainer(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mLoadingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mContentView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/widget/LoadingViewController;->mEmptyView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/android/settings/widget/LoadingViewController;->setViewShown(Landroid/view/View;ZZ)V

    :cond_0
    invoke-static {v1, p1, p3}, Lcom/android/settings/widget/LoadingViewController;->setViewShown(Landroid/view/View;ZZ)V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0, p3}, Lcom/android/settings/widget/LoadingViewController;->setViewShown(Landroid/view/View;ZZ)V

    return-void
.end method

.method public final showContent(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Lcom/android/settings/widget/LoadingViewController$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZZ)V

    return-void
.end method

.method public final showEmpty()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Lcom/android/settings/widget/LoadingViewController$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZZ)V

    return-void
.end method
