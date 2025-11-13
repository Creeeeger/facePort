.class public final Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCancelled:Z

.field public final mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field public final synthetic this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

.field public final synthetic val$endY:F

.field public final synthetic val$hiddenY:F

.field public final synthetic val$isFloating:Z

.field public final synthetic val$shownY:F

.field public final synthetic val$x:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/inputmethod/ImeTracker$Token;FFFZF)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iput p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$x:F

    iput p4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    iput p5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$shownY:F

    iput-boolean p6, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    iput p7, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$endY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    sget-boolean p1, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "TOKEN_NONE"

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d0b

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v2, "DisplayImeController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAnimationEnd "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    iget v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$x:F

    iget v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$endY:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v4, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-boolean v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    iget-object v6, v4, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v4, v4, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;

    invoke-interface {v7, v3, v5}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImeEndPositioning(IZ)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v4, 0x2

    const/16 v5, 0x1b

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-nez v4, :cond_6

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {v1, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManagerGlobal;->removeImeSurface(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, v1}, Landroid/view/inputmethod/ImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_2

    :cond_6
    if-ne v3, v1, :cond_7

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-nez p1, :cond_7

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, v1}, Landroid/view/inputmethod/ImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_2

    :cond_7
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-eqz p1, :cond_8

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, v1, v5}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_8
    :goto_2
    sget-boolean p1, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v3, p1

    goto :goto_4

    :cond_9
    const-string p1, "TOKEN_NONE"

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$endY:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    goto :goto_5

    :cond_a
    const-string p1, "null"

    :goto_5
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object p1

    goto :goto_6

    :cond_b
    const-string p1, "null"

    :goto_6
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object p1

    goto :goto_7

    :cond_c
    const-string p1, "null"

    :goto_7
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x7d0a

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_d
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iput v0, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mAnimationFinishedCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_e

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-nez v1, :cond_e

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mAnimationFinishedCallback:Ljava/lang/Runnable;

    :cond_e
    return-void

    :goto_8
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v12

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    iget v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$x:F

    invoke-virtual {v12, v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const-string v2, "DisplayImeController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAnimationStart d:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v4, v4, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v5, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v5, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$shownY:F

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " showing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v4, v4, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v3, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget v4, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iget v8, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    invoke-virtual {v2, v8}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result v2

    iget-object v8, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v9, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$shownY:F

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result v8

    iget-object v9, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v9, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v9, v7, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    iget-boolean v10, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    iget-object v11, v3, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v11

    :try_start_0
    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v19, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;

    move v14, v4

    move v15, v2

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v8

    invoke-interface/range {v13 .. v18}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImeStartPositioning(IIZZI)I

    move-result v13

    or-int v19, v19, v13

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    and-int/lit8 v3, v19, 0x1

    if-nez v3, :cond_3

    move v5, v7

    :cond_3
    iput-boolean v5, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    if-nez v5, :cond_5

    iget-boolean v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    :goto_3
    iget v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    sub-float/2addr v1, v3

    iget v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$shownY:F

    sub-float/2addr v4, v3

    div-float/2addr v1, v4

    :goto_4
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v12, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v2, v7, :cond_6

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v4, 0x1b

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_6
    sget-boolean v2, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    const-string v2, "TOKEN_NONE"

    :goto_5
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v4, v4, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$endY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7d09

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_8
    invoke-virtual {v12}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, v12}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_6
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
