.class public Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RotateAppDetailSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPolicyFlag:I

.field private mState:I

.field private mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

.field private mSwitchState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private displayHeader(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "pref_app_header"

    .line 163
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 164
    sget v0, Lcom/android/settings/R$id;->entity_header_icon:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 165
    sget v1, Lcom/android/settings/R$id;->entity_header_title:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    sget v2, Lcom/android/settings/R$id;->entity_header_summary:I

    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 167
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 170
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 196
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const p0, 0x10a77

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 63
    sget p0, Lcom/android/settings/R$xml;->sec_rotate_app_detail_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "packageName"

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFrontDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->displayHeader(Landroidx/preference/PreferenceScreen;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mState:I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPolicyFromLegacyFlag(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    .line 93
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getOrientationSwitchState(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    const-string p1, "main_switch_preference"

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    .line 96
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const-string p1, "app_default"

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string p1, "full_screen"

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 104
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->updateRadioButtonScreen(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    .line 136
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    .line 137
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "full_screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "app_default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_2

    .line 139
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x1f

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    goto :goto_2

    .line 143
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    goto :goto_1

    :cond_3
    const/16 p1, 0x20

    :goto_1
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    const/4 v1, 0x1

    .line 147
    :goto_2
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->setPackageOrientation(I)V

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "policy : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / switch : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " onRadioButtonClicked"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RotateAppDetailSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->getMetricsCategory()I

    move-result p1

    const v0, 0x10a79

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    int-to-long v1, v1

    invoke-static {p1, v0, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFrontDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 154
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-static {p2, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSwitchOrientationPolicyFlag(ZI)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    .line 155
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getOrientationSwitchState(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "policy : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / switch : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RotateAppDetailSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->setPackageOrientation(I)V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz p2, :cond_0

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->getMetricsCategory()I

    move-result p1

    const v0, 0x10a78

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-wide/16 v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-static {p1, v0, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    return-void
.end method

.method public setPackageOrientation(I)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "policy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " setPackageOrientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotateAppDetailSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    const-string v0, "com.android.samsung.utilityapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.android.samsung.batteryusage"

    .line 182
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p0, "com.samsung.android.statsd"

    .line 183
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p0, "com.samsung.android.appbooster"

    .line 184
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p0, "com.samsung.android.thermalguardian"

    .line 185
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p0, "com.samsung.android.memoryguardian"

    .line 186
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p0, "com.samsung.android.mediaguardian"

    .line 187
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateRadioButtonScreen(I)V
    .locals 5

    const-string v0, " updateScreen"

    const-string v1, " / switch : "

    const-string v2, "policy : "

    const-string v3, "RotateAppDetailSettings"

    if-eqz p1, :cond_1

    const/4 v4, 0x7

    if-eq p1, v4, :cond_0

    const/16 v4, 0x1f

    if-eq p1, v4, :cond_1

    const/16 v4, 0x20

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    goto :goto_0

    .line 210
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    :goto_0
    return-void
.end method
