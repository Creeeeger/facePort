.class final Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;->this$0:Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;

    iget-object p0, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;->this$0:Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;-><init>(Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;->this$0:Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;

    iget-object v0, p1, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;->installedTilesComponentRepository:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;

    iget-object p1, p1, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;

    iget-object v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;->userMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;->getForUserLocked(I)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p0, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;->this$0:Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;

    iget-object p0, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    sget-object v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    invoke-static {v3}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v1, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    new-instance v6, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    new-instance v7, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v7}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v4, Lcom/android/systemui/common/shared/model/Text$Loaded;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/systemui/common/shared/model/Text$Loaded;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v2, v6, v4, v3}, Lcom/android/systemui/qs/panels/shared/model/EditTileData;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/common/shared/model/Text;)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
