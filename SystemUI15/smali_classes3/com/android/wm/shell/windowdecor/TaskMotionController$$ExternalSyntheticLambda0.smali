.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v0, v5, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    const/4 v1, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->postAnimationFinished(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;FLandroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
