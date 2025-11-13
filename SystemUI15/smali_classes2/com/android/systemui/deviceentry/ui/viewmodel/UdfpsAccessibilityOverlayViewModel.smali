.class public abstract Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final udfpsOverlayParams:Lkotlinx/coroutines/flow/StateFlow;

.field public final udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

.field public final visible:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/UdfpsUtils;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;->udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;->udfpsOverlayParams:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p1, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel$special$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;)V

    iget-object p2, p2, Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;->isTouchExplorationEnabled:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;->visible:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method


# virtual methods
.method public abstract isVisibleWhenTouchExplorationEnabled()Lkotlinx/coroutines/flow/Flow;
.end method
