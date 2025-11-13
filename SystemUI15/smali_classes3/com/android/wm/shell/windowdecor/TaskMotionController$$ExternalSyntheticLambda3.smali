.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iput p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    iget p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->removeMotionAnimator(I)V

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->postAnimationFinished(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;F)V

    :cond_0
    return-void
.end method
