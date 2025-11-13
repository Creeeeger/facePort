.class public final Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/data/repository/CommunalMediaRepository;


# instance fields
.field public final _mediaModel:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mediaModel:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl$mediaDataListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl$mediaDataListener$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->addListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V

    sget-object p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->Companion:Lcom/android/systemui/communal/data/model/CommunalMediaModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->INACTIVE:Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;->_mediaModel:Lkotlinx/coroutines/flow/StateFlowImpl;

    const-string v1, ""

    invoke-static {v0, p2, v1, p1}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;->mediaModel:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final updateMediaModel(Lcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;->_mediaModel:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    if-eqz p1, :cond_0

    iget-wide v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->createdTimestampMillis:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/4 p1, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/communal/data/model/CommunalMediaModel;-><init>(ZJ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->Companion:Lcom/android/systemui/communal/data/model/CommunalMediaModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->INACTIVE:Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
