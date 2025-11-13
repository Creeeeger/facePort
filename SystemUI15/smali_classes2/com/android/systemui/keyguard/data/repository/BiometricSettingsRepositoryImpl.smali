.class public final Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final areBiometricsEnabledForCurrentUser:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final areBiometricsEnabledForDeviceEntryFromUserSetting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final authenticationFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final biometricsEnabledForUser:Ljava/util/Map;

.field public final devicePolicyChangedForAllUsers:Lkotlinx/coroutines/flow/Flow;

.field public final isCurrentUserInLockdown:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$1;

.field public final isFaceAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isFaceAuthSupportedInCurrentPosture:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final isFaceAuthenticationEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isFaceBiometricsAllowed:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isFaceEnrolled:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isFingerprintAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isFingerprintBiometricAllowed:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isFingerprintEnabledByDevicePolicy:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isFingerprintEnrolled:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isNonStrongBiometricAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isStrongBiometricAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/user/data/repository/UserRepository;Landroid/app/admin/DevicePolicyManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/hardware/biometrics/BiometricManager;Lcom/android/systemui/keyguard/data/repository/DevicePostureRepository;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;Lcom/android/systemui/dump/DumpManager;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->biometricsEnabledForUser:Ljava/util/Map;

    new-instance v6, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;

    move-object/from16 v7, p1

    invoke-direct {v6, v2, v7}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;-><init>(Lcom/android/systemui/user/data/repository/UserRepository;Landroid/content/Context;)V

    iget-object v8, v6, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->currentUserAuthFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance v9, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v9, v8}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v9, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isCurrentUserInLockdown:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$1;

    iget-object v8, v6, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->currentUserAuthFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->authenticationFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    const-string v8, "BiometricsRepositoryImpl"

    const-string v9, "Registering StrongAuthTracker"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, p2

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    move-object/from16 v8, p14

    invoke-virtual {v8, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    sget-object v8, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->Companion:Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b0024

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;->toPosture(I)Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->UNKNOWN:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    if-ne v7, v8, :cond_0

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v8, v7}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p10

    check-cast v8, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl;

    invoke-virtual {v8}, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl;->getCurrentDevicePosture()Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v9, v8, v7}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/shared/model/DevicePosture;)V

    move-object v8, v9

    :goto_0
    new-instance v7, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$2;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v10, v8, v7}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object v10, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthSupportedInCurrentPosture:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    check-cast v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    new-instance v7, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$3;

    iget-object v8, v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v7, v8}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    new-instance v12, Landroid/content/IntentFilter;

    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v12, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    move-object/from16 v11, p3

    invoke-static/range {v11 .. v16}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->devicePolicyChangedForAllUsers:Lkotlinx/coroutines/flow/Flow;

    new-instance v11, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {v11, v9, v1}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/AuthController;)V

    invoke-static {v7, v11}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$2;

    invoke-direct {v12, v9, v1}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/AuthController;)V

    invoke-static {v7, v12}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    new-instance v12, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$3;

    invoke-direct {v12, v9, v0}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;)V

    iget-object v13, v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-static {v13, v12}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnabledByDevicePolicy$1;

    invoke-direct {v13, v3, v9}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnabledByDevicePolicy$1;-><init>(Landroid/app/admin/DevicePolicyManager;Lkotlin/coroutines/Continuation;)V

    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v14, v7, v8, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v8, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnabledByDevicePolicy$2;

    invoke-direct {v8, v3, v0, v9}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnabledByDevicePolicy$2;-><init>(Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v13, v8, v14}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v13, v5}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    new-instance v13, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1;

    invoke-direct {v13, v9}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v14, v12, v8, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object v8, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v13, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;

    move-object/from16 v15, p9

    invoke-direct {v13, v15, v9}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;-><init>(Landroid/hardware/biometrics/BiometricManager;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    new-instance v13, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$2;

    invoke-direct {v13, v0, v9}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$2;-><init>(Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v15, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v15, v8, v13}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance v13, Lkotlin/Pair;

    const/4 v9, 0x0

    move-object/from16 p2, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v13, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v15, v4, v8, v13}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->areBiometricsEnabledForDeviceEntryFromUserSetting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v10, v6, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->isStrongBiometricAllowed:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;

    invoke-virtual {v2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v15, 0x1

    invoke-virtual {v6, v15, v13}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v10, v4, v8, v13}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isStrongBiometricAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v10, v6, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->isNonStrongBiometricAllowed:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-virtual {v2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v10, v4, v8, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isNonStrongBiometricAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v2, p12

    check-cast v2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    new-instance v6, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$4;

    const/4 v10, 0x0

    invoke-direct {v6, v10, v0}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;)V

    iget-object v2, v2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->strength:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$2;

    invoke-static {v2, v6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v2

    move-object/from16 v6, p11

    check-cast v6, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    new-instance v13, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$5;

    invoke-direct {v13, v10, v0}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$5;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;)V

    iget-object v6, v6, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v6, v13}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v6

    new-instance v13, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;

    invoke-direct {v13, v10, v0, v5, v3}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/app/admin/DevicePolicyManager;)V

    invoke-static {v7, v13}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v3

    invoke-static {v11, v12}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt;->access$and(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt;->access$and(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v3

    invoke-static {v3, v4, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt;->access$and(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v2

    invoke-static {v2, v4, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v14, v1}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt;->access$and(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v1

    invoke-interface/range {p13 .. p13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->isAnySimSecure()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt$isFalse$$inlined$map$1;

    invoke-direct {v3, v2}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt$isFalse$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt;->access$and(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v1

    invoke-static {v1, v4, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v1, v6}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt;->access$and(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt;->access$and(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "isFingerprintEnrolledAndEnabled="

    invoke-static {v0, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "isFingerprintAuthCurrentlyAllowed="

    invoke-static {v0, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isNonStrongBiometricAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "isNonStrongBiometricAllowed="

    invoke-static {v0, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isStrongBiometricAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p2, "isStrongBiometricAllowed="

    invoke-static {p2, p0, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    return-void
.end method
