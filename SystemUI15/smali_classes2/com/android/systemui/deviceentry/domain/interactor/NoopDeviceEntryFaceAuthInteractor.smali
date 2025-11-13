.class public final Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;


# instance fields
.field public final authenticationStatus:Lkotlinx/coroutines/flow/EmptyFlow;

.field public final isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isBypassEnabled:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;->authenticationStatus:Lkotlinx/coroutines/flow/EmptyFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;->isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;->isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;->isBypassEnabled:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-void
.end method


# virtual methods
.method public final canFaceAuthRun()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;->authenticationStatus:Lkotlinx/coroutines/flow/EmptyFlow;

    return-object p0
.end method

.method public final isAuthenticated()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;->isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isBypassEnabled()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;->isBypassEnabled:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-object p0
.end method

.method public final isFaceAuthEnabledAndEnrolled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isFaceAuthStrong()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isLockedOut()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/NoopDeviceEntryFaceAuthInteractor;->isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAccessibilityAction()V
    .locals 0

    return-void
.end method

.method public final onDeviceLifted()V
    .locals 0

    return-void
.end method

.method public final onNotificationPanelClicked()V
    .locals 0

    return-void
.end method

.method public final onPrimaryBouncerUserInput()V
    .locals 0

    return-void
.end method

.method public final onUdfpsSensorTouched()V
    .locals 0

    return-void
.end method

.method public final onWalletLaunched()V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method
