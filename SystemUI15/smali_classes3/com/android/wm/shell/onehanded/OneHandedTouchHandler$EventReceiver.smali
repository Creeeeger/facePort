.class public final Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$EventReceiver;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$EventReceiver;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Landroid/view/MotionEvent;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mLastUpdatedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mIsInOutsideRegion:Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_3

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->resetTimer()V

    iget-boolean v1, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mIsInOutsideRegion:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mIsOnStopTransitioning:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mTouchEventCallback:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$OneHandedTouchEventCallback;

    check-cast v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda11;

    iget-object v1, v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda11;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    iput-boolean v2, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mIsOnStopTransitioning:Z

    :cond_2
    iput-boolean v5, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mIsInOutsideRegion:Z

    goto :goto_1

    :cond_3
    iget-boolean v0, v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mIsInOutsideRegion:Z

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->resetTimer()V

    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v2}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
