.class public final Lcom/android/systemui/qs/SecAutoTileManager$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$3;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoTileManager"

    const-string v0, "DemoResetStarted"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$3;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object p1, p1, Lcom/android/systemui/qs/SecAutoTileManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$3;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->resetTileList()V

    :cond_0
    return-void
.end method
