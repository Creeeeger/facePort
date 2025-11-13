.class public Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerOffLockOptionFragment.java"


# instance fields
.field private mAlwaysUnlock:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mDontRequireUnlock:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mOnlyRequireLockscreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getPowerOffLockType()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_off_lock_option"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initPowerOffLockOption(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->mOnlyRequireLockscreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->mAlwaysUnlock:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->mDontRequireUnlock:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private setPowerOffLockType(I)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_off_lock_option"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updatePrefState(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 90
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    move p1, v3

    goto :goto_3

    :sswitch_0
    const-string v1, "always_require_unlock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    goto :goto_3

    :sswitch_1
    const-string v1, "only_require_lockscreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v4

    goto :goto_3

    :sswitch_2
    const-string v1, "dont_require_unlock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_3
    packed-switch p1, :pswitch_data_0

    move v0, v3

    goto :goto_4

    :pswitch_0
    move v0, v4

    goto :goto_4

    :pswitch_1
    move v0, v2

    .line 118
    :goto_4
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->setPowerOffLockType(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7281fa34 -> :sswitch_2
        -0x5b00841c -> :sswitch_1
        0x251f0b8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x11fa

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Lcom/android/settings/R$xml;->sec_power_off_lock_type:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "always_require_unlock"

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->mAlwaysUnlock:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string p1, "only_require_lockscreen"

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->mOnlyRequireLockscreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string p1, "dont_require_unlock"

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->mDontRequireUnlock:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->getPowerOffLockType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->initPowerOffLockOption(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerOffLockOptionFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/PowerOffLockOptionFragment;->updatePrefState(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    const/4 p0, 0x1

    return p0

    .line 81
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
