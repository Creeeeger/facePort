.class public final Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$2;->this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$2;->this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->assistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->onInvocationProgress(F)V

    return-void
.end method
