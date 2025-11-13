.class public final Lcom/samsung/android/settings/bixby/target/WifiP2pAction;
.super Lcom/samsung/android/settings/bixby/target/actions/Action;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mWifiManager:Landroid/net/wifi/WifiManager;


# virtual methods
.method public final doGotoAction()Landroid/os/Bundle;
    .locals 4

    const-string v0, "gotoWifiP2pSetting()"

    const-string v1, "WifiP2pAction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiP2pSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "EXTRA_TRIGGER_APP"

    const-string v3, "bixby"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/WifiP2pAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_0

    const-string p0, "mWifiManager is null, so hotspot checking is fail"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo p0, "success"

    goto :goto_2

    :cond_2
    :goto_1
    const-string/jumbo p0, "wifip2p_error_hotspot_enabled"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "ActivityNotFoundException :: Can not found WifiP2pSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "not_supported_device"

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doSupportAction()Landroid/os/Bundle;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v1, "isWifiDirectAllowed"

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "WifiP2pAction"

    const-string v0, "WiFi Direct is disabled due to Knox MDM Restriction Policy"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "restrict_by_knox"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "true"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
