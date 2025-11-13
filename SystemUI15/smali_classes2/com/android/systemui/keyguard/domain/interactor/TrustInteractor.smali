.class public final Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isTrustAgentCurrentlyAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isTrusted:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object v0, p1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->isCurrentUserTrustUsuallyManaged:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;->isEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->isCurrentUserTrustManaged()Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;->isTrustAgentCurrentlyAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->isCurrentUserTrusted()Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;->isTrusted:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    return-void
.end method
