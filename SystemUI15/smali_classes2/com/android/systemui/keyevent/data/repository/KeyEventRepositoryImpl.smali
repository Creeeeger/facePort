.class public final Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyevent/data/repository/KeyEventRepository;


# instance fields
.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final isPowerButtonDown:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v0, Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl$isPowerButtonDown$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl$isPowerButtonDown$1;-><init>(Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl;->isPowerButtonDown:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
