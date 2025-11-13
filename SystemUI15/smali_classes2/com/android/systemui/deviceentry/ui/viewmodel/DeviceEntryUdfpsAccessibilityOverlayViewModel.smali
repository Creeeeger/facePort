.class public final Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;
.super Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final deviceEntryFgIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

.field public final deviceEntryIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;-><init>(Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;)V

    iput-object p3, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;->deviceEntryIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iput-object p4, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;->deviceEntryFgIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    return-void
.end method


# virtual methods
.method public final isVisibleWhenTouchExplorationEnabled()Lkotlinx/coroutines/flow/Flow;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;->deviceEntryFgIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;->viewModel:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;->deviceEntryIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->deviceEntryViewAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel$isVisibleWhenTouchExplorationEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel$isVisibleWhenTouchExplorationEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, v0, p0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    return-object v2
.end method
