.class public Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mContext:Landroid/content/Context;

.field public mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageName:Ljava/lang/String;

.field public mPolicyFlag:I

.field public mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

.field public mSwitchState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x10a77

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701e1

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_1
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSwitchOrientationPolicyFlag(IZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "policy : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / switch : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    const-string v1, "RotateAppDetailSettings"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->setPackageOrientation(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz p2, :cond_1

    const v0, 0x7f142e1f

    goto :goto_1

    :cond_1
    const v0, 0x7f142e1e

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-wide/16 p1, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 p1, 0x0

    :goto_2
    const v0, 0x10a77

    const v1, 0x10a78

    invoke-static {v0, v1, p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "pref_app_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05cd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPolicyFromLegacyFlag(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    const/16 v1, 0x1f

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    const-string p1, "main_switch_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-boolean v0, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_1

    const v0, 0x7f142e1f

    goto :goto_2

    :cond_1
    const v0, 0x7f142e1e

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const-string p1, "app_default"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string p1, "full_screen"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    const-string v0, " updateScreen"

    const-string v3, " / switch : "

    const-string v4, "policy : "

    const-string v5, "RotateAppDetailSettings"

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_3

    const/16 v1, 0x20

    if-eq p1, v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->updateRadioButtons$2(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->updateRadioButtons$2(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    :goto_3
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchBarPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->updateRadioButtons$2(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "full_screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "app_default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x1f

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    move p1, v0

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    goto :goto_1

    :cond_3
    const/16 p1, 0x20

    :goto_1
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    const/4 p1, 0x1

    :goto_2
    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->setPackageOrientation(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "policy : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " onRadioButtonClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotateAppDetailSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    int-to-long v0, p1

    const p1, 0x10a77

    const v2, 0x10a79

    invoke-static {p1, v2, v0, v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    sget-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    return-void
.end method

.method public final setPackageOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "policy : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPolicyFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mSwitchState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " setPackageOrientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotateAppDetailSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mPackageName:Ljava/lang/String;

    const-string v0, "com.android.samsung.utilityapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.android.samsung.batteryusage"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string p0, "com.samsung.android.statsd"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string p0, "com.samsung.android.appbooster"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string p0, "com.samsung.android.thermalguardian"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string p0, "com.samsung.android.memoryguardian"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string p0, "com.samsung.android.mediaguardian"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateRadioButtons$2(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mFullScreenType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppDetailSettings;->mAppDefaultType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
