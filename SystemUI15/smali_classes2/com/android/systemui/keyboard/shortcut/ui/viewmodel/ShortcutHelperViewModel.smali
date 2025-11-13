.class public final Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final interactor:Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;

.field public final shouldShow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;->interactor:Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;

    iget-object p2, p2, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel$special$$inlined$map$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;->shouldShow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
