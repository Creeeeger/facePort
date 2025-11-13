.class public final Lcom/android/systemui/qs/tiles/DreamTile$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/DreamTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DreamTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DreamTile$1;->this$0:Lcom/android/systemui/qs/tiles/DreamTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DreamTile$1;->this$0:Lcom/android/systemui/qs/tiles/DreamTile;

    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/qs/tiles/DreamTile;->mIsDocked:Z

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DreamTile$1;->this$0:Lcom/android/systemui/qs/tiles/DreamTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
