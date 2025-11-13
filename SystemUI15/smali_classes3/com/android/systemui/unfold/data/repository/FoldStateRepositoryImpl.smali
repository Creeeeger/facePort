.class public final Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/data/repository/FoldStateRepository;


# instance fields
.field public final foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl;->foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

    return-void
.end method


# virtual methods
.method public final getFoldUpdate()Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl$foldUpdate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl$foldUpdate$1;-><init>(Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final getHingeAngle()Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl$hingeAngle$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl$hingeAngle$1;-><init>(Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
