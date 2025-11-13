.class public final Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field public final synthetic val$end:F

.field public final synthetic val$leash:Landroid/view/SurfaceControl;

.field public final synthetic val$va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$end:F

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$va:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$end:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$va:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda13;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Landroid/animation/ValueAnimator;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
