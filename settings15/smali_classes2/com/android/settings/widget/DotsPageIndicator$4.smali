.class public final Lcom/android/settings/widget/DotsPageIndicator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget p1, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object v0, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->dot:I

    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    const/4 v2, 0x0

    aput v2, v1, p1

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/widget/DotsPageIndicator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/widget/DotsPageIndicator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
