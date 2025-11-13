.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 4

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleHideAnimator:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mIsShowing:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHide:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHide:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mShow:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
