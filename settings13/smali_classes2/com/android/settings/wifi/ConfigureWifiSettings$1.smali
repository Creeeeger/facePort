.class Lcom/android/settings/wifi/ConfigureWifiSettings$1;
.super Ljava/lang/Object;
.source "ConfigureWifiSettings.java"

# interfaces
.implements Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/ConfigureWifiSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC"

    return-object p0
.end method

.method public onBind(Z)V
    .locals 4

    const-string v0, "ConfigureWifiSettings"

    if-eqz p1, :cond_2

    .line 96
    new-instance p1, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    invoke-direct {p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-$$Nest$fgetmStore(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-$$Nest$fgetmSamsungCloudRPCSetting(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->rpcSettingDescription(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget p1, p1, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    const/16 v0, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x1000

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 101
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-$$Nest$fgetmStore(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->setPersonalInfo(Z)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-$$Nest$fgetmStore(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->setConsentInfo(Z)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-$$Nest$mupdateListAdapter(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    goto :goto_2

    .line 105
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->hasSamsungCloudPackage(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Cloud package is not exist"

    .line 106
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
