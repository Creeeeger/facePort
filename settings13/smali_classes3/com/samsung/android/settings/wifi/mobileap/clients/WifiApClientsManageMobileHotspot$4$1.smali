.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4$1;
.super Ljava/lang/Object;
.source "WifiApClientsManageMobileHotspot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 149
    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    .line 153
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Settings Global data limit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_ap_data_limit_less_than_amount_used:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings Global data limit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInKB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {p2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    .line 158
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->refreshConnectedPreferenceCategory()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/content/Context;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    .line 162
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->refreshConnectedPreferenceCategory()V

    :cond_2
    :goto_0
    return-void
.end method
