.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

.field public final synthetic val$isNewConfigHasChanges:Z

.field public final synthetic val$newWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->val$newWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->val$isNewConfigHasChanges:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->val$newWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setSoftApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->val$isNewConfigHasChanges:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$msendConfigChangedBroadcastToSmartTethering(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)V

    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error InterruptedException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$fgetmWifiApSettings(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateWifiApConfiguration()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->resetSoftAp(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$fgetmWifiApSettings(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates$1()V

    return-void
.end method
