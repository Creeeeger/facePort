.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showDatalimitReachedpopup(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .line 2158
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 2160
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p1

    .line 2161
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    cmpg-double p2, v0, v2

    const/4 v0, 0x0

    const-string v1, "WifiApWarning"

    if-gez p2, :cond_0

    .line 2162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Settings Global data limit : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$msendBroadcastEnablingHotspotCancel(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 2164
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "You can\'\t set less than the amount of data you used. Please enter again."

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2165
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_0

    .line 2167
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings Global data limit : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInKB()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {p2, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    .line 2169
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mstartProvisioningIfNecessary(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    :goto_0
    return-void
.end method
