.class public final Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $handler:Landroid/os/Handler;

.field public final synthetic $it:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

.field public final synthetic $thumbAnimator:Landroid/animation/ValueAnimator;

.field public final synthetic $touchSlop:Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VolumeSeekBar;Landroid/animation/ValueAnimator;Landroid/os/Handler;Ljava/lang/Integer;Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$thumbAnimator:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$touchSlop:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$it:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isLongPressed:Z

    iget-object v0, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->downPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$thumbAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$it:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;Landroid/view/View;Lcom/android/systemui/qs/bar/VolumeSeekBar;Landroid/view/MotionEvent;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->downPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    float-to-double v2, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-object p2, p2, Lcom/android/systemui/qs/bar/VolumeSeekBar;->downPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iget-object p2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$touchSlop:Ljava/lang/Integer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-boolean p1, p1, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isLongPressed:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-boolean p1, p1, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isLongPressed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->$thumbAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isLongPressed:Z

    return p0
.end method
