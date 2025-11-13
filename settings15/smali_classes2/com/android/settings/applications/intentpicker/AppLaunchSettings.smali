.class public Lcom/android/settings/applications/intentpicker/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mActivityCreated:Z

.field public mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

.field mContext:Landroid/content/Context;

.field mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

.field public mFromFragment:Ljava/lang/String;

.field public mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

.field public mOpenSupportedLinkPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f1422d8

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mFromFragment:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLinksNumber(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getLinksList(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_apps"

    return-object p0
.end method

.method public getVerifiedLinksTitle(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14037d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "count"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initOtherDefaultsSection()V
    .locals 7

    const-string v0, "app_launch_other_defaults"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isClearDefaultsEnabled hasBindAppWidgetPermission : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isClearDefaultsEnabled isAutoLaunchEnabled : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "app_launch_clear_defaults"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mActivityCreated:Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const p1, 0x7f1701b0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "fromFragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mFromFragment:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    const-string p1, "open_by_default_supported_links"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->initOtherDefaultsSection()V

    invoke-virtual {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->initOtherDefaultsSection()V

    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getDomainVerificationUserState(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isLinkHandlingAllowed() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->isLinkHandlingAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->isLinkHandlingAllowed()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    const-string p1, "open_by_default_top_intro"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const-string p1, "open_by_default_supported_links_setting"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mOpenSupportedLinkPreference:Landroidx/preference/Preference;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mOpenSupportedLinkPreference:Landroidx/preference/Preference;

    add-int/2addr p1, v3

    if-lez p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_4
    :goto_2
    const-string p1, "AppLaunchSettings"

    const-string v0, "onCreate: mAppEntry is null, please check the reason!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSwitchChanged: isChecked="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mOpenSupportedLinkPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    add-int/2addr p2, v2

    if-lez p2, :cond_1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object p2, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onSwitchChanged: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLaunchSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mOpenSupportedLinkPreference:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_0

    const/16 p1, 0x11

    const/16 v0, 0xf21

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v3, 0x7f140376

    invoke-virtual {v1, v3, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iput p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->updateUI(Landroidx/preference/PreferenceViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mActivityCreated:Z

    const-string p2, "AppLaunchSettings"

    if-eqz p1, :cond_0

    const-string p0, "onParentActivityCreated: ignoring duplicate call."

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mActivityCreated:Z

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    const-string p0, "onParentActivityCreated: PakcageInfo is null."

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f14037a

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    new-instance v0, Lcom/android/settings/widget/EntityHeaderController;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {p2, v1}, Lcom/android/settingslib/applications/AppUtils;->getIconWithoutCache(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p2, v0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    iput-boolean p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    const/4 p1, 0x0

    iput p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    iput p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method

.method public final refreshUi()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-object p0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 p0, 0x1

    return p0
.end method
