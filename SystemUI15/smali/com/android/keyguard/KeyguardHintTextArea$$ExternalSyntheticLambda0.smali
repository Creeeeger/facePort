.class public final synthetic Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardHintTextArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xe9

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xe9

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const-string p0, "102"

    const-string p1, "LSE1034"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
