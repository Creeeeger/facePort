.class public final Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $brightnessDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

.field public final synthetic $handler:Landroid/os/Handler;

.field public final synthetic $slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;Landroid/os/Handler;Lcom/android/systemui/settings/brightness/ToggleSeekBar;Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object p4, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->$brightnessDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-boolean v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isSliderDisabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->TAG:Ljava/lang/String;

    const-string p1, "Dark mode and brightness bar sliding happened simulteaneosuly: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->outdoormode:Z

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->showSliderDisabledToast()V

    :cond_1
    return v2

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->highBrightnessModeEnter:Z

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isAutoChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->showHighBrightnessModeToast()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-boolean v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderEnabled:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBrightnessBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isLongPressed:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->downPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, v2, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->$handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->$brightnessDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-direct {v0, v2, p1, v3, p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;-><init>(Lcom/android/systemui/settings/brightness/ToggleSeekBar;Landroid/view/View;Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-boolean p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isLongPressed:Z

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->downPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    float-to-double v3, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object p2, p2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->downPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iget-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget v0, p2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->touchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    iget-boolean p1, p2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isLongPressed:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->$handler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    return v1

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-boolean p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isLongPressed:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->$handler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isLongPressed:Z

    return p0

    :cond_9
    :goto_0
    return v2
.end method
