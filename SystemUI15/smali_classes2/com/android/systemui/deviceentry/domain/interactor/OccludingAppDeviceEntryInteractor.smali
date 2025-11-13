.class public final Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final fingerprintLockoutEvents:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$3;

.field public final fingerprintUnlockSuccessEvents:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$2;

.field public final keyguardOccludedByApp:Lkotlinx/coroutines/flow/Flow;

.field public final message:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;)V
    .locals 10

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    move-object v3, p4

    iget-object v5, v3, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v8, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$keyguardOccludedByApp$2;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$keyguardOccludedByApp$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

    move-object v4, p5

    iget-object v6, v4, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v7, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDozing:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v4, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    move-object v4, p2

    check-cast v4, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    new-instance v7, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$ifKeyguardOccludedByApp$$inlined$flatMapLatest$1;

    invoke-direct {v7, v9, v5, v6}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$ifKeyguardOccludedByApp$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3, v7}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v5

    new-instance v7, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$filter$1;

    invoke-direct {v7, v5}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v5, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$2;

    invoke-direct {v5, v7}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v5, v0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;->fingerprintUnlockSuccessEvents:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$2;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$ifKeyguardOccludedByApp$$inlined$flatMapLatest$1;

    invoke-direct {v5, v9, v4, v6}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$ifKeyguardOccludedByApp$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$filter$2;

    invoke-direct {v5, v4}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v4, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$3;

    invoke-direct {v4, v5}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v4, v0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;->fingerprintLockoutEvents:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$3;

    move-object v4, p1

    iget-object v4, v4, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->fingerprintMessage:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    new-instance v5, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$filterNot$1;

    invoke-direct {v5, v4}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$filterNot$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v4, v9}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$ifKeyguardOccludedByApp$$inlined$flatMapLatest$1;

    invoke-direct {v6, v9, v5, v4}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$ifKeyguardOccludedByApp$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3, v6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance v3, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;

    move-object/from16 v4, p9

    invoke-direct {v3, p0, v4, p3, v9}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v2, v9, v9, v3, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v3, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2;

    move-object/from16 v4, p8

    invoke-direct {v3, p0, v4, v9}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v9, v9, v3, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
