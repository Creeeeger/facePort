.class public final Lcom/android/systemui/qs/tiles/MobileDataTile$2;
.super Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleValueChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "mobile data has changed value : "

    const-string v2, " is enabled : "

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
