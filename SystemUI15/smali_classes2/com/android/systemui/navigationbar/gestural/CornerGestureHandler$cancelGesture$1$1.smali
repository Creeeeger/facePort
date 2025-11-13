.class public final Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$1;->this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$1;->this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->assistManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/assist/AssistManager;->onInvocationProgress(F)V

    return-void
.end method
