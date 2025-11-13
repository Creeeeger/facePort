.class public final Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/core/StatusBarInitializer$OnStatusBarViewInitializedListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final _isTransientShown:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _originalStatusBarAttributes:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _statusBarBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallback:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$commandQueueCallback$1;

.field public final isInFullscreenMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isTransientShown:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

.field public final modifiedStatusBarAttributes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final statusBarAppearance:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final statusBarMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;ILcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;Lcom/android/systemui/statusbar/phone/ongoingcall/data/repository/OngoingCallRepository;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p4, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

    new-instance p3, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$commandQueueCallback$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$commandQueueCallback$1;-><init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;I)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->commandQueueCallback:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$commandQueueCallback$1;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->_isTransientShown:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->isTransientShown:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 p4, 0x0

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->_originalStatusBarAttributes:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BoundsPair;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/BoundsPair;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->_statusBarBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v2, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {v2, p1, v3, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->isInFullscreenMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;-><init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v4, v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v4, p1, v3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->modifiedStatusBarAttributes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p5, Lcom/android/systemui/statusbar/phone/ongoingcall/data/repository/OngoingCallRepository;->ongoingCallState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;-><init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3, p2, p5, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object p2

    invoke-static {p2, p1, v3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->statusBarAppearance:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p3, p2}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p2, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    invoke-static {p3, p1, v3, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->statusBarMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->_originalStatusBarAttributes:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->modifiedStatusBarAttributes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->statusBarMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "statusBarMode: "

    invoke-static {p2, p0, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final onStatusBarViewInitialized(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getBoundsProvider()Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$onStatusBarViewInitialized$listener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$onStatusBarViewInitialized$listener$1;-><init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->changeListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    iget-object p1, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$onStatusBarViewInitialized$listener$1;->this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->_statusBarBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
