.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDatalimitReachedpopup(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1670
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p1

    .line 1671
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    cmpg-double p2, v0, v2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 1672
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Settings Global data limit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "You can\u00e2\u20ac\u2122t set less than the amount of data you used. Please enter again."

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1674
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$mupdateMHSSwitch(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    goto :goto_0

    .line 1676
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings Global data limit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInKB()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {p2, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    .line 1678
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$mstartProvisioningIfNecessary(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    .line 1680
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "showhotspotdialoglimit"

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$mputBooleanSharedPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
