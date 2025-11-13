.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _biometricUnlockState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _clockShouldBeCentered:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _dismissAction:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _dozeTimeTick:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isActiveDreamLockscreenHosted:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isAodAvailable:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isDozing:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isKeyguardEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isQuickSettingsVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _keyguardAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _keyguardDone:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final ambientIndicationVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final biometricUnlockState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final bottomAreaAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final clockShouldBeCentered:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dismissAction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dozeTimeTick:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dozeTransitionListener:Lcom/android/systemui/doze/DozeTransitionListener;

.field public final dozeTransitionModel:Lkotlinx/coroutines/flow/Flow;

.field public final dreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

.field public final faceSensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final fingerprintSensorLocation:Lkotlinx/coroutines/flow/Flow;

.field public final isActiveDreamLockscreenHosted:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isAodAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDozing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDreaming:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isDreamingWithOverlay:Lkotlinx/coroutines/flow/Flow;

.field public final isEncryptedOrLockdown:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardDismissible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isKeyguardEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isKeyguardGoingAway:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

.field public final isQuickSettingsVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardDone:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final keyguardDoneAnimationsFinished:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final lastRootViewTapPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final linearDozeAmount:Lkotlinx/coroutines/flow/Flow;

.field public final statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final topClippingBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/doze/DozeTransitionListener;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dreams/DreamOverlayCallbackController;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeTransitionListener:Lcom/android/systemui/doze/DozeTransitionListener;

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p6, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

    iput-object p9, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p11, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    sget-object p2, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;->INSTANCE:Lcom/android/systemui/keyguard/shared/model/DismissAction$None;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dismissAction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x7

    invoke-static {p2, p2, p3, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardDone:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-static {p2, p2, p3, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardDoneAnimationsFinished:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->bottomAreaAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->clockShouldBeCentered:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->topClippingBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p5, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p6, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardShowing$1;

    invoke-direct {p6, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardShowing$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p6}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isAodAvailable:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isAodAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardOccluded$1;

    invoke-direct {p5, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardOccluded$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p5}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardDismissible$1;

    invoke-direct {p5, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardDismissible$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p5}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    sget-object p6, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {p5, p8, p6, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardDismissible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardGoingAway$1;

    invoke-direct {p5, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isKeyguardGoingAway$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p5}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardGoingAway:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isKeyguardEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isDozing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDozing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-wide/16 p4, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_dozeTimeTick:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeTimeTick:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->lastRootViewTapPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->ambientIndicationVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDreamingWithOverlay:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDreaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$linearDozeAmount$1;

    invoke-direct {p4, p1, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$linearDozeAmount$1;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->linearDozeAmount:Lkotlinx/coroutines/flow/Flow;

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeTransitionModel:Lkotlinx/coroutines/flow/Flow;

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isEncryptedOrLockdown$1;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isEncryptedOrLockdown$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$special$$inlined$filter$1;

    invoke-direct {p5, p4, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;)V

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isEncryptedOrLockdown$3;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isEncryptedOrLockdown$3;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p9, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p9, p4, p5}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isEncryptedOrLockdown$4;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isEncryptedOrLockdown$4;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p9, p4}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p4

    invoke-static {p4, p7}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isEncryptedOrLockdown:Lkotlinx/coroutines/flow/Flow;

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$statusBarState$1;

    invoke-direct {p4, p1, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$statusBarState$1;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->statusBarStateIntToObject(I)Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    move-result-object p1

    invoke-static {p4, p8, p6, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    sget-object p4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->NONE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    invoke-direct {p1, p4, p3}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_biometricUnlockState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->biometricUnlockState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$fingerprintSensorLocation$1;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$fingerprintSensorLocation$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->fingerprintSensorLocation:Lkotlinx/coroutines/flow/Flow;

    check-cast p10, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object p1, p10, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->faceSensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isQuickSettingsVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isQuickSettingsVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isActiveDreamLockscreenHosted:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static final access$dozeMachineStateToModel(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lcom/android/systemui/doze/DozeMachine$State;)Lcom/android/systemui/keyguard/shared/model/DozeStateModel;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid DozeMachine.State: state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_DISPLAY_STATE_ON:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_MOD:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_AOD_DOCKED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_AOD_PAUSING:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_AOD_PAUSED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->FINISH:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_PULSE_DONE:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_PULSING:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_a
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_REQUEST_PULSE:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_b
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_AOD:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->INITIALIZED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    goto :goto_0

    :pswitch_f
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->UNINITIALIZED:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static statusBarStateIntToObject(I)Lcom/android/systemui/keyguard/shared/model/StatusBarState;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->SHADE_LOCKED:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid StatusBarState value: "

    invoke-static {p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->KEYGUARD:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->SHADE:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    :goto_0
    return-object p0
.end method
