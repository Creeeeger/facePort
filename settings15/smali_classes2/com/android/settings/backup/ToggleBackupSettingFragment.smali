.class public Lcom/android/settings/backup/ToggleBackupSettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public mBackupManager:Landroid/app/backup/IBackupManager;

.field public mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

.field public mSummaryPreference:Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mWaitingForConfirmationDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x51

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v0, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "backup"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    new-instance v0, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    invoke-virtual {v0}, Landroidx/preference/Preference;->setPersistent()V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    const v1, 0x7f0d0be0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "user_full_data_backup_aware"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    const p2, 0x7f14104a

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    const p2, 0x7f140579

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result p1

    :goto_1
    iget-object p2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f14057a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public final setBackupEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ToggleBackupSettingFragment"

    const-string v0, "Error communicating with BackupManager"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
