.class public final Lcom/android/systemui/power/UnintentionalLcdOnView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-static {v0, p2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->-$$Nest$monLockerActionMove(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    sget v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->$r8$clinit:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    iget-object v0, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartY:F

    invoke-virtual {v0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V

    iput-boolean p1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    iget-object v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    iget-object v0, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setDCircleAnimator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "PowerUI.UnintentionalLcdOnView"

    const-string v0, "Caught Exception In Touch Event"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return p1
.end method
