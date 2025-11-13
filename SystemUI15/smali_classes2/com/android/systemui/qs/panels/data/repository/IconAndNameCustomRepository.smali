.class public final Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundContext:Lkotlin/coroutines/CoroutineContext;

.field public final installedTilesComponentRepository:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;Lcom/android/systemui/settings/UserTracker;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;->installedTilesComponentRepository:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;

    iput-object p2, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public final getCustomTileData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository$getCustomTileData$2;-><init>(Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/panels/data/repository/IconAndNameCustomRepository;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
