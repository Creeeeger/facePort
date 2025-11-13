.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, "WifiApConnectedDeviceUtils"

    const/4 v1, 0x0

    const v2, 0x7f0a0b36

    const-string v3, "8085"

    const-string v4, "TETH_014"

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    if-ne p1, v2, :cond_0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v4, v3, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mMacAddress:Ljava/lang/String;

    const-string/jumbo v2, "setWifiApClientDataPaused: true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    invoke-virtual {p1, v1, v6}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0a0ca9

    if-ne p1, v2, :cond_1

    const-wide/16 v7, 0x1

    invoke-static {v7, v8, v4, v3, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mMacAddress:Ljava/lang/String;

    const-string/jumbo v2, "setWifiApClientDataPaused: false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    invoke-virtual {p1, v1, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->refreshConnectedPreferences()V

    return v6
.end method
