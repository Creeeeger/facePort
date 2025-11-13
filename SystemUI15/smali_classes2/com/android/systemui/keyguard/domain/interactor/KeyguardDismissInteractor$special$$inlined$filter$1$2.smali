.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;

    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/util/kotlin/Quad;

    invoke-virtual {p2}, Lcom/android/systemui/util/kotlin/Quad;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/shared/model/TrustModel;

    invoke-virtual {p2}, Lcom/android/systemui/util/kotlin/Quad;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p2}, Lcom/android/systemui/util/kotlin/Quad;->component3()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p2}, Lcom/android/systemui/util/kotlin/Quad;->component4()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v3

    :goto_2
    if-nez p2, :cond_5

    iget-object p2, v2, Lcom/android/systemui/keyguard/shared/model/TrustModel;->flags:Lcom/android/keyguard/TrustGrantFlags;

    iget p2, p2, Lcom/android/keyguard/TrustGrantFlags;->mFlags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_7

    :cond_5
    if-nez v4, :cond_6

    iget-object p2, v2, Lcom/android/systemui/keyguard/shared/model/TrustModel;->flags:Lcom/android/keyguard/TrustGrantFlags;

    invoke-virtual {p2}, Lcom/android/keyguard/TrustGrantFlags;->dismissKeyguardRequested()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    iput v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
