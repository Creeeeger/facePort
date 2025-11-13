.class public final Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

.field public final synthetic val$index:I

.field public final synthetic val$isShowingAnim:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;IZI)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$isShowingAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v1, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$isShowingAnim:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v1, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$isShowingAnim:Z

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object p0, v0, p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mSelectionRatio:F

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
