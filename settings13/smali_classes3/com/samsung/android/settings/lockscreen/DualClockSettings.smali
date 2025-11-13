.class public Lcom/samsung/android/settings/lockscreen/DualClockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DualClockSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field isFromUnlock:Z

.field private mAdvancedCategory:Landroidx/preference/PreferenceCategory;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mHomeCityTimeZone:Landroidx/preference/SecPreference;

.field private mIsLockScreenDisabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mWhereToShow:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$9S3t5qh4P3a7UxTpgaEusRbuJss(Lcom/samsung/android/settings/lockscreen/DualClockSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->lambda$initWhereToShowPreference$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateCheckedUI(Lcom/samsung/android/settings/lockscreen/DualClockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->updateCheckedUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/samsung/android/settings/lockscreen/DualClockSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/DualClockSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/DualClockSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initWhereToShowPreference()V
    .locals 3

    const-string v0, "advanced_category"

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mAdvancedCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "where_to_show"

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mWhereToShow:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mAdvancedCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    .line 192
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mIsLockScreenDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_clock_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mWhereToShow:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mWhereToShow:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/DualClockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/DualClockSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 193
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mAdvancedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 194
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mWhereToShow:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static isFixedOffset(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Etc/GMT"

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Etc/UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$initWhereToShowPreference$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 201
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "roaming_clock_option"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 p0, 0x1137

    const/16 p2, 0x116e

    .line 204
    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    const/4 p0, 0x1

    return p0
.end method

.method private setEnabledWhereToShow(Z)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mWhereToShow:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "aod_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 281
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mWhereToShow:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 283
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mWhereToShow:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateCheckedUI()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dualclock_menu_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mHomeCityTimeZone:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mHomeCityTimeZone:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 152
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->setEnabledWhereToShow(Z)V

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dual clock is : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DualClockSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatepreference()V
    .locals 8

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homecity_timezone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DualClockSettings"

    if-eqz v0, :cond_0

    .line 159
    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gsm.sim.state"

    .line 161
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gsm.sim.state_1"

    .line 162
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSalesCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "simState1 : "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "simState2 : "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "READY"

    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GMT"

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hometz is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "homecity_from_user"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatepreference tzHomeId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 181
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mHomeCityTimeZone:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->getSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mHomeCityTimeZone:Landroidx/preference/SecPreference;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$integer;->dual_clock:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 298
    new-instance v2, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    .line 299
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p0, ""

    return-object p0

    .line 304
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v0

    .line 305
    sget-boolean v2, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_SHANGHAI_TO_BEIJING_BY_CHINA:Z

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->city_shanghai:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->city_beijing:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_2
    sget-boolean v2, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_JERUSALEM_TO_TELAVIV_BY_TURKEY:Z

    if-eqz v2, :cond_3

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->jerusalem:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->tel_aviv:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->zone_info_exemplar_location_and_offset:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    .line 315
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v3, v0

    .line 313
    invoke-static {p0, v2, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 126
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 127
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 130
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportSubLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mIsLockScreenDisabled:Z

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->isFromUnlock:Z

    const-string v1, "direct_lockscren"

    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->isFromUnlock:Z

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->sec_dualclock_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "dualclock_description"

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    .line 114
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->initWhereToShowPreference()V

    const-string p1, "homecity_timezone"

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mHomeCityTimeZone:Landroidx/preference/SecPreference;

    const-string p0, "DualClockSettings"

    const-string p1, "onCreate"

    .line 119
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 212
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "DualClockSettings"

    const-string v1, "onPause"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->unregisterContentObserver()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 242
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualClockSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "homecity_timezone"

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string p1, "ishomecity"

    const/4 v0, 0x1

    .line 247
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->isFromUnlock:Z

    if-eqz p1, :cond_0

    const-string p1, "direct_lockscren"

    .line 250
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    :cond_0
    const-class p1, Lcom/android/settings/datetime/timezone/TimeZoneSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget v6, Lcom/android/settings/R$string;->sec_set_home_city:I

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return v0

    .line 257
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "DualClockSettings"

    const-string v1, "onResume"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->registerContentObserver()V

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->updateCheckedUI()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->updatepreference()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckChanged desiredState"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DualClockSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dualclock_menu_settings"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mHomeCityTimeZone:Landroidx/preference/SecPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 231
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->setEnabledWhereToShow(Z)V

    const/16 p1, 0x1137

    const/16 v0, 0x1138

    .line 232
    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 234
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mIsLockScreenDisabled:Z

    if-eqz p1, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "roaming_clock_option"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public registerContentObserver()V
    .locals 3

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 1

    .line 265
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 267
    invoke-virtual {p0, p4}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 268
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 269
    invoke-virtual {p0, p5}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 270
    instance-of p2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p2, :cond_0

    .line 271
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 270
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterContentObserver()V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
