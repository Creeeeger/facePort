.class public final Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

.field public final synthetic val$fromAlpha:F

.field public final synthetic val$st:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$visible:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;ZFLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$visible:Z

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$fromAlpha:F

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$st:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$visible:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$st:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$st:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$visible:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$fromAlpha:F

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    const/4 v2, 0x1

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    :cond_0
    iget-boolean p1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    if-eq p1, v2, :cond_1

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$st:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    return-void
.end method
