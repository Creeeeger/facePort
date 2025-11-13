.class public final Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;
.super Lcom/samsung/android/settings/bixby/target/actions/Action;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/actions/Action;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method


# virtual methods
.method public final doDisableAction()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "value"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->doSetAction()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->doGotoAction()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doGetAction()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doGotoAction()Landroid/os/Bundle;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startWifiSettings, target:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettingsAction"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "wifiQrcode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "com.android.settings"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "getCurrentNetwork is not valid"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "disconnected"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const-string v5, "fail"

    if-nez v0, :cond_1

    const-string/jumbo p0, "wifiInfo is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    iget v8, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v8, :cond_2

    goto :goto_0

    :cond_3
    move-object v7, v4

    :goto_0
    if-nez v7, :cond_4

    const-string/jumbo p0, "wifiConfiguration is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "com.android.settings.Settings$WifiQrCodeActivity"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const-string v0, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getTaskId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    :cond_6
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/bixby/target/actions/Action;->launchSettings(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string/jumbo p0, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "ActivityNotFoundException, Settings$WifiSettingsActivity"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "not_supported_device"

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doSetAction()Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setEnabled, value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettingsAction"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "success"

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "already_on"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "wifi_ap_wifi_sharing"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :catch_0
    const-string v0, "isWifiSharingEnabled, SettingNotFoundException"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "KeyguardIsLocked"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string p0, "disableWifiAp"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "already_off"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_7
    const-string p0, "fail"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doSupportAction()Landroid/os/Bundle;
    .locals 4

    const-string v0, "WifiSettingsAction"

    const-string v1, "doSupportAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const-string v2, "disconnected"

    if-nez v1, :cond_0

    const-string/jumbo p0, "wifiInfo is disabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "getCurrentNetwork is not valid"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo p0, "wifiInfo is not valid"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_qrcode"

    const-string v3, "hide"

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "is not SecurityType: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "not_supported_device"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_5
    const-string/jumbo p0, "success"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
