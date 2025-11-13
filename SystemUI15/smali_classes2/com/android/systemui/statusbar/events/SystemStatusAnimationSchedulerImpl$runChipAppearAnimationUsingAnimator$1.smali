.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarHidden:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->collectStartAnimations(Z)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1$onAnimationEnd$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1$onAnimationEnd$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->addListener(Landroidx/core/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->start()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-string p1, "System animation total length exceeds budget. Expected: 500, actual: "

    invoke-static {p1, v0, v1}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
