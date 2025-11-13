.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$updateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $info:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;Lcom/android/systemui/keyguard/shared/model/TransitionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$updateListener$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$updateListener$1;->$info:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$updateListener$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$updateListener$1;->$info:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/TransitionState;->RUNNING:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;-><init>(Lcom/android/systemui/keyguard/shared/model/TransitionInfo;FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    sget p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->$r8$clinit:I

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->emitTransition(Lcom/android/systemui/keyguard/shared/model/TransitionStep;Z)V

    return-void
.end method
