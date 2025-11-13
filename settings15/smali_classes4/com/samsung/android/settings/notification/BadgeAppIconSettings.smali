.class public Lcom/samsung/android/settings/notification/BadgeAppIconSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

.field public mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x8ccd

    return p0
.end method

.method public final initUI$8()V
    .locals 3

    const v0, 0x7f170152

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "no_stroke"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/SecPreferenceCategory;->setEmptyHeight()V

    const-string v0, "app_icon_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "app_icon_dot"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "homescreen_noti_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->isSupportHomescreenNotiPreivew()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "notification_homescreen_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public final isSupportHomescreenNotiPreivew()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.knox.securefolder"

    const/16 v3, 0x80

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    const-string v0, "knox_folder_noti_preview"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string/jumbo v1, "notification_badging"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setEnableBadgeAppIcon : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotiUtils"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->isSupportHomescreenNotiPreivew()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p0, "off"

    const p1, 0x8ccd

    const p2, 0x8e38

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->initUI$8()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateUI$6()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->initUI$8()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "homescreen_noti_preview"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x8ccd

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "home_show_notification_enabled"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const p2, 0x8e39

    invoke-static {v2, p2, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_1
    const-string v1, "app_icon_number"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v4, 0x8e38

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    return v5

    :cond_2
    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    const-string/jumbo p0, "numberOn"

    invoke-static {v2, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return v3

    :cond_3
    const-string v1, "app_icon_dot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_4

    return v5

    :cond_4
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    const-string p0, "dotON"

    invoke-static {v2, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_5
    :goto_1
    return v3
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateUI$6()V

    return-void
.end method

.method public final updateBadgeTypePref(IZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/NotiUtils;->setBadgeAppIconType(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    if-ne p2, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/NotiUtils;->setBadgeAppIconType(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public final updateUI$6()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_badging"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnabledBadgeAppIcon : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotiUtils"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->isSupportHomescreenNotiPreivew()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/NotiUtils;->getBadgeAppIconType(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "home_show_notification_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->isSupportHomescreenNotiPreivew()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
