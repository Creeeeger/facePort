.class public final Lcom/android/wm/shell/common/split/SplitDecorManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

.field public final synthetic val$animFinishedCallback:Ljava/util/function/Consumer;

.field public final synthetic val$animT:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animFinishedCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget v0, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    iget p1, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animFinishedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    return-void
.end method
