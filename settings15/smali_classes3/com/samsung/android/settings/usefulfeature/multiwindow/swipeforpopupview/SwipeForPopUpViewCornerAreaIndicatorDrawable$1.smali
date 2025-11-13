.class public final Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalWidth:F

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentWidth:F

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalWidth:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mWidthChangePerMs:F

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalHeight:F

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentHeight:F

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalHeight:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mHeightChangePerMs:F

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    :goto_0
    return-void
.end method
