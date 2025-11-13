.class public final Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForClickListener$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForClickListener$1$1;->this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForClickListener$1$1;->this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->forceToggleBar()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tap"

    const-string v0, "QUICK_PANEL_LAYOUT"

    const-string v1, "QPPE1036"

    const-string v2, ""

    invoke-static {p0, v1, v2, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
