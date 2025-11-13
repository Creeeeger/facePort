.class public final Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;


# instance fields
.field public final shouldHandleTouches:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/keyguard/logging/DeviceEntryIconLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->deviceEntryViewAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iget-object p2, p2, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManagerExtKt;->getHideAffordancesRequest(Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel$shouldHandleTouches$1;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel$shouldHandleTouches$1;-><init>(Lcom/android/keyguard/logging/DeviceEntryIconLogger;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel;->shouldHandleTouches:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getShouldHandleTouches()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/DeviceEntryUdfpsTouchOverlayViewModel;->shouldHandleTouches:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method
