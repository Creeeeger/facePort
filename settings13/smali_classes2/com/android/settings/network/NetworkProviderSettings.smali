.class public Lcom/android/settings/network/NetworkProviderSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "NetworkProviderSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
.implements Lcom/android/settings/network/InternetUpdater$InternetChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/NetworkProviderSettings$FirstWifiEntryPreference;,
        Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;,
        Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;,
        Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;
    }
.end annotation


# static fields
.field static final ADD_NETWORK_REQUEST:I = 0x2

.field static final MENU_ID_DISCONNECT:I = 0x3

.field static final MENU_ID_FORGET:I = 0x4

.field static final PREF_KEY_CONNECTED_ACCESS_POINTS:Ljava/lang/String; = "connected_access_point"

.field static final PREF_KEY_DATA_USAGE:Ljava/lang/String; = "non_carrier_data_usage"

.field static final PREF_KEY_FIRST_ACCESS_POINTS:Ljava/lang/String; = "first_access_points"

.field static final PREF_KEY_WIFI_TOGGLE:Ljava/lang/String; = "main_toggle_wifi"


# instance fields
.field mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

.field mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field mAirplaneModeMsgPreference:Landroidx/preference/Preference;

.field private mClickedConnect:Z

.field mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mConnectedEthernetNetworkController:Lcom/android/settings/network/ConnectedEthernetNetworkController;

.field mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog2;

.field private mDialogMode:I

.field private mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mDialogWifiEntryKey:Ljava/lang/String;

.field private mEnableNextOnConnection:Z

.field mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field protected mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

.field mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

.field mIsAdmin:Z

.field protected mIsRestricted:Z

.field private mIsViewLoading:Z

.field private mIsWifiEntryListStale:Z

.field private mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

.field private mOpenSsid:Ljava/lang/String;

.field final mRemoveLoadingRunnable:Ljava/lang/Runnable;

.field mResetInternetPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mSavedNetworksPreference:Landroidx/preference/Preference;

.field private mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field final mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

.field mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

.field mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mWifiSwitchPreferenceController:Lcom/android/settings/network/WifiSwitchPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$0kzYq02Bb7r6gJd_3CCuD3YRAbc(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onWifiEntriesChanged$6(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2oN3tDOL7FIDg98TJ4c27ZV_Cx4(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onContextItemSelected$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$3_7zXKK2wdP9OmcsOQoBAsG6DTg(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onInternetTypeChanged$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$HAz_ukqsaPJxqQDPtGH5CUEuGHI(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onWifiEntriesChanged$7(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N_z6ng-sP8VodHAfQ9CvIvFFGwM(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$X63haDWgFiBtn6dFKfvgzOSsYNw(Lcom/android/settings/network/NetworkProviderSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$setWifiScanMessage$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOMiUxXUojadHZg72LMmjM5Zjag(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onWifiEntriesChanged$8(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lMwL8anD-XaT7T1-lveagp8XMFw(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$updateWifiEntryPreferences$9(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$t-2JSzFKaCRfGRkfu2HTyOFjacg(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$updateWifiEntryPreferences$10(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0_xiYd384t1KG2UzWq6I8ScyAA(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$y1CPOiFQf_PZMHohRCotoSyvmLY(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yg4BDvEYwQvdN9JXcxP9e_mAYJk(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/WifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$updateWifiEntryPreferences$11(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/WifiEntryPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClickedConnect(Lcom/android/settings/network/NetworkProviderSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixConnectivity(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->fixConnectivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialog(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_config_wifi"

    .line 265
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsWifiEntryListStale:Z

    .line 192
    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    .line 215
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/NetworkProviderSettings;)Z
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/NetworkProviderSettings;)Z
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method private addConnectedEthernetNetworkController()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedEthernetNetworkController:Lcom/android/settings/network/ConnectedEthernetNetworkController;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/android/settings/network/ConnectedEthernetNetworkController;

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/ConnectedEthernetNetworkController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedEthernetNetworkController:Lcom/android/settings/network/ConnectedEthernetNetworkController;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedEthernetNetworkController:Lcom/android/settings/network/ConnectedEthernetNetworkController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ConnectedEthernetNetworkController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private addNetworkMobileProviderController()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/android/settings/network/NetworkMobileProviderController;

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "provider_model_mobile_network"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/NetworkMobileProviderController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/NetworkMobileProviderController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/NetworkMobileProviderController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private addPreferences()V
    .locals 4

    .line 317
    sget v0, Lcom/android/settings/R$xml;->network_provider_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "airplane_mode_message"

    .line 319
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeMsgPreference:Landroidx/preference/Preference;

    .line 320
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->updateAirplaneModeMsgPreference(Z)V

    const-string v0, "connected_access_point"

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "first_access_points"

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "access_points"

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "configure_network_settings"

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    const-string/jumbo v0, "saved_networks"

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 326
    new-instance v0, Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    const-string/jumbo v0, "non_carrier_data_usage"

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 330
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 329
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/DataUsagePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    const-string/jumbo v0, "resetting_your_internet"

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mResetInternetPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addNetworkMobileProviderController()V

    .line 336
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addConnectedEthernetNetworkController()V

    .line 337
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addWifiSwitchPreferenceController()V

    const-string/jumbo v0, "wifi_status_message_footer"

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    return-void
.end method

.method private addWifiSwitchPreferenceController()V
    .locals 3

    .line 365
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiSwitchPreferenceController:Lcom/android/settings/network/WifiSwitchPreferenceController;

    if-nez v0, :cond_1

    .line 367
    new-instance v0, Lcom/android/settings/network/WifiSwitchPreferenceController;

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/WifiSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiSwitchPreferenceController:Lcom/android/settings/network/WifiSwitchPreferenceController;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiSwitchPreferenceController:Lcom/android/settings/network/WifiSwitchPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/WifiSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private canForgetNetwork()Z
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 630
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 629
    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private fixConnectivity()V
    .locals 3

    .line 1434
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    if-nez v0, :cond_0

    .line 1435
    new-instance v0, Lcom/android/settings/network/InternetResetHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/InternetResetHelper;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    .line 1436
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mResetInternetPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/InternetResetHelper;->setResettingPreference(Landroidx/preference/Preference;)V

    .line 1437
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/InternetResetHelper;->setMobileNetworkController(Lcom/android/settings/network/NetworkMobileProviderController;)V

    .line 1438
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    const-string v1, "main_toggle_wifi"

    .line 1439
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 1438
    invoke-virtual {v0, v1}, Lcom/android/settings/network/InternetResetHelper;->setWifiTogglePreference(Landroidx/preference/Preference;)V

    .line 1440
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/InternetResetHelper;->addWifiNetworkPreference(Landroidx/preference/PreferenceCategory;)V

    .line 1441
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/InternetResetHelper;->addWifiNetworkPreference(Landroidx/preference/PreferenceCategory;)V

    .line 1442
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/InternetResetHelper;->addWifiNetworkPreference(Landroidx/preference/PreferenceCategory;)V

    .line 1444
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->restart()V

    return-void
.end method

.method private forget(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 1218
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x89

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p0, 0x0

    .line 1219
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    return-void
.end method

.method private getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;
    .locals 3

    .line 1102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "NetworkProviderSettings"

    const-string p1, "getSavedNetworkSettingsSummaryText shouldn\'t run if resource is not ready"

    .line 1103
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 1108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->wifi_saved_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 1109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1108
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 1111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->wifi_saved_passpoint_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 1113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1111
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr p1, p2

    .line 1116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->wifi_saved_all_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 1117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1116
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleAddNetworkSubmitEvent(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "wifi_config_key"

    .line 1145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 1147
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private hasWifiManager()Z
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 291
    :cond_1
    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method private isAdminUser()Z
    .locals 1

    .line 311
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 313
    :cond_0
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method private static isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    .line 1353
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1358
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1360
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1363
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 1

    .line 179
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method private isWifiWakeupEnabled()Z
    .locals 4

    .line 1122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1123
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1124
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1125
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1126
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isAutoWakeupEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1127
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "airplane_mode_on"

    .line 1128
    invoke-static {v0, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 1130
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    .line 187
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferences()V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onContextItemSelected$3()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->launchWifiDppConfiguratorActivity(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private synthetic lambda$onInternetTypeChanged$4()V
    .locals 0

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onWifiStateChanged()V

    return-void
.end method

.method private synthetic lambda$onWifiEntriesChanged$6(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 866
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onWifiEntriesChanged$7(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 867
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onWifiEntriesChanged$8(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    invoke-static {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$setWifiScanMessage$5(Landroid/view/View;)V
    .locals 0

    .line 840
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->launchWifiScanningFragment()V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$10(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    .line 949
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$11(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/WifiEntryPreference;)V
    .locals 0

    .line 987
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->openSubscriptionHelpPage(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$9(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 941
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 942
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    goto :goto_0

    .line 944
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkProviderSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private launchAddNetworkFragment()V
    .locals 2

    .line 1059
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->wifi_add_network:I

    .line 1060
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/AddNetworkFragment;

    .line 1061
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1062
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x2

    .line 1063
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchWifiDppConfiguratorActivity(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 6

    .line 695
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "NetworkProviderSettings"

    const-string p1, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    .line 699
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    const/16 v2, 0x6ae

    const/16 v3, 0x63b

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 707
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private launchWifiScanningFragment()V
    .locals 1

    .line 846
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/location/WifiScanningFragment;

    .line 847
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x2ea

    .line 848
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private onAddNetworkPressed()V
    .locals 0

    .line 1156
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->launchAddNetworkFragment()V

    return-void
.end method

.method private removeConnectedWifiEntryPreference()V
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1072
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private removeWifiEntryPreference()V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1077
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private restrictUi()V
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_empty_list_user_restricted:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 463
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method private showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 2

    .line 712
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 714
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 715
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 714
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 725
    :cond_1
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 726
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    .line 727
    iput p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogMode:I

    .line 729
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private updateAirplaneModeMsgPreference(Z)V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeMsgPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private updateWifiEntryPreferencesDelayed()V
    .locals 3

    .line 901
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 903
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 904
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 905
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 908
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    .line 909
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method addForgetMenuIfSuitable(Landroid/view/ContextMenu;)V
    .locals 2

    .line 623
    iget-boolean p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 624
    sget v0, Lcom/android/settings/R$string;->forget:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method addShareMenuIfSuitable(Landroid/view/ContextMenu;)V
    .locals 2

    .line 613
    iget-boolean p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    .line 614
    sget v1, Lcom/android/settings/R$string;->share:I

    invoke-interface {p1, v0, p0, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :cond_0
    const-string p0, "NetworkProviderSettings"

    const-string p1, "Don\'t add the Wi-Fi share menu because the user is not an admin."

    .line 617
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x534e4554

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "206986392"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 618
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "User is not an admin"

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method changeNextButtonState(Z)V
    .locals 1

    .line 1172
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 4

    .line 1224
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1225
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    const/16 v3, 0x87

    .line 1224
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 1229
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void
.end method

.method createConnectedWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/ConnectedWifiEntryPreference;
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {v0}, Lcom/android/settings/network/InternetUpdater;->getInternetType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1028
    new-instance v0, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0

    .line 1030
    :cond_0
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$FirstWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/android/settings/network/NetworkProviderSettings$FirstWifiEntryPreference;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method createLongPressWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/LongPressWifiEntryPreference;
    .locals 2

    .line 1055
    new-instance v0, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method getConnectedWifiPreferenceCategory()Landroidx/preference/PreferenceCategory;
    .locals 3

    .line 1014
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {v0}, Lcom/android/settings/network/InternetUpdater;->getInternetType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1017
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1022
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method getHelpIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 1161
    sget p0, Lcom/android/settings/R$string;->help_url_wifi:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method handleAddNetworkRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1140
    invoke-direct {p0, p2}, Lcom/android/settings/network/NetworkProviderSettings;->handleAddNetworkSubmitEvent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method isPhoneOnCall()Z
    .locals 1

    .line 1428
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1429
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 1337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1339
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_chosen_wifientry_key"

    .line 1338
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1341
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;

    .line 1342
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1343
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1344
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v0, 0x3

    .line 1345
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1346
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V
    .locals 4

    .line 1035
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    .line 1036
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "settings_wifi_details_datausage_header"

    .line 1038
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1040
    :cond_0
    sget v1, Lcom/android/settings/R$string;->pref_title_network_details:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1042
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1043
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "key_chosen_wifientry_key"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1046
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1048
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1049
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1050
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 375
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    .line 379
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    .line 380
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->getWifiPickerTracker()Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 382
    :cond_0
    new-instance v0, Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/network/InternetUpdater;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$InternetChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    .line 384
    new-instance v0, Lcom/android/settings/wifi/WifiConnectListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConnectListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 386
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$1;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 402
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$2;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    const/4 v0, 0x1

    .line 417
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_1

    const-string v0, "dialog_mode"

    .line 420
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogMode:I

    const-string/jumbo v0, "wifi_ap_key"

    .line 421
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    .line 426
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "wifi_enable_next_on_connect"

    .line 427
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mEnableNextOnConnection:Z

    const-string/jumbo v0, "wifi_start_connect_ssid"

    .line 429
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mOpenSsid:Ljava/lang/String;

    .line 433
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    if-eqz p1, :cond_3

    .line 434
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/NetworkMobileProviderController;->setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 508
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 510
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 513
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/network/NetworkProviderSettings;->handleAddNetworkRequest(ILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_3

    if-ne p2, v0, :cond_2

    .line 517
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz p0, :cond_2

    .line 518
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    if-ne p2, v0, :cond_4

    const-string/jumbo p1, "network_config_key"

    .line 524
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_4

    .line 527
    new-instance p2, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 528
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener-IA;)V

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4
    return-void

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    return-void

    .line 538
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 541
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_7

    .line 543
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addPreferences()V

    :cond_7
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 1454
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->updateAirplaneModeMsgPreference(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 440
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 635
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 653
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 646
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return v2

    .line 650
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return v2

    .line 643
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return v2

    .line 640
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    return v2

    .line 637
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 297
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 298
    new-instance p1, Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 304
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addPreferences()V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    .line 307
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isAdminUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 549
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    .line 550
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .line 571
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 572
    instance-of p3, p2, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-nez p3, :cond_0

    return-void

    .line 578
    :cond_0
    check-cast p2, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p2}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 580
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 581
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 582
    sget p2, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-interface {p1, v0, p3, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 585
    :cond_1
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 586
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->addShareMenuIfSuitable(Landroid/view/ContextMenu;)V

    :cond_2
    const/4 p2, 0x3

    const/4 v1, 0x1

    .line 589
    sget v2, Lcom/android/settings/R$string;->wifi_disconnect_button_text:I

    invoke-interface {p1, v0, p2, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 595
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->canForgetNetwork()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->addForgetMenuIfSuitable(Landroid/view/ContextMenu;)V

    .line 599
    :cond_4
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 601
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 605
    :cond_5
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eq p0, p3, :cond_6

    const/4 p0, 0x5

    .line 607
    sget p2, Lcom/android/settings/R$string;->wifi_modify:I

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_6
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 741
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 738
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1386
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 1387
    sget v1, Lcom/android/settings/R$string;->fix_connectivity:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1388
    sget v1, Lcom/android/settings/R$drawable;->ic_repair_24dp:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 1389
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1391
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    .line 503
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 747
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 748
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 754
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 755
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 756
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    .line 1179
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public onInternetTypeChanged(I)V
    .locals 0

    .line 771
    new-instance p1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isPhoneOnCall()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->showResetInternetDialog()V

    return v0

    .line 1401
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->fixConnectivity()V

    return v0

    .line 1404
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 660
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 661
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 662
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 665
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-eqz v0, :cond_1

    .line 666
    check-cast p1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onSelectedWifiPreferenceClick(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    if-ne p1, v0, :cond_2

    .line 668
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onAddNetworkPressed()V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 670
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 468
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 471
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 473
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 478
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->restrictUi()V

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 484
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 561
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    .line 564
    iget v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogMode:I

    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    const-string/jumbo v0, "wifi_ap_key"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V
    .locals 0

    .line 1213
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    .line 1212
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method onSelectedWifiPreferenceClick(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V
    .locals 2

    .line 677
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldEditBeforeConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void

    .line 684
    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 685
    invoke-virtual {p0, v0, p1, p1}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    return-void

    .line 689
    :cond_1
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 446
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 447
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    if-eqz v0, :cond_1

    .line 448
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 450
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-eqz v0, :cond_2

    .line 453
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->restrictUi()V

    return-void

    .line 456
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsWifiEntryListStale:Z

    .line 491
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 494
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    .line 495
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 4

    .line 1184
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1186
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getMode()I

    move-result v0

    .line 1187
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1188
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    if-nez v1, :cond_1

    .line 1192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_save_message:I

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1193
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1195
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_5

    .line 1198
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-nez v1, :cond_4

    .line 1200
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    .line 1203
    :cond_4
    new-instance p1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1204
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener-IA;)V

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 270
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->progress_header:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    const/4 p1, 0x0

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    .line 279
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 280
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    .line 281
    iput-boolean p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    :cond_1
    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 2

    .line 854
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsWifiEntryListStale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 855
    iput-boolean v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsWifiEntryListStale:Z

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    .line 858
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferencesDelayed()V

    .line 860
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 860
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->changeNextButtonState(Z)V

    .line 864
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_2

    .line 865
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    .line 866
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;-><init>()V

    .line 867
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda11;-><init>()V

    .line 869
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 871
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 872
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 873
    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mOpenSsid:Ljava/lang/String;

    .line 874
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_2
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 4

    .line 781
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    .line 786
    invoke-static {}, Lcom/android/settings/network/NetworkProviderSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    const-string v2, "NetworkProviderSettings"

    if-eqz v1, :cond_1

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWifiStateChanged called with wifi state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p0, "onWifiStateChanged shouldn\'t run when fragment is finishing or destroyed"

    .line 791
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 797
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->setWifiScanMessage(Z)V

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    .line 802
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 803
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    .line 804
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 813
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->setWifiScanMessage(Z)V

    .line 814
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 815
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->setAdditionalSettingsSummaries()V

    .line 817
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    .line 818
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    goto :goto_0

    .line 808
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 809
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    :cond_7
    :goto_0
    return-void
.end method

.method openSubscriptionHelpPage(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 1369
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 1372
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1374
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity was not found for intent, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkProviderSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method setAdditionalSettingsSummaries()V
    .locals 4

    .line 1082
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    .line 1083
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isWifiWakeupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1084
    sget v1, Lcom/android/settings/R$string;->wifi_configure_settings_preference_summary_wakeup_on:I

    goto :goto_0

    .line 1085
    :cond_0
    sget v1, Lcom/android/settings/R$string;->wifi_configure_settings_preference_summary_wakeup_off:I

    .line 1082
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 1088
    :cond_1
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getNumSavedNetworks()I

    move-result v0

    .line 1089
    :goto_1
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    .line 1090
    :cond_2
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getNumSavedSubscriptions()I

    move-result v2

    :goto_2
    add-int v3, v0, v2

    if-lez v3, :cond_3

    .line 1092
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1093
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 1094
    invoke-direct {p0, v0, v2}, Lcom/android/settings/network/NetworkProviderSettings;->getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;

    move-result-object p0

    .line 1093
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1096
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showPinnedHeader(Z)V

    return-void
.end method

.method setWifiScanMessage(Z)V
    .locals 3

    .line 825
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 830
    :cond_0
    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 831
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {v1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 832
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 836
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 837
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_scan_notify_message:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 838
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_scan_change:I

    .line 839
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    .line 842
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 833
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method showResetInternetDialog()V
    .locals 2

    .line 1409
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1410
    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkProviderSettings$3;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    .line 1417
    sget p0, Lcom/android/settings/R$string;->reset_your_internet_title:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->reset_internet_text:I

    .line 1418
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->tts_reset:I

    .line 1419
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 1420
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1421
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 1422
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected updateWifiEntryPreferences()V
    .locals 8

    .line 915
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_b

    .line 920
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 927
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 928
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->getConnectedWifiPreferenceCategory()Landroidx/preference/PreferenceCategory;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 929
    :goto_0
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_4

    .line 932
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-eqz v4, :cond_3

    .line 933
    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v4

    if-eq v4, v0, :cond_5

    .line 934
    :cond_3
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 936
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->createConnectedWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    move-result-object v4

    .line 937
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v4}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->refresh()V

    .line 939
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 940
    new-instance v5, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v0, v4}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 948
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;)V

    .line 952
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    if-eqz v0, :cond_5

    .line 953
    iput-boolean v3, p0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    .line 954
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    .line 958
    :cond_4
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 962
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 963
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 964
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    move v4, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    .line 967
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 969
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-eqz v6, :cond_7

    .line 971
    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v7

    if-ne v7, v2, :cond_6

    add-int/lit8 v2, v4, 0x1

    .line 972
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    move v4, v2

    move v2, v1

    goto :goto_2

    .line 976
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 980
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/network/NetworkProviderSettings;->createLongPressWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    move-result-object v5

    .line 981
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v6, v4, 0x1

    .line 982
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 983
    invoke-virtual {v5}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->refresh()V

    .line 985
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 986
    new-instance v4, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v5, v4}, Lcom/android/settings/wifi/WifiEntryPreference;->setOnButtonClickListener(Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;)V

    .line 990
    :cond_8
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v2, v1

    move v4, v6

    goto :goto_2

    .line 992
    :cond_9
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    if-nez v2, :cond_a

    .line 995
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    .line 996
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 997
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 998
    sget v1, Lcom/android/settings/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    add-int/lit8 v1, v4, 0x1

    .line 999
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    const-string/jumbo v2, "wifi_empty_list"

    .line 1000
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1001
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v4, v1

    goto :goto_3

    .line 1004
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1007
    :goto_3
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1009
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->setAdditionalSettingsSummaries()V

    :cond_b
    :goto_4
    return-void
.end method
