.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$dividerLeash:Landroid/view/SurfaceControl;

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget-object v4, v3, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v4, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, v3, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v3, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget-object v6, v5, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v6, v6, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v5, v5, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
