.class public Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "WifiSettingsAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mTaskId:Ljava/lang/Integer;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    const-string v0, "WifiSettingsAction"

    .line 37
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->TAG:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mTaskId:Ljava/lang/Integer;

    const-string p2, "wifi"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p2, "sem_wifi"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private isWifiSharingEnabled()Z
    .locals 2

    const/4 v0, 0x0

    .line 152
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wifi_ap_wifi_sharing"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    const-string p0, "WifiSettingsAction"

    const-string v1, "isWifiSharingEnabled, SettingNotFoundException"

    .line 154
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public doDisableAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string p1, "false"

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->doSetAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "result"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    .line 97
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGetAction()Landroid/os/Bundle;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const-string p1, "WifiSettingsAction"

    const-string v0, "startWifiSettings"

    .line 122
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mTaskId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 130
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/bixby/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ActivityNotFoundException, Settings$WifiSettingsActivity"

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "not_supported_device"

    .line 146
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettingsAction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "success"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "already_on"

    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->isWifiSharingEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string p1, "success_wifi_on_after_mhs_off"

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 74
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "false"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 79
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "already_off"

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 85
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_5
    const-string p1, "fail"

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
