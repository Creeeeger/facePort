.class public final Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final isShowingAodOrDozing:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final padding:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final useAodIconVariant:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final viewModel:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;->context:Landroid/content/Context;

    iget-object p1, p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p4, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$isShowingAodOrDozing$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$isShowingAodOrDozing$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, p1, p4, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;->isShowingAodOrDozing:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p1, p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isUdfpsEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {p4, v1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;)V

    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    new-instance p4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$special$$inlined$flatMapLatest$2;

    invoke-direct {p4, v1, p5, p2, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;)V

    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$special$$inlined$flatMapLatest$3;

    invoke-direct {v0, v1, p6, p2, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;)V

    iget-object p2, p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    iget-object p3, p5, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->iconType:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p5, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;

    invoke-direct {p5, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p1, p4, p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;->viewModel:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    return-void
.end method
