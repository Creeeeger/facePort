.class public final Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings.VI"

    const-string/jumbo v1, "show refresh UI. force start scan manually"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v1, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget v1, v1, Lcom/android/wifitrackerlib/ScanResultUpdater;->mFilteredNetworkCount:I

    int-to-long v1, v1

    const-string v3, "0103"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->semForceScan()V

    :cond_0
    return-void
.end method
