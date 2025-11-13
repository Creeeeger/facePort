.class public Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4c4

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockDialogHost;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    if-ne p2, p1, :cond_1

    check-cast p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    invoke-virtual {p0, p2}, Lcom/android/settings/development/OemUnlockPreferenceController;->sendBroadcastToKMX(Z)V

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140a44

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f140a43

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const v0, 0x7f140df6

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockDialogHost;

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const-class p1, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method
