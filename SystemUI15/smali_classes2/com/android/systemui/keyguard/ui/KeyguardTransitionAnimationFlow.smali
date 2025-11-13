.class public final Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logger:Lcom/android/keyguard/logging/KeyguardTransitionAnimationLogger;

.field public final transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/keyguard/logging/KeyguardTransitionAnimationLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->logger:Lcom/android/keyguard/logging/KeyguardTransitionAnimationLogger;

    return-void
.end method


# virtual methods
.method public final setup-VtjQ1oo(JLcom/android/systemui/keyguard/shared/model/Edge;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;
    .locals 7

    new-instance v6, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;-><init>(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLcom/android/systemui/keyguard/shared/model/Edge;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
