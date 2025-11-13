.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final attemptEnterDeviceFromDeviceEntryIcon:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final deviceEntryFromBiometricSource:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final deviceEntryFromDeviceEntryIcon:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$map$2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->biometricUnlockState:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$filter$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$map$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;->deviceEntryFromBiometricSource:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;->attemptEnterDeviceFromDeviceEntryIcon:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0, p1}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$filter$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$map$2;

    invoke-direct {p1, v0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;->deviceEntryFromDeviceEntryIcon:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor$special$$inlined$map$2;

    return-void
.end method
