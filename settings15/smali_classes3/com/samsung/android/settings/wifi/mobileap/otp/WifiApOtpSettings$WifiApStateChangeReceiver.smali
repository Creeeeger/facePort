.class public final Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->$r8$clinit:I

    const-string v0, "Broadcast Received: "

    const-string v1, "WifiApOtpSettings"

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "wifi_state"

    const/16 v0, 0xe

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "onReceive:  Wi-Fi AP State: "

    invoke-static {p1, p2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    iget-boolean v0, p2, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSwitchStateChangedAfterApEnabled:Z

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xd

    if-eqz v0, :cond_1

    if-ne p1, v4, :cond_0

    iput-boolean v3, p2, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSwitchStateChangedAfterApEnabled:Z

    iget-object p1, p2, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->updatePreferences$1()V

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->updatePreferences$1()V

    goto :goto_1

    :cond_1
    if-eq p1, v4, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p2, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p2, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->updatePreferences$1()V

    :cond_4
    :goto_1
    return-void
.end method
