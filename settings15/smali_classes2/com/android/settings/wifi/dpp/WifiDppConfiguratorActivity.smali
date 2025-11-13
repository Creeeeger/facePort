.class public Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;
.super Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
.implements Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;
.implements Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field public mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    return-void
.end method

.method public static isAddWifiConfigAllowed(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_0

    const-string v0, "no_add_wifi_config"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDppConfiguratorActivity"

    const-string v0, "The user is not allowed to add Wi-Fi configuration."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63b

    return p0
.end method

.method public final handleIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v2

    :goto_1
    const-string v3, "WifiDppConfiguratorActivity"

    if-eqz v2, :cond_3

    const-string p1, "Guest user is not allowed to configure Wi-Fi!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "User is a guest"

    const-string v1, "224772890"

    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x534e4554

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v4, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    goto :goto_3

    :sswitch_1
    const-string v4, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    goto :goto_3

    :sswitch_2
    const-string v4, "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    packed-switch v0, :pswitch_data_0

    const-string p1, "Launch with an invalid action"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showQrCodeScannerFragment()V

    goto :goto_5

    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-nez p1, :cond_a

    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_a
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const-string v0, "qr_code_generator_fragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    if-nez p1, :cond_b

    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    invoke-direct {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;-><init>()V

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p0, 0x7f0a06aa

    invoke-virtual {v2, p0, p1, v0}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_5

    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35cc7698 -> :sswitch_2
        0x158370ce -> :sswitch_1
        0x512412b9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "key_qr_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v2, Lcom/android/settings/wifi/dpp/WifiQrCode;->mUriParserResults:Landroid/net/wifi/UriParserResults;

    invoke-virtual {v0}, Landroid/net/wifi/UriParserResults;->getUriScheme()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "DPP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, v2

    :catch_0
    :cond_1
    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const-string v0, "key_wifi_security"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "key_wifi_ssid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "key_wifi_preshared_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "key_wifi_hidden_ssid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v0, "key_wifi_network_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "key_is_hotspot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    const-string v1, "key_qr_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    const-string v1, "key_wifi_security"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    const-string v1, "key_wifi_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    const-string v1, "key_wifi_preshared_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-boolean v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    const-string v1, "key_wifi_hidden_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mNetworkId:I

    const-string v1, "key_wifi_network_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-boolean v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mIsHotspot:Z

    const-string v1, "key_is_hotspot"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    return-void
.end method

.method public setWifiDppQrCode(Lcom/android/settings/wifi/dpp/WifiQrCode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/settings/wifi/dpp/WifiQrCode;->mUriParserResults:Landroid/net/wifi/UriParserResults;

    invoke-virtual {v1}, Landroid/net/wifi/UriParserResults;->getUriScheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const/4 p0, 0x1

    return p0
.end method

.method public setWifiNetworkConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 p0, 0x1

    return p0
.end method

.method public final showAddDeviceFragment(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const-string v1, "add_device_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;-><init>()V

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p0, 0x7f0a06aa

    invoke-virtual {v2, p0, v0, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method public final showChooseSavedWifiNetworkFragment(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const-string v1, "choose_saved_wifi_network_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;-><init>()V

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p0, 0x7f0a06aa

    invoke-virtual {v2, p0, v0, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method public showQrCodeScannerFragment()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const-string v1, "qr_code_scanner_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>()V

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p0, 0x7f0a06aa

    invoke-virtual {v2, p0, v0, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method
