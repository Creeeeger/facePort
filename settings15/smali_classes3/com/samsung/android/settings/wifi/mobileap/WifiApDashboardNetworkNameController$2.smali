.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "showDialog() - DIALOG_RESTORE_SSID\'s PositiveButton RESTORE clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "TETH_010"

    const-string p2, "8037"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->setContentProviderConfigToFramework()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$fgetmWifiApSettings(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates$1()V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "showDialog() - DIALOG_RESTORE_SSID\'s NegativeButton CANCEL clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "TETH_010"

    const-string p2, "8036"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->setCurrentConfigToContentProvider()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->-$$Nest$fgetmWifiApSettings(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
