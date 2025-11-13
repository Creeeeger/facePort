.class public final Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;


# instance fields
.field public final logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

.field public final resources:Landroid/content/res/Resources;

.field public final retailModeRepository:Lcom/android/systemui/retail/data/repository/RetailModeRepository;

.field public final retailModeTiles$delegate:Lkotlin/Lazy;

.field public final userTileRepositories:Landroid/util/SparseArray;

.field public final userTileSpecRepositoryFactory:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;Lcom/android/systemui/retail/data/repository/RetailModeRepository;Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->retailModeRepository:Lcom/android/systemui/retail/data/repository/RetailModeRepository;

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->userTileSpecRepositoryFactory:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Factory;

    new-instance p1, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$retailModeTiles$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$retailModeTiles$2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->retailModeTiles$delegate:Lkotlin/Lazy;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->userTileRepositories:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final tilesSpecs(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;

    iget v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->userTileRepositories:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->userTileSpecRepositoryFactory:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Factory;

    invoke-interface {p2, p1}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Factory;->create(I)Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->userTileRepositories:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->userTileRepositories:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    iput-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$1;->label:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->tiles(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->retailModeRepository:Lcom/android/systemui/retail/data/repository/RetailModeRepository;

    check-cast p1, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository;

    iget-object p1, p1, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository;->retailMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    return-object p0
.end method
