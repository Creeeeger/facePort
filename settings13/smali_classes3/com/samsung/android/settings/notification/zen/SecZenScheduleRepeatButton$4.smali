.class Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;
.super Ljava/lang/Object;
.source "SecZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;I)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 440
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 445
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    .line 446
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p0, p1, p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    .line 450
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 423
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmEndValue(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    .line 428
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 429
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    .line 430
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p0, p1, p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    .line 434
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->val$index:I

    aget-object p1, p1, v0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmStartValue(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    return-void
.end method
