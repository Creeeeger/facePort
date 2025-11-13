.class public final Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final statusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final uiBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/IStatusBarService;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->statusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iput-object p2, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->uiBgExecutor:Ljava/util/concurrent/Executor;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->_isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final onLockscreenOrShadeInteractive(IZ)V
    .locals 1

    new-instance v0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;-><init>(Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;ZI)V

    iget-object p0, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->uiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$executeServiceCallOnUiBg$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$executeServiceCallOnUiBg$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onLockscreenOrShadeNotInteractive()V
    .locals 2

    new-instance v0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeNotInteractive$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeNotInteractive$1;-><init>(Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;)V

    iget-object p0, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->uiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$executeServiceCallOnUiBg$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$executeServiceCallOnUiBg$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
