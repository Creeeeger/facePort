.class public final Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _scrimBehindAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public currentVisibility:I

.field public final scrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field public final scrimBehindAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final scrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field public visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;)V
    .locals 11

    move-object v0, p0

    move-object v1, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->scrimBehind:Lcom/android/systemui/scrim/ScrimView;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->scrimInFront:Lcom/android/systemui/scrim/ScrimView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->_scrimBehindAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    move-object v2, p2

    check-cast v2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    move-object v3, p4

    iget-object v6, v3, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v3, p5

    check-cast v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v7, v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->lockscreenShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v8, v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object v3, v2

    filled-new-array/range {v3 .. v10}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;-><init>(Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method
