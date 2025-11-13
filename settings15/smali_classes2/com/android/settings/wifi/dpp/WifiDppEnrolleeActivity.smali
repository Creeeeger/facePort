.class public Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;
.super Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;


# instance fields
.field protected mWifiRestrictionsCache:Lcom/android/settingslib/wifi/WifiRestrictionsCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63c

    return p0
.end method

.method public final handleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mWifiRestrictionsCache:Lcom/android/settingslib/wifi/WifiRestrictionsCache;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/WifiRestrictionsCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mWifiRestrictionsCache:Lcom/android/settingslib/wifi/WifiRestrictionsCache;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mWifiRestrictionsCache:Lcom/android/settingslib/wifi/WifiRestrictionsCache;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->isConfigWifiAllowed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "WifiDppEnrolleeActivity"

    if-nez v1, :cond_3

    const-string p1, "The user is not allowed to configure Wi-Fi."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "202017876"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :cond_3
    const-string v1, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "Launch with an invalid action"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->showQrCodeScannerFragment(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    return-void
.end method

.method public showQrCodeScannerFragment(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const-string v1, "qr_code_scanner_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p0, 0x7f0a06aa

    invoke-virtual {p1, p0, v0, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method
