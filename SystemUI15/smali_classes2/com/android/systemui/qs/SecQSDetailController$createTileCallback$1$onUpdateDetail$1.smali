.class public final Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onUpdateDetail$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onUpdateDetail$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onUpdateDetail$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onUpdateDetail$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onUpdateDetail$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/SecQSDetailController;->access$handleUpdatingDetail(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method
