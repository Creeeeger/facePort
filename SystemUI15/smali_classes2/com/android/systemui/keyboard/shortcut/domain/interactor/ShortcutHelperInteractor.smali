.class public final Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field public final displayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final repository:Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;

.field public final state:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final sysUiState:Lcom/android/systemui/model/SysUiState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/DisplayTracker;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->sysUiState:Lcom/android/systemui/model/SysUiState;

    iput-object p4, p0, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->repository:Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;

    iget-object p1, p4, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method


# virtual methods
.method public final setSysUiStateFlagEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor$setSysUiStateFlagEnabled$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor$setSysUiStateFlagEnabled$1;-><init>(Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;ZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
