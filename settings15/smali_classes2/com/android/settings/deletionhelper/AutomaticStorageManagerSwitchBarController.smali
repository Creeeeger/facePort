.class public final Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDaysToRetainPreference:Landroidx/preference/Preference;

.field public mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    const/16 v1, 0x1e9

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "automatic_storage_manager_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_1

    const-string p1, "ro.storage_manager.enabled"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    invoke-direct {p1}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;-><init>()V

    iget-object p0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p2, "ActivationWarningFragment"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
