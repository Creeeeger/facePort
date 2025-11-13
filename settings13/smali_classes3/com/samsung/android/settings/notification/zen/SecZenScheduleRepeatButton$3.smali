.class Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;
.super Ljava/lang/Object;
.source "SecZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$isShowingAnim:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;IZ)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$isShowingAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$isShowingAnim:Z

    if-eq v0, v1, :cond_1

    .line 401
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object p0, v0, p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    return-void

    .line 396
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
