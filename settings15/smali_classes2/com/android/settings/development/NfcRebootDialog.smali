.class public Lcom/android/settings/development/NfcRebootDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x78c

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/NfcRebootDialog$OnNfcRebootDialogConfirmedListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-class v1, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    const-class v2, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    if-ne p2, v0, :cond_5

    check-cast p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    const-string v0, "filtered"

    const-string v2, "persist.nfc.snoop_log_mode"

    iget-boolean p2, p2, Lcom/android/settings/development/NfcSnoopLogPreferenceController;->mChanged:Z

    const-string v3, "Fail to set nfc system property: "

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "full"

    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_2
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NfcSnoopLog"

    invoke-static {p2, v0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    const-string p2, "false"

    const-string v0, "persist.nfc.vendor_debug_enabled"

    iget-boolean v1, p1, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;->mChanged:Z

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    :try_start_1
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p2, "true"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_4
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p2, p1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;->updateState(Landroidx/preference/Preference;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "NfcVerboseVendorLog"

    invoke-static {p1, p2, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    check-cast p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/development/NfcSnoopLogPreferenceController;->mChanged:Z

    invoke-virtual {p1, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;->mChanged:Z

    :goto_5
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1419d8

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const v0, 0x7f1419d9

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f1419d7

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
