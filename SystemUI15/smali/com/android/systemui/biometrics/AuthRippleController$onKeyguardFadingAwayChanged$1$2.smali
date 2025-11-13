.class public final Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    iget-object v0, p1, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthRippleController;->circleReveal:Lcom/android/systemui/statusbar/CircleReveal;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    sget-object v0, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrimAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
