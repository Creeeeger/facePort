.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $animator:Landroid/animation/ValueAnimator;

.field public final synthetic $info:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

.field public final synthetic $startingValue:F

.field public final synthetic $updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;Lcom/android/systemui/keyguard/shared/model/TransitionInfo;FLandroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$info:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    iput p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$startingValue:F

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$animator:Landroid/animation/ValueAnimator;

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final endAnimation(FLcom/android/systemui/keyguard/shared/model/TransitionState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$info:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;-><init>(Lcom/android/systemui/keyguard/shared/model/TransitionInfo;FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    sget p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->$r8$clinit:I

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->emitTransition(Lcom/android/systemui/keyguard/shared/model/TransitionStep;Z)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$animator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastStep:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/TransitionState;->CANCELED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->endAnimation(FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->endAnimation(FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$info:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    iget p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;->$startingValue:F

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/TransitionState;->STARTED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;-><init>(Lcom/android/systemui/keyguard/shared/model/TransitionInfo;FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    sget p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->$r8$clinit:I

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->emitTransition(Lcom/android/systemui/keyguard/shared/model/TransitionStep;Z)V

    return-void
.end method
