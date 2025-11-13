.class public final Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;


# direct methods
.method public constructor <init>(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v2, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    iput p1, v2, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2bc

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_1
    iget-object p0, v2, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->end()V

    iget p0, p1, Landroid/os/Message;->arg1:I

    int-to-float p0, p0

    iput p0, v2, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    iget p1, v2, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x43480000    # 200.0f

    div-float/2addr p0, p1

    iput p0, v2, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mWidthChangePerMs:F

    iget-object p0, v2, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    :goto_0
    return-void
.end method
