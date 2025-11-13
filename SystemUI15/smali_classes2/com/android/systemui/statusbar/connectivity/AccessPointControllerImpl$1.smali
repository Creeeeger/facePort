.class public final Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;
.super Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(ILjava/lang/String;)V
    .locals 4

    const-string v0, "WifiApSmartCallback`s onStateChanged() : mhsMac -> "

    const-string v1, " state -> "

    const-string v2, "AccessPointController.AutoHotspot"

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointController$WifiApBleStateChangeCallback;

    check-cast v0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v2, :cond_0

    :cond_1
    const-string v2, "onWifiApBleStateChanged() : mhsMac -> "

    const-string v3, "WifiDetailAdapter.AutoHotspot"

    invoke-static {p1, v2, p2, v1, v3}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    if-gtz p1, :cond_0

    const-string v2, "onWifiApBleStateChanged() - Triggering updateHotspotItems for connection time out with mhsMac-> "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->updateHotspotItems()V

    goto :goto_0

    :cond_3
    return-void
.end method
