.class final Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $swipeGestureListener:Lcom/android/systemui/screenshot/ui/SwipeGestureListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/SwipeGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$1;->$swipeGestureListener:Lcom/android/systemui/screenshot/ui/SwipeGestureListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$1;->$swipeGestureListener:Lcom/android/systemui/screenshot/ui/SwipeGestureListener;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget p0, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->startX:F

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->displayMetrics:Landroid/util/DisplayMetrics;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v2

    cmpl-float v0, v0, v2

    iget-object v2, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->onDismiss:Lkotlin/jvm/functions/Function1;

    if-lez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->displayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->onCancel:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->startX:F

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
