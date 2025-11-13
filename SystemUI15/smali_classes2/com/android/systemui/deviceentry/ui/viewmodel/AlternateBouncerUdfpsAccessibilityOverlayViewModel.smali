.class public final Lcom/android/systemui/deviceentry/ui/viewmodel/AlternateBouncerUdfpsAccessibilityOverlayViewModel;
.super Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;-><init>(Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;)V

    return-void
.end method


# virtual methods
.method public final isVisibleWhenTouchExplorationEnabled()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
