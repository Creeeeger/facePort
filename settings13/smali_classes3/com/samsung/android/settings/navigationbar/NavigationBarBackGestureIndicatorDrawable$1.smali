.class Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;
.super Landroid/os/Handler;
.source "NavigationBarBackGestureIndicatorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;Landroid/os/Looper;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, v1, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fgetmTimeAnimator(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fputmFinalWidth(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;F)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fgetmCurrentWidth(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fgetmFinalWidth(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fputmWidthChangePerMs(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;F)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fputmFinalHeight(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;F)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fgetmCurrentHeight(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fgetmFinalHeight(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fputmHeightChangePerMs(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;F)V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->-$$Nest$fgetmTimeAnimator(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)Landroid/animation/TimeAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    :goto_0
    return-void
.end method
