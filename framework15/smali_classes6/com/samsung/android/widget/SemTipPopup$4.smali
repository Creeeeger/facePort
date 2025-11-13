.class Lcom/samsung/android/widget/SemTipPopup$4;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->initBalloonPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$4;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$4;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmNeedToCallParentViewsOnClick(Lcom/samsung/android/widget/SemTipPopup;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$4;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmParentView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup$4;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v3}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmParentView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v6, v2, v1

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup$4;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v7}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmParentView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v4, v2, v4

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup$4;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v7}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmParentView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup$4;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const-string v5, "callOnClick for parent view"

    invoke-static {v4, v5}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdebugLog(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup$4;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v4}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmParentView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->callOnClick()Z

    :cond_1
    return v1
.end method
