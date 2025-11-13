.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alpha:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final burnInHelperWrapper:Lcom/android/systemui/doze/util/BurnInHelperWrapper;

.field public final configurationChange:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final indicationAreaTranslationX:Lkotlinx/coroutines/flow/Flow;

.field public final isIndicationAreaPadded:Lkotlinx/coroutines/flow/Flow;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/doze/util/BurnInHelperWrapper;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordancesCombinedViewModel;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p7, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    iget-object p0, p3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->alpha:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    new-instance p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$isIndicationAreaPadded$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$isIndicationAreaPadded$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p6, p3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->startButton:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object p3, p3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->endButton:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    invoke-direct {p4, p6, p3, p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    const p0, 0x7f0702bf

    invoke-virtual {p5, p0}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnIn(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object p3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p8, p3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;

    invoke-direct {p4, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p1, p0, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0, p9}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-object p0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->clockPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$special$$inlined$map$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
