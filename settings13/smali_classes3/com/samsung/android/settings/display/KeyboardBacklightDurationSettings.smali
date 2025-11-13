.class public Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeyboardBacklightDurationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDurationTitle:[Ljava/lang/String;

.field private mDurationValues:[Ljava/lang/String;

.field private mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateCheckedState(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 74
    instance-of v2, v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v2, :cond_0

    .line 75
    move-object p0, v1

    check-cast p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 76
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method public initPreference()V
    .locals 8

    .line 36
    sget v0, Lcom/android/settings/R$xml;->sec_keyboard_backlight_duration_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    const-string v0, "keyboard_backlight_duration_list"

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->key_backlight_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->key_backlight_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationTitle:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_backlight_timeout"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 44
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 45
    new-instance v3, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v4, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationTitle:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v4, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v0, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 49
    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 50
    iget-object v4, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 51
    new-instance v4, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$layout;->sec_button_preference_divider:I

    invoke-direct {v4, v6, v7}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 52
    iget-object v6, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_1

    .line 53
    iget-object v3, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_1
    const/16 v4, 0xc

    .line 55
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->initPreference()V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_backlight_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->updateCheckedState(Ljava/lang/String;)V

    return-void
.end method
