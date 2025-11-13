.class public final synthetic Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiApHotspotLabsController:Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotLabsController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotLabsController;->updateState(Landroidx/preference/Preference;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->updateState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSaveButtonEnabling()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->updateState()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->updateState(Landroidx/preference/Preference;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->updateState(Landroidx/preference/Preference;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->updateState()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->updateState(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->updateState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSaveButtonEnabling()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
