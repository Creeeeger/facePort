.class public Lcom/samsung/android/settings/bixby/target/HotspotAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "HotspotAction.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mTaskId:Ljava/lang/Integer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTetheringProvisionApp:Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mTaskId:Ljava/lang/Integer;

    .line 37
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mTetheringProvisionApp:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mTaskId:Ljava/lang/Integer;

    const-string p2, "wifi"

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p2, "sem_wifi"

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string p2, "phone"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p2, "user"

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "HotspotAction"

    const-string v1, "startHotspotProvisioningRequest"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wifiap_warning_dialog_type"

    .line 162
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mTaskId:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 165
    invoke-static {v0, p0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public doGetAction()Landroid/os/Bundle;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 137
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WifiApSettingsActivity"

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mTaskId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HotspotAction"

    const-string v0, "ActivityNotFoundException :: Can not found WifiApSettingsActivity"

    .line 149
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "not_supported_device"

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSetAction, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotspotAction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "fail"

    if-eqz p1, :cond_a

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v3, "hotspot_not_support_airplanemode"

    goto/16 :goto_2

    .line 84
    :cond_0
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v4, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v3, "hotspot_not_support_datasaver"

    goto/16 :goto_2

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    const-string v3, "hotspot_nosim"

    goto/16 :goto_2

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v3, "already_on"

    goto/16 :goto_2

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    const-string v3, "hotspot_already_wifion"

    goto/16 :goto_2

    .line 93
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v4, "success"

    const/4 v5, 0x1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v6, "TMO"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v6, "NEWCO"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 94
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    const-string p1, "doSetAction true, no need provisioning."

    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 98
    :cond_6
    invoke-static {v5}, Lcom/android/settings/Utils;->setBixbyMode(Z)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/bixby/target/HotspotAction;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    move-object v3, v4

    goto :goto_2

    .line 105
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isBixbyMode()Z

    move-result p1

    if-nez p1, :cond_8

    const-string v3, "hotspot_not_provision"

    goto :goto_2

    :cond_8
    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x78

    if-ge v0, v2, :cond_9

    const-wide/16 v5, 0x1f4

    .line 111
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    move v0, p1

    goto :goto_0

    :cond_9
    const-string p1, "Mobile Hotspot Time out"

    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 123
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_2

    :cond_b
    const-string v3, "already_off"

    .line 129
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doSetAction result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSupportAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 51
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "false"

    const-string v1, "HotspotAction"

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {p1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const-string v2, "persist.sys.tether_data_wifi"

    .line 56
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MHS is disabled due to Sprint Policy"

    .line 58
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v3, "isWifiTetheringEnabled"

    invoke-static {p1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MHS is disabled due to Knox MDM Restriction Policy"

    .line 64
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "true"

    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p1, "Tethering not supported"

    .line 52
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
