.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _shouldOpenSettings:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final accessibilityManager:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field public final appContext:Landroid/content/Context;

.field public delayedHideMenuJob:Lkotlinx/coroutines/Job;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final isLongPressHandlingEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isMenuVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lcom/android/internal/logging/UiEventLogger;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shouldOpenSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->logger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p8, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->accessibilityManager:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isFeatureEnabled()Z

    move-result p1

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$special$$inlined$map$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p1, p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isQuickSettingsVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$isLongPressHandlingEnabled$2;

    invoke-direct {p4, p5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$isLongPressHandlingEnabled$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p6, p3, p1, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p6, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p3, 0x3

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    sget-object p8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p6, p2, p4, p8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isLongPressHandlingEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->_isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$special$$inlined$flatMapLatest$1;

    invoke-direct {p6, p5, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;)V

    invoke-static {p4, p6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p4

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {p4, p2, p1, p8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isMenuVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->_shouldOpenSettings:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->shouldOpenSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xe

    move-object v0, p7

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$1;

    invoke-direct {p3, p0, p5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method


# virtual methods
.method public final hideMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/Job;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->_isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final isFeatureEnabled()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/flags/Flags;->LOCK_SCREEN_LONG_PRESS_ENABLED:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final scheduleAutomaticMenuHiding()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/Job;

    return-void
.end method
