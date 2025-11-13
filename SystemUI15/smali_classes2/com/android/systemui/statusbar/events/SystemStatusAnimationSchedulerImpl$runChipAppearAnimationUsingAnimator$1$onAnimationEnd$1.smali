.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1$onAnimationEnd$1;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1$onAnimationEnd$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1$onAnimationEnd$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
