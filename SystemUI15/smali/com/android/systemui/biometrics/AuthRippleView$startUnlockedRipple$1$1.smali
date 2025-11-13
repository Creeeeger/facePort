.class public final Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;->$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;->$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/biometrics/AuthRippleView;->drawRipple:Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->unlockedRippleAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->drawRipple:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
