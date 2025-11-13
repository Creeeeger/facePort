.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

.field public final synthetic val$animateDownDuration:I

.field public final synthetic val$indication:Ljava/lang/String;

.field public final synthetic val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$indication:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$animateDownDuration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->mCancelled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$animateDownDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$indication:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    return-void
.end method
