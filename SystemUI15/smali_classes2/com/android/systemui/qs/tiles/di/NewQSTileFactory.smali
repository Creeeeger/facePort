.class public final Lcom/android/systemui/qs/tiles/di/NewQSTileFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# instance fields
.field public final adapterFactory:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Factory;

.field public final customTileViewModelFactory:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;

.field public final tileMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Factory;Ljava/util/Map;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;",
            "Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Factory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider;",
            ">;",
            "Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/di/NewQSTileFactory;->adapterFactory:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Factory;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/di/NewQSTileFactory;->tileMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/di/NewQSTileFactory;->customTileViewModelFactory:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;

    sget-object p0, Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;->Utils:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository$Utils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->qsNewTiles()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "New code path not supported when com.android.systemui.qs_new_tiles is disabled."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/di/NewQSTileFactory;->customTileViewModelFactory:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->create(Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;)Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$PlatformTileSpec;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/di/NewQSTileFactory;->tileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/StubQSTileViewModel;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v2

    goto :goto_1

    :cond_2
    instance-of p1, v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    if-eqz p1, :cond_4

    goto :goto_0

    :goto_1
    if-nez p1, :cond_3

    return-object v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/di/NewQSTileFactory;->adapterFactory:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Factory;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Factory;->create(Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
