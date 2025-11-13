.class public final Lcom/android/systemui/qs/QSHostAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSHost;


# instance fields
.field public final interactor:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;

.field public final qsTileHost:Lcom/android/systemui/qs/QSTileHost;

.field public final tileServiceRequestControllerBuilder:Lcom/android/systemui/qs/external/TileServiceRequestController$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/QSHostAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSHostAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;Landroid/content/Context;Lcom/android/systemui/qs/external/TileServiceRequestController$Builder;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p4, p0, Lcom/android/systemui/qs/QSHostAdapter;->tileServiceRequestControllerBuilder:Lcom/android/systemui/qs/external/TileServiceRequestController$Builder;

    invoke-static {}, Lcom/android/systemui/Flags;->qsNewPipeline()V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p2, Lcom/android/systemui/qs/QSHostAdapter$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/qs/QSHostAdapter$1;-><init>(Lcom/android/systemui/qs/QSHostAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p5, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    const-string p0, "QSTileHost"

    invoke-virtual {p7, p0, p1}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    return-void
.end method

.method public final addTile(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSHostAdapter;->addTile(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public final addTile(Landroid/content/ComponentName;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public final changeTilesByUser(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final getBarTilesByType(II)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->getBarTilesByType(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    return-object p0
.end method

.method public final getSpecs()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getTiles()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getUserContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    iget p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    return p0
.end method

.method public final indexOf(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHostAdapter;->getSpecs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isAvailableCustomTile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isAvailableForSearch(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->isAvailableForSearch(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isBarTile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isBarTile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isBrightnessVolumeBarTile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isBrightnessVolumeBarTile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isLargeBarTile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isLargeBarTile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isNoBgLargeTile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isNoBgLargeTile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isUnsupportedTile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->isUnsupportedTile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    return-void
.end method

.method public final removeTile(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Ljava/lang/String;)V

    return-void
.end method

.method public final removeTileByUser(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTileByUser(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final removeTiles(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public final sendTileStatusLog(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->sendTileStatusLog(ILjava/lang/String;)V

    return-void
.end method

.method public final shouldBeHiddenByKnox(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final shouldUnavailableByKnox(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHostAdapter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->shouldUnavailableByKnox(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
