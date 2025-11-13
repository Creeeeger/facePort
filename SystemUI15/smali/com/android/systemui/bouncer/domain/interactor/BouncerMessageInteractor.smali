.class public final Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bouncerMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final countDownTimerUtil:Lcom/android/systemui/bouncer/domain/interactor/CountDownTimerUtil;

.field public final facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

.field public final initialBouncerMessage:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$map$1;

.field public final isAnyBiometricsEnabledAndEnrolled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isFingerprintAuthCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final kumCallback:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$kumCallback$1;

.field public final repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

.field public final securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final systemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/bouncer/domain/interactor/CountDownTimerUtil;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/data/repository/TrustRepository;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Lcom/android/systemui/flags/SystemPropertiesHelper;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;Lcom/android/keyguard/KeyguardSecurityModel;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->countDownTimerUtil:Lcom/android/systemui/bouncer/domain/interactor/CountDownTimerUtil;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->systemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v7, v6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isFingerprintCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v5, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->isFingerprintAuthCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v8, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$kumCallback$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$kumCallback$1;-><init>(Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;)V

    iput-object v8, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->kumCallback:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$kumCallback$1;

    move-object v9, v3

    check-cast v9, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iget-object v10, v9, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v11, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt$or$1;

    const/4 v15, 0x0

    invoke-direct {v11, v15}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt$or$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v12, v9, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v13, v10, v12, v11}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object v10, v4, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->lastShownSecurityMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    invoke-virtual {v11}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->isCurrentUserTrustManaged()Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v12

    move-object/from16 v11, p12

    check-cast v11, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object v14, v11, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v6, v6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isLockedOut:Lkotlinx/coroutines/flow/Flow;

    iget-object v11, v9, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->authenticationFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-object v9, v14

    move-object v14, v6

    move-object v6, v15

    move-object v15, v9

    move-object/from16 v16, v7

    filled-new-array/range {v10 .. v16}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    new-instance v9, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$combine$1;

    invoke-direct {v9, v7}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance v7, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$map$1;

    invoke-direct {v7, v9, v2, v0, v3}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/TrustRepository;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;)V

    check-cast v1, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->bouncerMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v1, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->bouncerMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    move-object/from16 v1, p4

    invoke-virtual {v1, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v1, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$1;

    invoke-direct {v1, v6}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v3, v4, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v2, v3, v7, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$2;

    invoke-direct {v2, v0, v6}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$2;-><init>(Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v5}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultMessage()Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;
    .locals 2

    sget-object v0, Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;->INSTANCE:Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->toAuthModel(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->isFingerprintAuthCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;->defaultMessage(Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;Z)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->toMessage(Lkotlin/Pair;)Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    move-result-object p0

    return-object p0
.end method
