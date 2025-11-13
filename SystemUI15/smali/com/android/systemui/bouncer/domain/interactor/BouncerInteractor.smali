.class public final Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _onImeHiddenByUser:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _onIncorrectBouncerInput:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

.field public final deviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final dismissDestination:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$map$2;

.field public final falsingInteractor:Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;

.field public final hintedPinLength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isAutoConfirmEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final onImeHiddenByUser:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final onIncorrectBouncerInput:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final onLockoutStarted:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$map$1;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final repository:Lcom/android/systemui/bouncer/data/repository/BouncerRepository;

.field public final sessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/data/repository/BouncerRepository;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerRepository;

    iput-object p3, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    iput-object p4, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->deviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    iput-object p5, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->falsingInteractor:Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;

    iput-object p6, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p4, 0x7

    invoke-static {p1, p1, p2, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object p5, p3, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->isAutoConfirmEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p5, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->isAutoConfirmEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p3, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->hintedPinLength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p5, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->hintedPinLength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p3, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p5, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p3, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p5, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1, p1, p2, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance p1, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$filter$1;

    iget-object p2, p3, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->onAuthenticationResult:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;)V

    new-instance p2, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p9, Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;->backScene:Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor$special$$inlined$map$1;

    new-instance p2, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$filter$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$map$2;

    invoke-direct {p1, p2}, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->dismissDestination:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$map$2;

    return-void
.end method
