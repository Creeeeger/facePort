.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;-><init>()V

    return-void
.end method

.method public static final access$defaultTransitionAnimator(Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;Ljava/util/concurrent/Executor;)Lcom/android/systemui/animation/TransitionAnimator;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/animation/TransitionAnimator;

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    sget-object v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/animation/TransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/TransitionAnimator$Timings;Lcom/android/systemui/animation/TransitionAnimator$Interpolators;)V

    return-object p0
.end method
