.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;
.super Ljava/lang/Object;
.source "WifiApClientSetDataLimitPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 78
    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->access$000(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientMobileDataConsumedDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    .line 82
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Settings client data limit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", mac: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->access$100(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->wifi_ap_you_have_already_used_hotspot_data_today:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings data limit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " for mac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->access$200(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {p2, v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApClientMobileDataLimit(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 90
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Settings NO data limit : for mac: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->access$300(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApClientMobileDataLimit(Landroid/content/Context;Ljava/lang/String;J)V

    .line 95
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
