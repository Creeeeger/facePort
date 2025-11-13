.class public final Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$startFlowCollections$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$startFlowCollections$1$1$1;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$startFlowCollections$1$1$1;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    iget v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->userId:I

    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->access$storeTiles(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
