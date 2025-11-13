.class public final Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "wifi_state"

    const/16 v0, 0xe

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onReceive:  Wi-Fi AP State: "

    invoke-static {p1, v0, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->-$$Nest$fgetmSwitchStateChangedAfterApEnabled(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Z

    move-result p2

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-eqz p2, :cond_0

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->-$$Nest$fputmSwitchStateChangedAfterApEnabled(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->-$$Nest$fgetmThisSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    if-eq p1, v1, :cond_2

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->-$$Nest$fgetmThisSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->access$100(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->-$$Nest$fgetmThisSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->-$$Nest$fgetmThisSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->access$000(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_1
    return-void
.end method
