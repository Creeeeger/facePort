.class public final Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final faceMessage:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$3;

.field public final fingerprintMessage:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$2;

.field public final fingerprintMessageWithTimestamp:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final message:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->fingerprintMessage:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filterNot$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filterNot$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$1;

    invoke-direct {v0, v1, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/util/time/SystemClock;)V

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filterIsInstance$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$fingerprintMessageWithTimestamp$3;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$fingerprintMessageWithTimestamp$3;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v3, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filter$1;

    invoke-direct {v0, v3}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;->fingerprintMessage:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$2;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filterNot$2;

    iget-object p1, p1, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->faceMessage:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filterNot$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$faceMessage$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$faceMessage$3;

    invoke-static {v0, v3, p1}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filter$2;

    invoke-direct {v0, p1, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/util/time/SystemClock;)V

    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$3;

    invoke-direct {p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;->faceMessage:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$map$3;

    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {p1, v2, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;)V

    iget-object p2, p2, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;->message:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
