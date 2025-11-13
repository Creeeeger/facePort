.class public Lcom/android/settings/development/DisableDevSettingsDialogFragment;
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

.method public static newInstance()Lcom/android/settings/development/DisableDevSettingsDialogFragment;
    .locals 1

    new-instance v0, Lcom/android/settings/development/DisableDevSettingsDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x637

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez v0, :cond_0

    instance-of v1, p1, Lcom/android/settings/applications/ProcessStatsSummary;

    if-nez v1, :cond_0

    const-string v1, "DisableDevSettingDlg"

    const-string v2, "getTargetFragment return unexpected type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-ne p2, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object p0, p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lcom/android/settings/applications/ProcessStatsSummary;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/android/settings/applications/ProcessStatsSummary;

    const-string v0, "force_enable_pss_profiling"

    if-ne p2, v3, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v1, p1, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->removeAppProfilerPssCollection()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p1, Lcom/android/settings/applications/ProcessStatsSummary;->mMemoryInfoPrefCategory:Landroidx/preference/PreferenceCategory;

    iget-object p1, p1, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p0, p1, Lcom/android/settings/applications/ProcessStatsSummary;->mForceEnablePssProfiling:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, p2

    :goto_1
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1406fe

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const v0, 0x7f1406ff

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f1406fd

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f1406fc

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
