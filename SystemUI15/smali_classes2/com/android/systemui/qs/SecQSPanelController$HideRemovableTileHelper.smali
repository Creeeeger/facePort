.class public final Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSPanelController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/SecQSPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;->this$0:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSPanelController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;-><init>(Lcom/android/systemui/qs/SecQSPanelController;)V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TILE_HIDE_FROM_BAR:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;->this$0:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    :cond_1
    return-void
.end method
