.class public Lcom/android/settings/bluetooth/QrCodeScanModeActivity;
.super Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/QrCodeScanModeActivity;->onCreate$com$android$settings$bluetooth$QrCodeScanModeBaseActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreate$com$android$settings$bluetooth$QrCodeScanModeBaseActivity(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f150499

    goto :goto_0

    :cond_0
    const v0, 0x7f15049a

    :goto_0
    sget-object v1, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/setupdesign/util/ThemeResolver;

    const v3, 0x7f150493

    invoke-direct {v1, v3, v2}, Lcom/google/android/setupdesign/util/ThemeResolver;-><init>(IZ)V

    sput-object v1, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    :cond_1
    sget-object v1, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    iget v1, v1, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    new-instance v1, Lcom/google/android/setupdesign/util/ThemeResolver;

    invoke-direct {v1, v0, v2}, Lcom/google/android/setupdesign/util/ThemeResolver;-><init>(IZ)V

    const-string v0, "setupwizard.theme"

    const-string v3, "SudThemeGlifV3_DayNight"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const v0, 0x7f0d0567

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v1, "handleIntent(), action = "

    const-string v2, "QrCodeScanModeActivity"

    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    const-string v1, "android.settings.BLUETOOTH_LE_AUDIO_QR_CODE_SCANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "Launch with an invalid action"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    const-string p0, "intent is null, can not get bluetooth information from intent."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v0, "showQrCodeScannerFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth_device_sink"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "bluetooth_sink_is_group"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string p1, "get extra from intent"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const-string v0, "qr_code_scanner_fragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    if-nez p1, :cond_6

    new-instance p1, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-direct {p1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;-><init>()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p0, 0x7f0a06aa

    invoke-virtual {v2, p0, p1, v0}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    :cond_8
    :goto_2
    return-void
.end method
