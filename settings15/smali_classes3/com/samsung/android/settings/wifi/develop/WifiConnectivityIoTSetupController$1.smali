.class public final Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_wifi_iot_setup_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "switch onStateChanged() - resultCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", user_enabled_value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    const-string v3, "Device is connected to 2.4GHz BSSID"

    const-string v4, ""

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_3
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    const-string v0, "Connected to Wi-FI7 AP"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :pswitch_4
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    const-string v0, "Connection Failed"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :pswitch_5
    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    const-string v0, "No Matching AP for IOT Setup"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :pswitch_6
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    const-string v0, "Wi-Fi is OFF"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :pswitch_7
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    const-string v0, "Wi-Fi is Disconnected"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->-$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
