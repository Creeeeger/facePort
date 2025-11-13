.class public final Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;


# instance fields
.field public final authenticationStatus:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;

.field public final faceAuthenticationStatusOverride:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

.field public final isAuthenticated:Lkotlinx/coroutines/flow/StateFlow;

.field public final isBypassEnabled:Lkotlinx/coroutines/flow/Flow;

.field public final isLockedOut:Lkotlinx/coroutines/flow/StateFlow;

.field public final repository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;Ldagger/Lazy;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/log/FaceAuthenticationLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;Lcom/android/systemui/deviceentry/data/repository/FaceWakeUpTriggersConfig;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Landroid/app/trust/TrustManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/log/FaceAuthenticationLogger;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;",
            "Lcom/android/systemui/user/data/repository/UserRepository;",
            "Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;",
            "Lcom/android/systemui/deviceentry/data/repository/FaceWakeUpTriggersConfig;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;",
            "Landroid/app/trust/TrustManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->repository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object v4, v1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_authenticationStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-direct {v2, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    filled-new-array {v3, v2}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->authenticationStatus:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object v3, v1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_detectionStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-direct {v2, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object v2, v1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v2, v0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->isLockedOut:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v2, v1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v2, v0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->isAuthenticated:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v1, v1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isBypassEnabled:Lkotlinx/coroutines/flow/Flow;

    iput-object v1, v0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->isBypassEnabled:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final canFaceAuthRun()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->repository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;

    check-cast p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->canRunFaceAuth:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->authenticationStatus:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    return-object p0
.end method

.method public final isAuthenticated()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->isAuthenticated:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isBypassEnabled()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->isBypassEnabled:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final isFaceAuthEnabledAndEnrolled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isFaceAuthStrong()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    check-cast p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/data/repository/FaceSensorInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FaceSensorInfo;->strength:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->STRONG:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isLockedOut()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->isLockedOut:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->repository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;

    check-cast p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onAccessibilityAction()V
    .locals 0

    sget-object p0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    return-void
.end method

.method public final onDeviceLifted()V
    .locals 0

    sget-object p0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    return-void
.end method

.method public final onNotificationPanelClicked()V
    .locals 0

    sget-object p0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    return-void
.end method

.method public final onPrimaryBouncerUserInput()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->repository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;

    check-cast p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->cancel()V

    return-void
.end method

.method public final onUdfpsSensorTouched()V
    .locals 0

    sget-object p0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    return-void
.end method

.method public final onWalletLaunched()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/SystemUIDeviceEntryFaceAuthInteractor;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    check-cast p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/data/repository/FaceSensorInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FaceSensorInfo;->strength:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->STRONG:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    :cond_1
    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method
