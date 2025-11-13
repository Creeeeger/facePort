.class final Landroid/view/ViewRootImpl$NativePreImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePreImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist doOnBackKeyEvent(Landroid/view/KeyEvent;)I
    .locals 7

    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    instance-of v2, v1, Landroid/window/OnBackAnimationCallback;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/view/ImeBackAnimationController;

    if-nez v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/window/OnBackAnimationCallback;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    return v4

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Landroid/window/BackEvent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v6, v5}, Landroid/window/BackEvent;-><init>(FFFI)V

    invoke-interface {v2, v4}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    return v4

    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Skip onBackInvoked(), reason: keyEvent.isCanceled=true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :cond_5
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 4

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    nop

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    return v3

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmOnBackInvokedDispatcher(Landroid/view/ViewRootImpl;)Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->doOnBackKeyEvent(Landroid/view/KeyEvent;)I

    move-result v1

    return v1

    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v2, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, p1, v3, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    const/4 v1, 0x3

    return v1

    :cond_4
    return v1
.end method
