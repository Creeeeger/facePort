.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic $property:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation;",
            "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->$property:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->$property:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->$view:Landroid/view/View;

    sget-object p4, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "animateSpring("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") End! V:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "{ChipAnimationController}"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget p1, Lkotlin/Result;->$r8$clinit:I

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
