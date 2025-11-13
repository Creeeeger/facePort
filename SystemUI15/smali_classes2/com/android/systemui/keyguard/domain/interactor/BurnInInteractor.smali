.class public final Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final burnInHelperWrapper:Lcom/android/systemui/doze/util/BurnInHelperWrapper;

.field public final configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

.field public final context:Landroid/content/Context;

.field public final deviceEntryIconXOffset:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final deviceEntryIconYOffset:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final udfpsProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/util/BurnInHelperWrapper;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnInHelperWrapper:Lcom/android/systemui/doze/util/BurnInHelperWrapper;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object p1, p4, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->scaleForResolution:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    const v1, 0x7f07176b

    const/4 v2, 0x1

    invoke-direct {p2, v0, p0, v1, v2}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;IZ)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {p2, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, p3, v2, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->deviceEntryIconXOffset:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p4, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->scaleForResolution:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$$inlined$flatMapLatest$1;

    const v2, 0x7f07176c

    invoke-direct {p4, v0, p0, v2, v3}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;IZ)V

    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p2, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    invoke-static {p1, p3, p4, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->deviceEntryIconYOffset:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->dozeTimeTick:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$udfpsProgress$1;

    invoke-direct {p4, p0, v0}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$udfpsProgress$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p2, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-static {}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInProgressOffset()F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p1, p3, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->udfpsProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final burnIn(I)Lkotlinx/coroutines/flow/Flow;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    iget-object v1, v0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffset$$inlined$flatMapLatest$1;

    const/4 v3, 0x0

    const v4, 0x7f07019e

    const/4 v5, 0x1

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffset$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;IZ)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffset$$inlined$flatMapLatest$1;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, p1, v4}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffset$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;IZ)V

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$$inlined$map$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;I)V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p0, v1, v2, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
