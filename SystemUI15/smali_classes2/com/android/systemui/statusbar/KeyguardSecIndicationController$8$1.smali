.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8$1;->this$1:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8$1;->this$1:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8$1;->this$1:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method
