.class public final Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public mAnimateAlpha:Z

.field public mAnimation:Landroid/animation/ValueAnimator;

.field public mAnimationDirection:I

.field public final mDisplayId:I

.field public final mImeFrame:Landroid/graphics/Rect;

.field public mImeShowing:Z

.field public mImeShowingState:Z

.field public mImeSourceControl:Landroid/view/InsetsSourceControl;

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mRequestedVisibleTypes:I

.field public final mRotation:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/DisplayImeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayImeController;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowingState:Z

    iput p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iput p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    return-void
.end method


# virtual methods
.method public getImeSourceControl()Landroid/view/InsetsSourceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    return-object p0
.end method

.method public final hideInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "DisplayImeController"

    const-string v0, "Got hideInsets for ime"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public final imeTop(F)I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    add-int/2addr p0, p1

    return p0
.end method

.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibilityForDispatch(Z)V

    :cond_1
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v5, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, v4}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz p1, :cond_5

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    const-string p1, "DisplayImeController"

    const-string v0, "insetsChanged when IME showing, restart animation"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(IZZ)V

    :cond_5
    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->insetsChanged(Landroid/view/InsetsState;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    array-length v2, p2

    move v3, p1

    move-object v4, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, p2, v3

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    if-ne v6, v7, :cond_1

    move-object v4, v5

    :cond_1
    :goto_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    move-object v4, v1

    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    move p2, p1

    :goto_2
    if-eqz v4, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, p1

    :goto_3
    if-eq p2, v2, :cond_7

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-object v6, v3, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;

    invoke-interface {v7, v5, v2}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImeControlTargetChanged(IZ)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_6
    monitor-exit v6

    goto :goto_6

    :goto_5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_6
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_7

    :cond_8
    move v2, p1

    :cond_9
    :goto_7
    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v3, v2, Lcom/android/wm/shell/common/DisplayImeController;->mAnimationFinishedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_a

    iput-object v1, v2, Lcom/android/wm/shell/common/DisplayImeController;->mAnimationFinishedCallback:Ljava/lang/Runnable;

    :cond_a
    if-eqz p2, :cond_b

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    goto :goto_8

    :cond_b
    move-object v2, v1

    :goto_8
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    move v3, p1

    :goto_9
    move v5, v3

    goto/16 :goto_f

    :cond_c
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    sget-object v3, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    if-ne v2, v4, :cond_d

    :goto_a
    move v2, v0

    goto :goto_c

    :cond_d
    if-eqz v2, :cond_11

    if-nez v4, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-ne v3, v5, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v3, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v2

    goto :goto_c

    :cond_11
    :goto_b
    move v2, p1

    :goto_c
    if-nez v2, :cond_14

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v5, v3, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v6, :cond_12

    invoke-virtual {v5, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d

    :cond_12
    invoke-virtual {v5, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_d
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, v3, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2, v5}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_13
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v0

    goto :goto_e

    :cond_14
    move v2, p1

    :goto_e
    iget-boolean v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManagerGlobal;->removeImeSurface(Ljava/util/function/Consumer;)V

    :cond_15
    move v5, p1

    move v3, v2

    move v2, v5

    goto :goto_f

    :cond_16
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_17

    move v2, p1

    move v3, v2

    move v5, v0

    goto :goto_f

    :cond_17
    iget-boolean v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v2, :cond_19

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_19

    if-eqz v2, :cond_18

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibilityForDispatch(Z)V

    :cond_19
    move v2, p1

    move v3, v2

    goto/16 :goto_9

    :goto_f
    if-eqz v2, :cond_1b

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p1

    if-eqz p1, :cond_1a

    move v3, v0

    :cond_1a
    move p1, v0

    :cond_1b
    if-eqz v5, :cond_1c

    if-nez v4, :cond_1c

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    new-instance v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Z)V

    iput-object v2, p1, Lcom/android/wm/shell/common/DisplayImeController;->mAnimationFinishedCallback:Ljava/lang/Runnable;

    goto :goto_10

    :cond_1c
    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eq p2, v4, :cond_1d

    new-instance v2, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p2, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :cond_1d
    iput-object v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_1e

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_1e
    :goto_10
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p1

    if-eqz p1, :cond_1f

    if-eqz v3, :cond_1f

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_1f
    return-void
.end method

.method public final setImeInputTargetRequestedVisibility(Z)V
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_0
    return-void
.end method

.method public final setVisibleDirectly(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->updateDisplayWindowRequestedVisibleTypes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "DisplayImeController"

    const-string v0, "Got showInsets for ime"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public final startAnimation(IZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v6, p3

    const/4 v0, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    const-string v2, "DisplayImeController"

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "No leash available, not starting the animation."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    const/16 v7, 0x1a

    if-eqz v1, :cond_1b

    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v3, :cond_2

    goto/16 :goto_c

    :cond_2
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-object v12, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v4, v12, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    if-gt v1, v4, :cond_4

    :goto_0
    if-eqz v9, :cond_4

    move v13, v11

    goto :goto_1

    :cond_4
    move v13, v10

    :goto_1
    if-eqz v13, :cond_5

    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v12, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v1

    const/high16 v3, -0x3d600000    # -80.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_6
    :goto_2
    const-string v1, "Run startAnim  show:"

    const-string v3, "  was:"

    invoke-static {v1, v3, v9}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v3, v11, :cond_7

    const-string v3, "SHOW"

    goto :goto_3

    :cond_7
    if-ne v3, v0, :cond_8

    const-string v3, "HIDE"

    goto :goto_3

    :cond_8
    const-string v3, "NONE"

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_9

    iget v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v1, v11, :cond_9

    if-nez v9, :cond_a

    :cond_9
    iget v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v1, v0, :cond_b

    if-nez v9, :cond_b

    :cond_a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :cond_b
    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v1, v11

    goto :goto_4

    :cond_c
    move v1, v10

    :goto_4
    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iput v10, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    goto :goto_5

    :cond_d
    move v1, v10

    :goto_5
    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v14, v3

    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v15, v3

    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float v16, v14, v3

    if-eqz v9, :cond_e

    move/from16 v3, v16

    goto :goto_6

    :cond_e
    move v3, v14

    :goto_6
    if-eqz v9, :cond_f

    move/from16 v17, v14

    goto :goto_7

    :cond_f
    move/from16 v17, v16

    :goto_7
    iget v4, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-nez v4, :cond_10

    iget-boolean v4, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v4, :cond_10

    if-eqz v9, :cond_10

    move v1, v11

    move v2, v14

    :cond_10
    if-eqz v9, :cond_11

    move v4, v11

    goto :goto_8

    :cond_11
    move v4, v0

    :goto_8
    iput v4, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    iget-boolean v4, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eq v4, v9, :cond_12

    iput-boolean v9, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibilityForDispatch(Z)V

    new-array v0, v0, [F

    aput v3, v0, v10

    aput v17, v0, v11

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_13

    const-wide/16 v4, 0x113

    goto :goto_9

    :cond_13
    const-wide/16 v4, 0x154

    :goto_9
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_14

    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sub-float/2addr v2, v3

    sub-float v1, v17, v3

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_14
    iget-object v5, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda2;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v15

    move v3, v13

    move-object v11, v4

    move/from16 v4, v16

    move-object v10, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FZFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v10, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v15

    move v6, v13

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/inputmethod/ImeTracker$Token;FFFZF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x0

    if-nez v9, :cond_15

    invoke-virtual {v8, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    :cond_15
    if-eqz v9, :cond_19

    iget-object v1, v12, Lcom/android/wm/shell/common/DisplayImeController;->mTransitionsLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions;

    new-instance v2, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object v3, v1, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v1, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/transition/Transitions;->isEmptyExceptZombie(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_16
    iget-object v3, v1, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    move v10, v0

    :goto_a
    iget-object v0, v1, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_17

    iget-object v0, v1, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v3, :cond_18

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    add-int/2addr v10, v0

    goto :goto_a

    :cond_17
    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda0;->run()V

    goto :goto_b

    :cond_18
    iget-object v0, v1, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_19
    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v9, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    :cond_1a
    :goto_b
    return-void

    :cond_1b
    :goto_c
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public final updateImeVisibilityForDispatch(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowingState:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowingState:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;

    invoke-interface {v2, p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImeVisibilityChanged(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method
