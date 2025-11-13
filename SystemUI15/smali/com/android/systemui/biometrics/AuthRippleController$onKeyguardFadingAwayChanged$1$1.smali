.class public final Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthRippleController;->circleReveal:Lcom/android/systemui/statusbar/CircleReveal;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    return-void
.end method
