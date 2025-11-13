.class public Lcom/android/settings/network/telephony/SatelliteSetting;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public mConfigBundle:Landroid/os/PersistableBundle;

.field public mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

.field public mSubId:I

.field public mTelephonymanager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SatelliteSetting"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x817

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17012e

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sub_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mSubId:I

    iget-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mSubId:I

    const-string v1, "satellite_attach_supported_bool"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    const-string v2, "SatelliteSetting"

    if-eqz v0, :cond_0

    const-string p1, "SatelliteSettings: getDefaultConfig"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "SatelliteSettings: KEY_SATELLITE_ATTACH_SUPPORTED_BOOL is false, do nothing."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    iget-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v0, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/SatelliteManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    iget p2, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

    iget v2, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SatelliteManager;->getAttachRestrictionReasonsForCarrier(I)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, p2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SatelliteSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    const-string v2, "key_about_satellite_messaging"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f142f28

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "key_category_your_satellite_plan"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1408fb

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "key_your_satellite_plan"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v1, :cond_0

    const v3, 0x7f142f2f

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_0
    const v3, 0x7f142f30

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f142e06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x12

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/SatelliteSetting;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080375

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1010036

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-nez v1, :cond_1

    const-string v1, "key_category_how_it_works"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    :cond_1
    const-string p2, "satellite_setting_extra_info_footer_pref"

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/widget/FooterPreference;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141f9f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SatelliteSetting;->readSatelliteMoreInfoString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/SatelliteSetting;[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141856

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final readSatelliteMoreInfoString(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mConfigBundle:Landroid/os/PersistableBundle;

    const-string v1, "satellite_information_redirect_url_string"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mConfigBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SatelliteSetting"

    const-string v0, "SatelliteSettings: getDefaultConfig"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mConfigBundle:Landroid/os/PersistableBundle;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mConfigBundle:Landroid/os/PersistableBundle;

    const-string p1, ""

    invoke-virtual {p0, v1, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
