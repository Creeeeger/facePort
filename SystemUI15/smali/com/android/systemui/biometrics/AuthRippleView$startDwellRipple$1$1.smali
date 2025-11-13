.class public final Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->drawDwell:Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthRippleView;->retractDwellAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthRippleView;->fadeDwellAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->drawDwell:Z

    return-void
.end method
