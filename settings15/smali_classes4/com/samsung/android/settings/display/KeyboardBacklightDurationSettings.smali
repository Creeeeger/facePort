.class public Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDurationTitle:[Ljava/lang/String;

.field public mDurationValues:[Ljava/lang/String;

.field public mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1701b4

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    const-string p1, "keyboard_backlight_duration_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    iget-object p1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300f9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300f8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationTitle:[Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "key_backlight_timeout"

    const/16 v1, 0xbb8

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    new-instance v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationTitle:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput-object p0, v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    iget-object v3, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v3, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0853

    invoke-direct {v3, v5, v6}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mDurationValues:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v4

    if-eq v1, v5, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_1
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_backlight_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/KeyboardBacklightDurationSettings;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v2, :cond_0

    move-object p0, v1

    check-cast p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

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
