.class public final Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $show:Z

.field public final synthetic $tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;ZLcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;->$show:Z

    iput-object p3, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;->$show:Z

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/SecQSDetailController;->showDetail(ZLcom/android/systemui/qs/SecQSPanelControllerBase$Record;)V

    return-void
.end method
