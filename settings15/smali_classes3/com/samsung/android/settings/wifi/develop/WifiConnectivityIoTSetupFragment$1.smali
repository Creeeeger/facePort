.class public final Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_wifi_iot_setup_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "switch onStateChanged() - resultCode: "

    const-string v5, ", value: "

    const-string v6, "WifiConnectivityIoTSetupFragment"

    invoke-static {v3, v5, v0, v2, v6}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    const-string v7, "\nBand:"

    const-string v8, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->getFrequencyBand(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v13, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-object v14, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->getFilteredScanResult(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-object v14, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v13, v13, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v15, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->getFrequencyBand(I)Ljava/lang/String;

    move-result-object v15

    const-string v4, "Matching BSSID\'s:"

    const-string v5, "\nChannel:"

    invoke-static {v13, v4, v14, v5, v7}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v8

    goto :goto_1

    :cond_2
    move-object v4, v8

    move-object v9, v4

    move-object v10, v9

    move-object v12, v10

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    const-string v5, "onStateChanged() - connectedSsid: "

    const-string v13, ", connectedBSSID: "

    const-string v14, ", connectedFreq: "

    invoke-static {v5, v9, v13, v10, v14}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", isNoMLOLink: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", matchResult: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v4, v6}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "Switch is disabled due to below reasons:\n1. There is no available 2.4GHz BSSID on current network.\n2. Make sure your 2.4GHz and 5GHz AP is configured with same SSID, Security & Password.\nNOTE: After successful connection , please do Wi-Fi ON/OFF to disable this feature."

    const-string v3, "Device is connected to 2.4GHz BSSID"

    const-string v5, "\nBSSID:"

    const-string v6, "SSID:"

    packed-switch v0, :pswitch_data_0

    if-eqz v10, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-static {v6, v9, v5, v10, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    const-string v1, "Device is trying to connect to 2.4GHz BSSID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-static {v6, v9, v5, v10, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-static {v6, v9, v5, v10, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    if-eqz v10, :cond_4

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-static {v6, v9, v5, v10, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    if-eqz v10, :cond_5

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-static {v6, v9, v5, v10, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_4
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    if-eqz v10, :cond_6

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-static {v6, v9, v5, v10, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    const-string v1, "Please try below steps in case of connection failure to 2.4GHz BSSID: \n1. Turn Wi-Fi ON/OFF\n2. Connect to SSID which supports & operates on both 2.4 & 5GHz bands.\n3. Click on \"Connect to 2.4GHz for IOT setup\"\n4. For more details on connection failure refer to Connection History"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_5
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    if-eqz v10, :cond_7

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-static {v6, v9, v5, v10, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const-string v3, "No Matching BSSID\'s exist with Connected SSID"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_6
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    const-string v1, "Wi-Fi state is Disconnected \nPlease try Wi-Fi ON/OFF"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
