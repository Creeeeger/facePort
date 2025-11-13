.class public Landroid/view/PendingInsetsController;
.super Ljava/lang/Object;
.source "PendingInsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PendingInsetsController$ShowRequest;,
        Landroid/view/PendingInsetsController$HideRequest;,
        Landroid/view/PendingInsetsController$PendingRequest;
    }
.end annotation


# static fields
.field private static final blacklist KEEP_BEHAVIOR:I = -0x1


# instance fields
.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearance:I

.field private blacklist mAppearanceFromResource:I

.field private blacklist mAppearanceFromResourceMask:I

.field private blacklist mAppearanceMask:I

.field private blacklist mBehavior:I

.field private blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDummyState:Landroid/view/InsetsState;

.field private blacklist mImeCaptionBarInsetsHeight:I

.field private blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private blacklist mReplayedInsetsController:Landroid/view/InsetsController;

.field private blacklist mRequestedVisibleTypes:I

.field private final blacklist mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/PendingInsetsController$PendingRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mDummyState:Landroid/view/InsetsState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    :goto_0
    return-void
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 8

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p6, v0}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    :goto_0
    return-void
.end method

.method public blacklist detach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    return-void
.end method

.method public blacklist getRequestedVisibleTypes()I
    .locals 1

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    return v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .locals 1

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mDummyState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .locals 3

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getSystemBarsAppearance()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    iget v1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    not-int v2, v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .locals 2

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getSystemBarsBehavior()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    return v0
.end method

.method public whitelist hide(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->hide(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/PendingInsetsController$HideRequest;

    invoke-direct {v1, p1}, Landroid/view/PendingInsetsController$HideRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    :goto_0
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public blacklist replayAndAttach(Landroid/view/InsetsController;)V
    .locals 4

    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setSystemBarsBehavior(I)V

    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    invoke-virtual {p1, v0, v2}, Landroid/view/InsetsController;->setSystemBarsAppearance(II)V

    :cond_1
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    invoke-virtual {p1, v0, v2}, Landroid/view/InsetsController;->setSystemBarsAppearanceFromResource(II)V

    :cond_2
    iget v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setImeCaptionBarInsetsHeight(I)V

    :cond_3
    iget-boolean v0, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setAnimationsDisabled(Z)V

    :cond_4
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PendingInsetsController$PendingRequest;

    invoke-interface {v3, p1}, Landroid/view/PendingInsetsController$PendingRequest;->replay(Landroid/view/InsetsController;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-virtual {p1, v3}, Landroid/view/InsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-virtual {p1, v2}, Landroid/view/InsetsController;->setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V

    :cond_7
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    iput-boolean v1, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    iput-object p1, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setAnimationsDisabled(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    :goto_0
    return-void
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .locals 0

    iput p1, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .locals 2

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    :goto_0
    return-void
.end method

.method public blacklist setSystemBarsAppearanceFromResource(II)V
    .locals 2

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsController;->setSystemBarsAppearanceFromResource(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    :goto_0
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setSystemBarsBehavior(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    :goto_0
    return-void
.end method

.method public blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 1

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    :goto_0
    return-void
.end method

.method public whitelist show(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->show(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/PendingInsetsController$ShowRequest;

    invoke-direct {v1, p1}, Landroid/view/PendingInsetsController$ShowRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    :goto_0
    return-void
.end method
