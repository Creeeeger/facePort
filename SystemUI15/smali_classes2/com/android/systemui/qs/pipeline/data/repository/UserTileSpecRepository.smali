.class public final Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion;


# instance fields
.field public _tiles:Lkotlinx/coroutines/flow/StateFlow;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final changeEvents:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final defaultTilesRepository:Lcom/android/systemui/qs/pipeline/data/repository/DefaultTilesRepository;

.field public final logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->Companion:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/qs/pipeline/data/repository/DefaultTilesRepository;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->userId:I

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->defaultTilesRepository:Lcom/android/systemui/qs/pipeline/data/repository/DefaultTilesRepository;

    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    iput-object p5, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 p1, 0x0

    const/16 p2, 0xa

    const/4 p3, 0x0

    const/4 p4, 0x5

    invoke-static {p1, p2, p3, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->changeEvents:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method

.method public static final access$storeTiles(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    instance-of v2, v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$toStore$2;->INSTANCE:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$toStore$2;

    const/4 v3, 0x0

    const/16 v5, 0x1e

    const-string v1, ","

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final loadTilesFromSettings(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;

    iget v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$2;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;ILkotlin/coroutines/Continuation;)V

    sget-object p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->Companion:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion;

    iput-object p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettings$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/pipeline/data/repository/TilesSettingConverter;->INSTANCE:Lcom/android/systemui/qs/pipeline/data/repository/TilesSettingConverter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/qs/pipeline/data/repository/TilesSettingConverter;->toTilesList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadTilesFromSettingsAndParse(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;

    iget v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->I$0:I

    iget-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->I$0:I

    iput v3, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$loadTilesFromSettingsAndParse$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->loadTilesFromSettings(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    if-eqz v0, :cond_4

    const/4 p0, 0x0

    invoke-virtual {v1, p2, p0, p1}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->logParsedTiles(Ljava/util/List;ZI)V

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->defaultTilesRepository:Lcom/android/systemui/qs/pipeline/data/repository/DefaultTilesRepository;

    check-cast p0, Lcom/android/systemui/qs/pipeline/data/repository/DefaultTilesQSHostRepository;

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/DefaultTilesQSHostRepository;->resources:Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/android/systemui/qs/QSHost;->getDefaultSpecs(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    sget-object v4, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v1, p2, v3, p1}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->logParsedTiles(Ljava/util/List;ZI)V

    :goto_4
    return-object p2
.end method

.method public final tiles(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;

    iget v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    iget-object v0, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    iget-object v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    iget-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->_tiles:Lkotlinx/coroutines/flow/StateFlow;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->changeEvents:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->label:I

    iget v2, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->userId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->loadTilesFromSettingsAndParse(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    move-object p0, p1

    move-object p1, v2

    move-object v2, v5

    :goto_1
    new-instance v6, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;

    invoke-direct {v6, v5, v3}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Lkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;

    invoke-direct {v7, p1, p0, v6}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object p0, v5, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v7, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    iput-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$1;->label:I

    iget-object p1, v5, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object p0, v2

    move-object v0, v5

    :goto_2
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$startFlowCollections$1;

    invoke-direct {v1, p1, v0, v3}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$startFlowCollections$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Lkotlin/coroutines/Continuation;)V

    iget-object v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v5, v2, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->_tiles:Lkotlinx/coroutines/flow/StateFlow;

    move-object p0, v0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->_tiles:Lkotlinx/coroutines/flow/StateFlow;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move-object v3, p0

    :goto_3
    return-object v3
.end method
