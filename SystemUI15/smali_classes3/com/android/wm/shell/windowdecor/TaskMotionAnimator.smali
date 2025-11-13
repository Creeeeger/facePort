.class public final Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

.field public mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

.field public mCanceled:Z

.field public final mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

.field public final mLock:Ljava/lang/Object;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    iget p2, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mAnimType:I

    invoke-static {p2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    :goto_1
    return-void
.end method
