.class public Lcom/samsung/android/settings/notification/BadgeAppIconSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BadgeAppIconSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private final POS_BADGE_APP_ICON_TYPE_DOT:I

.field private final POS_BADGE_APP_ICON_TYPE_NO_BADGES:I

.field private final POS_BADGE_APP_ICON_TYPE_NUMBER:I

.field private mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mContext:Landroid/content/Context;

.field private mCurrent_reusable_type_pos:I

.field private mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

.field private mNoStrokeCategory:Landroidx/preference/SecPreferenceCategory;

.field private mReusableBadgePreviews:[Landroid/graphics/Bitmap;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    new-instance v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->POS_BADGE_APP_ICON_TYPE_NUMBER:I

    const/4 v1, 0x1

    .line 122
    iput v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->POS_BADGE_APP_ICON_TYPE_DOT:I

    const/4 v1, 0x2

    .line 123
    iput v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->POS_BADGE_APP_ICON_TYPE_NO_BADGES:I

    .line 124
    iput v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mCurrent_reusable_type_pos:I

    return-void
.end method

.method private initUI()V
    .locals 3

    .line 175
    sget v0, Lcom/android/settings/R$xml;->sec_badge_app_icon_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "no_stroke"

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mNoStrokeCategory:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreferenceCategory;->setEmptyHeight(I)V

    const-string v0, "app_icon_number"

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    .line 184
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "app_icon_dot"

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    .line 186
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "homescreen_noti_preview"

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    .line 188
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 189
    iput-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mReusableBadgePreviews:[Landroid/graphics/Bitmap;

    .line 190
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "notification_homescreen_category"

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private setEnabledBadgePrefs(Z)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->isSupportHomescreenNotiPreivew()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateBadgeTypePref(IZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 222
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    if-ne p2, v1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/NotiUtils;->setBadgeAppIconType(Landroid/content/Context;I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    if-ne p2, v1, :cond_2

    .line 230
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/NotiUtils;->setBadgeAppIconType(Landroid/content/Context;I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/NotiUtils;->isEnabledBadgeAppIcon(Landroid/content/Context;)Z

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 199
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->setEnabledBadgePrefs(Z)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/NotiUtils;->getBadgeAppIconType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "home_show_notification_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 206
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->isSupportHomescreenNotiPreivew()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8ccd

    return p0
.end method

.method public isSupportHomescreenNotiPreivew()Z
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const-string v3, "knox_folder_noti_preview"

    const/16 v4, 0x80

    if-eqz v0, :cond_1

    .line 244
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 246
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    .line 247
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 254
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.containeragent"

    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 259
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    .line 260
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_3

    goto :goto_0

    :catch_1
    move-exception p0

    .line 265
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 161
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 162
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->initUI()V

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->initUI()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 154
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 285
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 286
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "homescreen_noti_preview"

    .line 287
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "home_show_notification_enabled"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x8e39

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_1
    const-string v1, "app_icon_number"

    .line 294
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x8e38

    const v4, 0x8ccd

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    return v5

    .line 298
    :cond_2
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    const-string p0, "numberOn"

    .line 301
    invoke-static {v4, v3, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return v2

    :cond_3
    const-string v1, "app_icon_dot"

    .line 305
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 306
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    if-nez v0, :cond_4

    return v5

    .line 310
    :cond_4
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    const-string p0, "dotON"

    .line 312
    invoke-static {v4, v3, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_5
    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateUI()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 274
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 275
    iget-object p2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/notification/NotiUtils;->setEnableBadgeAppIcon(Landroid/content/Context;Z)V

    .line 276
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->setEnabledBadgePrefs(Z)V

    if-nez p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x8e38

    const-string p2, "off"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_0
    return-void
.end method
