.class Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;
.super Landroid/view/animation/Animation;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

.field final synthetic blacklist val$left:F

.field final synthetic blacklist val$right:F

.field final synthetic blacklist val$startWidth:I

.field final synthetic blacklist val$targetWidth:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    .line 850
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$targetWidth:I

    iput p3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$startWidth:I

    iput p4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$left:F

    iput p5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$right:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 853
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$targetWidth:I

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$startWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 854
    .local v0, "deltaWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$startWidth:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$smsetWidth(Landroid/view/View;I)V

    .line 857
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$misInRTLMode(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmIsClosedOpposites(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 858
    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$left:F

    .local v1, "x":F
    goto :goto_0

    .line 860
    .end local v1    # "x":F
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$right:F

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 862
    .restart local v1    # "x":F
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 864
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$misInRTLMode(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 868
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmMainPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 869
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_1

    .line 874
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmMainPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$startWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 875
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;->val$targetWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    .line 877
    :goto_1
    return-void
.end method
