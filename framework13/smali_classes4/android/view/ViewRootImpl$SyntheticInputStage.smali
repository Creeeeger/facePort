.class final Landroid/view/ViewRootImpl$SyntheticInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticInputStage"
.end annotation


# instance fields
.field private final greylist-max-o mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

.field private final greylist-max-o mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

.field private final greylist-max-o mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

.field private final greylist-max-o mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 8338
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 8339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 8332
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-direct {v0, p1}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    .line 8333
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-direct {v0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    .line 8334
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-direct {v0, p1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 8336
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    invoke-direct {v0, p1}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    .line 8340
    return-void
.end method


# virtual methods
.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8369
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2

    .line 8371
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 8372
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8373
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 8374
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    .line 8375
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->cancel()V

    goto :goto_0

    .line 8376
    :cond_0
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    .line 8377
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    goto :goto_0

    .line 8378
    :cond_1
    const/high16 v2, 0x200000

    and-int v3, v1, v2

    if-ne v3, v2, :cond_2

    .line 8380
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancel(Landroid/view/MotionEvent;)V

    .line 8384
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "source":I
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 8385
    return-void
.end method

.method protected greylist-max-o onDetachedFromWindow()V
    .locals 1

    .line 8396
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    .line 8397
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8344
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 8345
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 8346
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8347
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    .line 8348
    .local v2, "source":I
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_0

    .line 8349
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->process(Landroid/view/MotionEvent;)V

    .line 8350
    return v1

    .line 8351
    :cond_0
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_1

    .line 8352
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->process(Landroid/view/MotionEvent;)V

    .line 8353
    return v1

    .line 8354
    :cond_1
    const/high16 v3, 0x200000

    and-int v4, v2, v3

    if-ne v4, v3, :cond_2

    .line 8356
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->process(Landroid/view/MotionEvent;)V

    .line 8357
    return v1

    .line 8354
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v2    # "source":I
    :cond_2
    goto :goto_0

    .line 8359
    :cond_3
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 8360
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->process(Landroid/view/KeyEvent;)V

    .line 8361
    return v1

    .line 8359
    :cond_4
    :goto_0
    nop

    .line 8364
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 8389
    if-nez p1, :cond_0

    .line 8390
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    .line 8392
    :cond_0
    return-void
.end method
