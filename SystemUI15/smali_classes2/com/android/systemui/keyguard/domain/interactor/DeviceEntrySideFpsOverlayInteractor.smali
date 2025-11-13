.class public final Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public final isBouncerSceneActive:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public final showIndicatorForAlternateBouncer:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final showIndicatorForPrimaryBouncer:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepository;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;->context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;->primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iput-object p7, p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iget-object p1, p5, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object p7, p5, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->startingDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p4, p7}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p3, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;

    iget-object p3, p3, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->shouldUpdateIndicatorVisibility:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p7, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$filter$1;

    invoke-direct {p7, p3}, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p3, p5, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->startingToHide:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$2;

    filled-new-array {p1, p3, p4, p2, p7}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;)V

    new-instance p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$showIndicatorForPrimaryBouncer$3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$showIndicatorForPrimaryBouncer$3;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p3, p2, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$showIndicatorForAlternateBouncer$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$showIndicatorForAlternateBouncer$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    iget-object p4, p6, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p2, p4, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$showIndicatorForDeviceEntry$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$showIndicatorForDeviceEntry$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p4, p3, p2, p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$showIndicatorForDeviceEntry$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$showIndicatorForDeviceEntry$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
