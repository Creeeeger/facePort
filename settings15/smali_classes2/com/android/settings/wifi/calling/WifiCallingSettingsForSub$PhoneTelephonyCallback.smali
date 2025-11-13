.class public final Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 7

    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_calling_switch_bar"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-boolean v3, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    iget v5, v4, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    iget v6, v5, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isAllowUserControl()Z

    move-result v5

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    :cond_5
    move v3, v2

    move v4, v3

    :goto_5
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    iget v0, v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "editable_wfc_mode_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "editable_wfc_roaming_mode_bool"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_6

    :cond_6
    move v0, v1

    move p1, v2

    goto :goto_6

    :cond_7
    move p1, v2

    move v0, p1

    :goto_6
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "wifi_calling_mode"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "wifi_calling_roaming_mode"

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    iget p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_9

    :goto_7
    move p0, v2

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    iget-boolean p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mOverrideWfcRoamingModeWhileUsingNtn:Z

    :goto_8
    if-nez p0, :cond_b

    goto :goto_9

    :cond_b
    move v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_c
    return-void
.end method
