.class public final Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final iconAndNameCustomRepository:Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;

.field public final qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

.field public final stockTilesRepository:Lcom/android/systemui/qs/panels/data/repository/StockTilesRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/data/repository/StockTilesRepository;Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;->stockTilesRepository:Lcom/android/systemui/qs/panels/data/repository/StockTilesRepository;

    iput-object p2, p0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;->qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

    iput-object p3, p0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;->iconAndNameCustomRepository:Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;

    return-void
.end method


# virtual methods
.method public final getTilesToEdit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;

    iget v1, v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;-><init>(Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;->stockTilesRepository:Lcom/android/systemui/qs/panels/data/repository/StockTilesRepository;

    iget-object p1, p1, Lcom/android/systemui/qs/panels/data/repository/StockTilesRepository;->stockTiles:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v4}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;->qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

    check-cast v6, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v7

    instance-of v8, v7, Lcom/android/systemui/qs/pipeline/shared/TileSpec$PlatformTileSpec;

    if-eqz v8, :cond_3

    iget-object v7, v6, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;->configs:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    :cond_3
    instance-of v5, v7, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    instance-of v5, v7, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;->getConfig(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    new-instance v8, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->uiConfig:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;

    invoke-interface {v5}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;->getIconRes()I

    move-result v9

    new-instance v10, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-interface {v5}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;->getLabelRes()I

    move-result v11

    invoke-direct {v10, v11}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v9, Lcom/android/systemui/common/shared/model/Text$Resource;

    invoke-interface {v5}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;->getLabelRes()I

    move-result v5

    invoke-direct {v9, v5}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    invoke-direct {v6, v4, v8, v9, v7}, Lcom/android/systemui/qs/panels/shared/model/EditTileData;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/common/shared/model/Text;)V

    goto :goto_3

    :cond_5
    new-instance v6, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    new-instance v5, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v8, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-virtual {v4}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const v9, 0x1080074

    invoke-direct {v5, v9, v8}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v8, Lcom/android/systemui/common/shared/model/Text$Loaded;

    invoke-virtual {v4}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v5, v8, v7}, Lcom/android/systemui/qs/panels/shared/model/EditTileData;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/common/shared/model/Text;)V

    :goto_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    iput-object v2, v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor$getTilesToEdit$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;->iconAndNameCustomRepository:Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;->getCustomTileData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object p0, v2

    :goto_4
    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
