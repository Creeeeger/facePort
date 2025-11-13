.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isDragging:Z

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

.field public final v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->v:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->isDragging:Z

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->isDragging:Z

    :cond_1
    neg-float p1, p3

    iget-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->v:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/16 p3, 0x2710

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p1, p3

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    move-object p2, p3

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, p4, p4}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    return p4
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_3

    move-object v0, p0

    :cond_3
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->touchCard(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
