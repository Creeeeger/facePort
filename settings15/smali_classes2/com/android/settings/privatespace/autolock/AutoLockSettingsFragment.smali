.class public Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAutoLockRadioOptions:[Ljava/lang/CharSequence;

.field public mAutoLockRadioValues:[Ljava/lang/CharSequence;

.field public mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    new-instance p0, Lcom/android/settingslib/widget/TopIntroPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/TopIntroPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f141d2f

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mAutoLockRadioValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mAutoLockRadioValues:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    new-instance v3, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment$AutoLockCandidateInfo;

    iget-object v4, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mAutoLockRadioOptions:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4}, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment$AutoLockCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "PSAutoLockSetting"

    const-string v1, "Autolock options do not exist."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->supportAutolockForPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "private_space_auto_lock"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7f8

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17011c

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mAutoLockRadioOptions:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030145

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mAutoLockRadioValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->supportAutolockForPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->isPrivateSpaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object p1, p0, Lcom/android/settings/privatespace/autolock/AutoLockSettingsFragment;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {p1, v4}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->setPrivateSpaceAutoLockSetting(I)V

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    const-string v5, "private_space_autolock_mode"

    const/16 v2, 0x774

    const/16 v3, 0x7f8

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PSAutoLockSetting"

    const-string v0, "could not persist screen timeout setting"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
