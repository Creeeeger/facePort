.class public final Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl$mediaDataListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl$mediaDataListener$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl$mediaDataListener$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;

    invoke-virtual {p0, p3}, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;->updateMediaModel(Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl$mediaDataListener$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;->updateMediaModel(Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    return-void
.end method
